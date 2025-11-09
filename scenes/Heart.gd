extends Control

var heart_size: int = 80

func  _ready() -> void:
	SignalBus.life.connect(change) 

func change() -> void:
	$Hearts.size.x -= 1 * 16
