extends Node3D

@onready var allNpcs = get_tree().get_nodes_in_group("npcInteractable")

var oldVal

func _ready():
	pass

func doshit(npcName, npcFactionStatus):
	print(npcName, npcFactionStatus)
	npcName.SayShit()

func _process(delta):
	allNpcs = get_tree().get_nodes_in_group("npcInteractable")
	if oldVal != allNpcs:
		oldVal = allNpcs
		for npcs in allNpcs:
			npcs.connect("npcInteraction", doshit)
	pass
