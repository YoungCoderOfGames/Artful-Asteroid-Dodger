extends AnimatedSprite

onready var p=get_parent().get_node("AnimatedSprite")

func _ready():
	pass

var win = false


func _process(delta):
	translate(Vector2(3, 0))
	if Input.is_action_pressed("go_up"):
		translate(Vector2(0, -5))
	if Input.is_action_pressed("go_down"):
		translate(Vector2(0, 5))
	if position.distance_to(p.position)<=50:
		translate(Vector2(-3, 0))
		print('You Win')
				
