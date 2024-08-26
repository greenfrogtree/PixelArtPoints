extends Camera2D
var previous_mouse= null

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	if Input.is_action_just_released("scrolldown"):
		zoom -= Vector2(0.1,0.1)
	if Input.is_action_just_released("scrollup"):
		zoom += Vector2(0.1,0.1)
	if Input.is_action_pressed("movescreen"):
		if previous_mouse!= null:
			global_position-=get_viewport().get_mouse_position()-previous_mouse
		previous_mouse = get_viewport().get_mouse_position()
	if Input.is_action_just_released("movescreen"):
		previous_mouse = null
