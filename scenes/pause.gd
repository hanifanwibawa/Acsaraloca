extends Button

var pause = false

func _ready() -> void:
	grab_focus()

func _on_pressed() -> void:
	if(pause == true):
		$"../../CanvasLayer2".hide()
		pause = false
	else:
		$"../../CanvasLayer2".show()
		pause = true
