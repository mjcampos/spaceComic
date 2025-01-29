extends Control


# Hide the Quit button if this is a Web build
func _ready():
	$Header/BtnQuit.visible = !(OS.get_name() == "Web")


func _on_btn_new_pressed():
	get_tree().change_scene_to_file("res://main/main_game.tscn")


func _on_btn_credits_pressed() -> void:
	pass # Replace with function body.


func _on_btn_quit_pressed():
	get_tree().quit()
