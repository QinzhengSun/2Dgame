extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
signal touch
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Coin_body_entered(body):
	if body.name=="Player":
		get_node("/root/Attribution").setCoins(1)
		emit_signal("touch")
		queue_free()
	pass # Replace with function body.
