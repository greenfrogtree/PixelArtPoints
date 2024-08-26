extends RigidBody2D
var direction = Vector2(0,0)
var speed = 50
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	direction = get_global_mouse_position()-global_position
	linear_velocity = (direction*speed)
