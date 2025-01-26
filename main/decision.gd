extends Control


@export var word_list : Array[String] = [
	"Word choice 1",
	"Word choice 2",
	"Word choice 3"
]
@export var tone_list : Array[Texture]
var is_current : bool = false : set = set_current
var word_index : int = 0 : set = set_word
var tone_index : int = 0 : set = set_tone


func set_current(val : bool):
	is_current = val
	$GridContainer/BtnUp.visible = is_current
	$GridContainer/BtnLeft.visible = is_current
	$GridContainer/BtnRight.visible = is_current
	$GridContainer/BtnDown.visible = is_current


func set_word(val : int):
	word_index = wrapi(val, 0, word_list.size())
	$GridContainer/TextBubble/Text.text = word_list[word_index]


func set_tone(val : int):
	tone_index = wrapi(val, 0, tone_list.size())
	$GridContainer/TextBubble/Bubble.texture = tone_list[tone_index]


func _ready() -> void:
	is_current = false
	word_index = 0
	tone_index = 0


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
	AudioManager.sfx_uitone_boop_left.play()


func _on_btn_right_pressed():
	word_index += 1
	AudioManager.sfx_uitone_boop_right.play()
