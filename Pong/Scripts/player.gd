extends CharacterBody2D
@export var speed=10000

func _ready():
	self.name="Player"
	set_process_input(true)

func _process(delta):
	velocity=Vector2.ZERO
	#todo:add pause action
	if (Input.is_action_pressed("move_down")):
		velocity.y=speed*delta
	if (Input.is_action_pressed("move_up")):
		velocity.y=-speed*delta
	move_and_slide()


func _on_area_2d_body_entered(body):
	if(body.name=="Background"):
		print("Player hit collsionshape of gameboard")
