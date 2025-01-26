extends Control


var word_list : Array[String] = [
	"Word choice 1",
	"Word choice 2",
	"Word choice 3"
]
var tone_list : Array[String] = [
	"neutral",
	"angry",
	"sad"
]
var is_current : bool = false
var word_index : int = 0
var tone_index : int = 0


func set_current(val : bool):
	is_current = val
	$GridContainer/BtnUp.visible = is_current
	$GridContainer/BtnLeft.visible = is_current
	$GridContainer/BtnRight.visible = is_current
	$GridContainer/BtnDown.visible = is_current


func _process(delta):
	if is_current:
		if Input.is_action_just_pressed("decision_up"):
			_on_btn_up_pressed()
		if Input.is_action_just_pressed("decision_down"):
			_on_btn_down_pressed()
		if Input.is_action_just_pressed("decision_left"):
			_on_btn_left_pressed()
		if Input.is_action_just_pressed("decision_right"):
			_on_btn_right_pressed()


func _on_btn_up_pressed():
	tone_index += 1


func _on_btn_down_pressed():
	tone_index -= 1


func _on_btn_left_pressed():
	word_index -= 1


func _on_btn_right_pressed():
	word_index += 1
