extends Control

@onready var panel_queue = [
	$MilitaryInstructor1,
	$MilitaryInstructor2,
	$MilitaryInstructor3,
	$MilitaryInstructor3Text1,
	"half",
	$MilitaryInstructor4,
	$MilitaryInstructor4Text1,
	$MilitaryInstructor5,
	$Decision,
]
@onready var paths = [
	[
		$MilitaryInstructorB6,
		$MilitaryInstructorB7,
		$MilitaryInstructorB8,
	],
	[
		$MilitaryInstructorG6,
		$MilitaryInstructorG7,
		$MilitaryInstructorG8,
	],
	[
		$MilitaryInstructorN6,
	],
]
var panel_index : int = 0
var path_choice : int = 0
var path_index : int = 0
var page_finished : bool = false
var paused : bool = false

signal cam_pan_triggered


func _ready() -> void:
	for panel in panel_queue:
		if !(panel is String):
			panel.modulate = Color(1, 1, 1, 0)
		if panel is Control:
			panel.decision_confirmed.connect(_on_decision_confirmed)
	for path in paths:
		for panel in path:
			panel.modulate = Color(1, 1, 1, 0)


func next_panel():
	if panel_index < panel_queue.size():
		if panel_queue[panel_index] is String:
			print("Panning camera...")
			cam_pan_triggered.emit(panel_queue[panel_index])
			panel_index += 1
		else:
			paused = true
			print("Showing panel: %s" % panel_queue[panel_index].name)
			var panel_tween = create_tween()
			panel_tween.tween_property(panel_queue[panel_index], "modulate", Color(1,1,1,1), 0.5)
			panel_tween.tween_callback(_on_tween_finished)
			panel_tween.play()
	else:
		paused = true
		var this_panel = paths[$Decision.word_index][path_index]
		print("Showing panel: %s" % this_panel.name)
		var panel_tween = create_tween()
		panel_tween.tween_property(this_panel, "modulate", Color(1,1,1,1), 0.5)
		panel_tween.tween_callback(_on_tween_finished)
		panel_tween.play()


func _on_tween_finished():
	paused = false
	if panel_index < panel_queue.size():
		if panel_queue[panel_index] is Control:
			panel_queue[panel_index].is_current = true
			paused = true
		panel_index += 1
	else:
		path_index += 1
	if panel_index >= panel_queue.size() and path_index >= paths[$Decision.word_index].size():
		path_choice = $Decision.word_index
		page_finished = true


func _on_decision_confirmed():
	paused = false

