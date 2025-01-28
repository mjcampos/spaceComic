extends Control

@onready var panel_queue = [
	$Panels/GoodBunker1,
	$Panels/GoodBunker2,
	$Panels/GoodBunker3,
	"half",
	$Panels/GoodBunker4,
	$Panels/GoodBunker5,
	$Panels/GoodBunker6,
	$Panels/Background2,
	"back",
	$Panels/GoodBunker7,
	$Panels/GoodBunker8,
	"half",
	$Panels/GoodBunker9,
	$Panels/GoodBunker10,
	$Panels/GoodBunker11,
	$Panels/Background3,
	"back",
	$Panels/GoodBunker13,
	$Panels/GoodBunker12,
	$Panels/GoodBunker14,
	"half",
	$Panels/GoodBunker15,
	$Panels/GoodBunker15Text1,
	$Panels/GoodBunker15Text2,
	$Panels/Background4,
	"back",
	$Panels/GoodBunker16,
	"half",
	$Panels/GoodBunker17,
]
var panel_index : int = 0
var page_finished : bool = false
var panel_tween : Tween
var paused : bool = false

signal cam_pan_triggered
