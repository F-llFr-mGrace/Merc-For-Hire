extends RayCast3D

@onready var interactables = $"../../../Interactables"

var target

func _ready():
	add_exception(owner)
	pass

func _physics_process(delta):
	if is_colliding():
		target = get_collider()
		target._on_body_entered(self, interactables)
	if is_colliding() == false:
		interactables.clearText()
		if target != null:
			target.makeInvis()
