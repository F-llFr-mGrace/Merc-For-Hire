extends Node3D

@onready var dialogueDetection = $DialogueDetection
@onready var meshInstance = $MeshInstance3D
@onready var navAgent = $NavigationAgent3D

var speed = 1

func _physics_process(delta):
	var dirMove = Vector3()
	
	
	

func ownerGiveAttributes(giveFaction, giveWealth):
	dialogueDetection.giveAttributes(giveFaction, giveWealth)
	if giveFaction == 0:
		var material = meshInstance.get_active_material(0)
		material.albedo_color = Color.AQUA
		meshInstance.set_surface_override_material(0, material)

func _ready():
	pass
