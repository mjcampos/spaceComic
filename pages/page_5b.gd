extends Control

@onready var panel_queue = [
	$Panels/BadBunker1,
	$Panels/BadBunker2,
	$Panels/BadBunker3,
	$Panels/BadBunker3Text1,
	"half",
	$Panels/BadBunker4,
	$Panels/BadBunker4Text1,
	$Panels/BadBunker4Text2,
	$Panels/BadBunker5,
	$Panels/BadBunker5Text1,
	$Panels/BadBunker6,
	$Panels/BadBunker6Text1,
	$Panels/BadBunker7,
	$Panels/Background2,
	"back",
	
]
var panel_index : int = 0
var page_finished : bool = false
var panel_tween : Tween
var paused : bool = false

signal cam_pan_triggered
