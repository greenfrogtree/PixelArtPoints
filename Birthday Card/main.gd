extends Node2D
@onready var camera = get_viewport().get_camera_2d()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	if Input.is_action_just_released("scrollup"):
		camera.zoom += Vector2(0.1,0.1)
	if Input.is_action_just_released("scrolldown"):
		camera.zoom -= Vector2(0.1,0.1)
