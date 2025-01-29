extends Control

@onready var panel_queue = [
	$Panels/T1,
	$Panels/P1,
	$Panels/T2,
	$Panels/P2,
	$Panels/P3,
	$Panels/C1,
	"half",
	$Panels/P4,
	$Panels/P5,
	$Panels/T4,
	$Panels/P6,
	$Panels/T5,
	$Panels/P8,
	$Panels/T6,
	$Panels/T7,
	$Panels/PennyPortraitFrame,
]
var panel_index : int = 0
var page_finished : bool = false
var paused : bool = false

signal cam_pan_triggered

@onready var audio_queue = [
	"null",
	AudioManager.hard_sfx_bed_cloth_rustle_2,
	"null",
	"null",
	"null",
	AudioManager.vo_penelope_opening_idiot,
	"half",
	"null",
	"null",
	AudioManager.vo_trista_gasp_penny_1,
	"null",
	AudioManager.vo_penelope_sigh_3,
	"null",
	AudioManager.vo_trista_efforts_umm_1,
	AudioManager.vo_trista_efforts_umm_2,
	"null",
]

var audio_finished : bool = false


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
		paused = true
		print("Showing panel: %s" % panel_queue[panel_index].name)
		var panel_tween = create_tween()
		panel_tween.tween_property(panel_queue[panel_index], "modulate", Color(1,1,1,1), 0.5)
		panel_tween.tween_callback(_on_tween_finished)
		panel_tween.play()


func _on_tween_finished():
	paused = false
	panel_index += 1
	if panel_index >= panel_queue.size():
		page_finished = true
