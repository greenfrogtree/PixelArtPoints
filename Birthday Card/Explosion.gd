extends Node2D
var timer = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	timer += delta
	$StaticBody2D/CollisionShape2D.scale += Vector2(1,1)
	if timer >= 0.5:
		queue_free()
