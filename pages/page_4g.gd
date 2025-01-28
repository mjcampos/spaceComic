extends Control

@onready var panel_queue = [
	$Panels/GoodCafeteria1,
	$Panels/GoodCafeteria1Text1,
	$Panels/GoodCafeteria2,
	$Panels/GoodCafeteria3,
	$Panels/GoodCafeteria4,
	$Panels/GoodCafeteria4Db,
	$Panels/GoodCafeteria4Text1,
	$Panels/GoodCafeteriaB5,
	$Panels/GoodCafeteria5Text1,
	$Panels/GoodCafeteria6,
	$Panels/GoodCafeteria6Text1,
	$Panels/GoodCafeteria6Text2,
	$Panels/GoodCafeteria8,
	$Panels/GoodCafeteria7,
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
