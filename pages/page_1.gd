extends Control

@onready var panel_queue = [
	$Panels/P1,
	$Panels/Label,
	$Panels/P2,
	$Panels/Label2,
	$Panels/P3,
	$Panels/Label3,
	"half",
	$Panels/P4,
	$Panels/Label4,
	$Panels/P5,
	$Panels/Label5,
	$Panels/P6,
	$Panels/Label6,
]
var panel_index : int = 0
var page_finished : bool = false
var panel_tween : Tween

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
		panel_tween = create_tween()
		panel_tween.tween_property(panel_queue[panel_index], "modulate", Color(1,1,1,1), 0.5)
		panel_tween.tween_callback(_on_tween_finished)
		panel_tween.play()


func _on_tween_finished():
	panel_index += 1
	if panel_index >= panel_queue.size():
		page_finished = true
