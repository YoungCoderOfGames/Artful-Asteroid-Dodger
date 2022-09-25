extends Sprite

onready var p=get_parent().get_node("Rocket")

func _ready():
	pass


func _process(delta):
	if position.distance_to(p.position)<=50:
		print("You Win")
