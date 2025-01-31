extends Control

# Key: [page_index]:[good, neutral, bad]
const STORY_PATHS = {
	2:[3, 4, 5],
	3:[6, 7, 8],
	4:[6, 7, 8],
	5:[8],
}
const POINT_VALS = {
	2:[1, 0, -1],
	3:[1, 0, -1],
	4:[1, 0, -1],
	8:[3, 0, -3],
}

@onready var page_list = $Pages.get_children()

var page_index : int = 2
var ending_points : int = 0
var p3_choice : int = 0
var p4_choice : int = 0


func _ready() -> void:
	var page_data = GameData.get_page_data()
	for i in page_list.size():
		var this_page = page_list[i]
		this_page.page_elements = page_data[i]
		this_page.init_page()
		this_page.hide()
		this_page.cam_pan_triggered.connect(pan_camera)
		this_page.page_ended.connect(next_page)
	page_list[page_index].show()


func pan_camera(type):
	match type:
		"half":
			var cam_tween = create_tween()
			cam_tween.tween_property($Camera, "position", Vector2(960,0), 1.0)
			cam_tween.play()
		"back":
			$Camera.position = Vector2.ZERO


func next_page():
	if page_index < page_list.size()-1 and !page_list[page_index].paused:
		print("Moving to next page...")
		page_list[page_index].hide()
		if page_index in POINT_VALS.keys():
			var choice = page_list[page_index].choice
			ending_points += POINT_VALS[page_index][choice]
		if page_index in STORY_PATHS.keys():
			var choice = page_list[page_index].choice
			var next = STORY_PATHS[page_index][choice]
			page_index = next
		else:
			page_index += 1
		# Set ending based on ending_points
		if page_index == page_list.size()-1:
			if ending_points >= 2:
				page_list[page_index].panel_index.x = 0
			elif ending_points <= -2:
				page_list[page_index].panel_index.x = 2
			else:
				page_list[page_index].panel_index.x = 1
		$Camera.position = Vector2.ZERO
		page_list[page_index].show()


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


func _on_btn_resume_pressed() -> void:
	pass # Replace with function body.


func _on_btn_quit_pressed() -> void:
	pass # Replace with function body.
