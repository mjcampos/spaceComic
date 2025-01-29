extends Control

const KEYWORDS = ["half", "back", "end"]

var page_elements : Array = []
var panel_index : Vector2 = Vector2.ZERO
var paused : bool = false

signal cam_pan_triggered
signal page_ended


func init_page():
	for path in page_elements:
		for element in path:
			if !(element in KEYWORDS):
				var this_element = get_node(element)
				this_element.modulate = Color(1, 1, 1, 0)
				if this_element is Control:
					this_element.decision_confirmed.connect(_on_decision_confirmed)


func next_panel():
	if !paused:
		var this_element = page_elements[panel_index.x][panel_index.y]
		if this_element in KEYWORDS:
			match this_element:
				"half", "back":
					print("Panning camera...")
					cam_pan_triggered.emit(this_element)
					panel_index.y += 1
				"end":
					page_ended.emit()
		else:
			paused = true
			var this_node = get_node(this_element)
			print("Showing panel: %s" % this_node.name)
			var panel_tween = create_tween()
			panel_tween.tween_property(this_node, "modulate", Color(1,1,1,1), 0.5)
			panel_tween.tween_callback(_on_tween_finished)
			panel_tween.play()


func _on_tween_finished():
	paused = false
	panel_index.y += 1


func _on_decision_confirmed(index):
	paused = false
	panel_index.x = index + 1
	panel_index.y = 0
