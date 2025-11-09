extends CanvasLayer

@onready var animTransition = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SignalBus.transition = false
	animTransition.play("fade_in")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if SignalBus.transition:
		animTransition.play("fade_out")
