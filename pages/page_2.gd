extends Control

@onready var panel_queue = [
	$Panels/P1,
	$Panels/T1,
	$Panels/T2,
	$Panels/P2,
	$Panels/P3,
	$Panels/C1,
	"half",
	$Panels/P4,
	$Panels/P5,
	$Panels/T4,
	$Panels/P6,
	$Panels/T5,
	$Panels/P8,
	$Panels/T6,
	$Panels/T7,
	$Panels/PennyPortraitFrame,
]
var panel_index : int = 0
var page_finished : bool = false
var paused : bool = false

signal half_finished


func _ready() -> void:
	for panel in panel_queue:
		if !(panel is String):
			panel.modulate = Color(1, 1, 1, 0)


func next_panel():
	if panel_queue[panel_index] is String:
		print("Panning camera...")
		if panel_queue[panel_index] == "half":
			half_finished.emit()
			panel_index += 1
	else:
		print("Showing panel: %s" % panel_queue[panel_index].name)
		var panel_tween = create_tween()
		panel_tween.tween_property(panel_queue[panel_index], "modulate", Color(1,1,1,1), 0.5)
		panel_tween.tween_callback(_on_tween_finished)
		panel_tween.play()


func _on_tween_finished():
	panel_index += 1
	if panel_index >= panel_queue.size():
		page_finished = true
