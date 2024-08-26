extends Node2D
var square1 = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func info(color,original_position, speed, square):
	$RigidBody2D/Circle.material.set_shader_parameter("value", color)
	$"RigidBody2D/Sprite-0002".material.set_shader_parameter("value", color)
	$RigidBody2D.original_position = original_position
	$RigidBody2D.speed = speed
	if square:
		$RigidBody2D.lock_rotation = true
		$"RigidBody2D/Sprite-0002".visible = true
		square1 = true
func collisions():
	if $RigidBody2D/CollisionShape2D.disabled == false:
		$RigidBody2D/CollisionShape2D.set_deferred("disabled", true)
		print("collision disabled")
	else:
		$RigidBody2D/CollisionShape2D.set_deferred("disabled", false)
