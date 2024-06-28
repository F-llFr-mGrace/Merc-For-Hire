extends RayCast3D

@onready var interactables = $"../../../Interactables"

var target
var oldTarget

func _ready():
	add_exception(owner)

func _physics_process(delta):
	if is_colliding():
		target = get_collider()
		if oldTarget != null and oldTarget != target:
			oldTarget.makeNameInvis()
		target.viewed(self, interactables)
		oldTarget = target
		
	if is_colliding() == false:
		interactables.clearText()
		if target != null:
			target.makeNameInvis()
