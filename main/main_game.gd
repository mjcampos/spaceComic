extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func pan_camera(dir):
	match dir:
		"left":
			var cam_tween = create_tween()
			cam_tween.tween_property($Camera, "position", Vector2(960,0), 1.0)
			cam_tween.play()
		"right":
			var cam_tween = create_tween()
			cam_tween.tween_property($Camera, "position", Vector2(0,0), 1.0)
			cam_tween.play()


func _on_btn_enter_pressed():
	$Comic/Anim.play("page_1")


func _on_btn_repeat_pressed():
	pass # Replace with function body.


func _on_btn_undo_pressed():
	pass # Replace with function body.


func _on_btn_next_pressed():
	pass # Replace with function body.
