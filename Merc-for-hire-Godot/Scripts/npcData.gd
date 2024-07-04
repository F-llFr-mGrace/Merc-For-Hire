extends Node3D

@onready var dialogueDetection = $DialogueDetection

func giveOwnerAttributes(giveFaction, giveWealth):
	dialogueDetection.giveAttributes(giveFaction, giveWealth)

func _ready():
	pass
