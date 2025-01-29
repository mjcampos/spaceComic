extends Control

@onready var page_elements : Array = []
var panel_index : Vector2 = Vector2.ZERO
var page_finished : bool = false
var paused : bool = false

signal cam_pan_triggered
signal page_ended


func _ready() -> void:
	for path in page_elements:
        for panel in path:
            if !(panel is String):
                panel.modulate = Color(1, 1, 1, 0)
            if panel is Control:
                panel.decision_confirmed.connect(_on_decision_confirmed)


func next_panel():
    var this_element = page_elements[panel_index.x][panel_index.y]
	if this_element is String:
        match this_element:
            "half", "back":
                print("Panning camera...")
                cam_pan_triggered.emit(this_element)
                panel_index.y += 1
            "end":
                page_finished = true
                page_ended.emit()
	else:
		paused = true
		print("Showing panel: %s" % this_element.name)
		var panel_tween = create_tween()
		panel_tween.tween_property(this_element, "modulate", Color(1,1,1,1), 0.5)
		panel_tween.tween_callback(_on_tween_finished)
		panel_tween.play()


func _on_tween_finished():
	paused = false
	panel_index.y += 1


func _on_decision_confirmed():
	paused = false
    panel_index.x = $Decision.word_index + 1
    panel_index.y = 0

