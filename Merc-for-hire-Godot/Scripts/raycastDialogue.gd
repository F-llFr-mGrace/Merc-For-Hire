extends RayCast3D

@onready var interactables = $"../../../Interactables"


func _ready():
	add_exception(owner)

func _physics_process(delta):
	if is_colliding():
		var target = get_collider()
		target._on_body_entered(self, interactables)
	if is_colliding() == false:
		interactables.defaultText()
