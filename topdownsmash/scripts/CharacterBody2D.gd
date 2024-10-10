extends CharacterBody2D


@export var healthpercent: int = 0
@export var movement_speed: int = 400


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func move():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * movement_speed
	move_and_slide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	move()
	look_at(get_viewport().get_mouse_position())
