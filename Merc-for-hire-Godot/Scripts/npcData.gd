extends CharacterBody3D

@onready var dialogueDetection = $DialogueDetection
@onready var meshInstance = $MeshInstance3D
@onready var navAgent = $NavigationAgent3D

var speed = 1

func _physics_process(delta):
	var dirMove = Vector3()
	
	navAgent.target_position = self.position + Vector3(10,0,10)
	dirMove = navAgent.get_next_path_position() - global_position
	dirMove = dirMove.normalized()
	velocity = velocity.lerp(dirMove * 2, 5 * delta)
	move_and_slide()
	

func ownerGiveAttributes(giveFaction, giveWealth):
	dialogueDetection.giveAttributes(giveFaction, giveWealth)
	if giveFaction == 0:
		var material = meshInstance.get_active_material(0)
		material.albedo_color = Color.AQUA
		meshInstance.set_surface_override_material(0, material)

func _ready():
	pass
