extends Control


@onready var page_list = $Pages.get_children()

var page_index : int = 2


func _ready() -> void:
	for page in page_list:
		page.modulate = Color(1, 1, 1, 0)
		page.half_finished.connect(pan_camera)
	page_list[page_index].modulate = Color(1,1,1,1)


func pan_camera():
	var cam_tween = create_tween()
	cam_tween.tween_property($Camera, "position", Vector2(960,0), 1.0)
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


func _on_btn_enter_pressed():
	pass


func _on_btn_repeat_pressed():
	pass # Replace with function body.


func _on_btn_undo_pressed():
	pass # Replace with function body.


func _on_btn_next_pressed():
	if !page_list[page_index].page_finished:
		page_list[page_index].next_panel()
	else:
		next_page()
