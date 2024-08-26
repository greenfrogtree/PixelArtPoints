extends RigidBody2D
var original_position
var speed = 2
@export var manual = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	if manual:
		original_position  = global_position

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	if speed !=0:
		var direction = original_position-global_position
		linear_velocity = (direction*speed)
