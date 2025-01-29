extends Control

@onready var page_list = $Pages.get_children()

var page_index : int = 0
var p3_choice : int = 0
var p4_choice : int = 0


func _ready() -> void:
	page_list[0].page_elements = GameData.PAGE_1
	page_list[0].init_page()
	page_list[1].page_elements = GameData.PAGE_2
	page_list[1].init_page()
	page_list[2].page_elements = GameData.PAGE_3
	page_list[2].init_page()
	for page in page_list:
		page.modulate = Color(1, 1, 1, 0)
		page.cam_pan_triggered.connect(pan_camera)
		if page.has_signal("page_ended"):
			page.page_ended.connect(next_page)
	page_list[page_index].modulate = Color(1,1,1,1)


func pan_camera(type):
	var cam_tween = create_tween()
	match type:
		"half":
			cam_tween.tween_property($Camera, "position", Vector2(960,0), 1.0)
		"back":
			cam_tween.tween_property($Camera, "position", Vector2.ZERO, 1.0)
	cam_tween.play()


func next_page():
	if page_index < page_list.size()-1 and !page_list[page_index].paused:
		print("Moving to next page...")
		var page_tween = create_tween()
		page_tween.tween_property(page_list[page_index], "modulate", Color(1,1,1,0), 0.5)
		page_tween.tween_property($Camera, "position", Vector2.ZERO, 0.1)
		page_tween.tween_property(page_list[page_index+1], "modulate", Color(1,1,1,1), 0.5)
		page_tween.play()
		page_index += 1


func play_panel_audio(audio):
	if !audio is String:
		audio.play()
	else:
		pass


func _on_btn_enter_pressed():
	pass


func _on_btn_repeat_pressed():
	pass # Replace with function body.


func _on_btn_undo_pressed():
	pass # Replace with function body.


func _on_btn_next_pressed():
	page_list[page_index].next_panel()
	#play_panel_audio(page_list[page_index].audio_queue[page_list[page_index].panel_index])
