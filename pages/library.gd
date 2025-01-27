extends Control

@onready var panel_queue = [
	$Panels/BadLibrary1,
	$Panels/BadLibrary2,
	$Panels/BadLibrary1Text1,
	$Panels/BadLibrary3,
	$Panels/BadLibrary3Text1,
	$Panels/BadLibrary3Text2,
	"half",
	$Panels/BadLibrary4,
	$Panels/BadLibrary5,
	$Panels/BadLibrary6,
	$Panels/BadLibrary7,
	$Panels/BadLibrary7Text1,
	$Panels/BadLibrary7Text2,
]
var panel_index : int = 0
var page_finished : bool = false
var panel_tween : Tween
var paused : bool = false

signal cam_pan_triggered


func _ready() -> void:
	for panel in panel_queue:
		if !(panel is String):
			panel.modulate = Color(1, 1, 1, 0)


func next_panel():
	if panel_queue[panel_index] is String:
		print("Panning camera...")
		cam_pan_triggered.emit(panel_queue[panel_index])
		panel_index += 1
	else:
		print("Showing panel: %s" % panel_queue[panel_index].name)
		panel_tween = create_tween()
		panel_tween.tween_property(panel_queue[panel_index], "modulate", Color(1,1,1,1), 0.5)
		panel_tween.tween_callback(_on_tween_finished)
		panel_tween.play()


func _on_tween_finished():
	panel_index += 1
	if panel_index >= panel_queue.size():
		page_finished = true
