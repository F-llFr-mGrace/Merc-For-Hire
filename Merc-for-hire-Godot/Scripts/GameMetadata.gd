extends Node3D


@onready var poi = $POI
@onready var allNpcs = get_tree().get_nodes_in_group("npcInteractable")

var oldVal = []
var npcSpawns = []

func _ready():
	pass

func doshit(npcName, npcFactionStatus):
	var myResponse
	if npcFactionStatus[0] == 0:
		myResponse = "I am a civilian"
	
	if npcFactionStatus[0] == 1:
		myResponse = "I am a techCriminal"
	npcName.SayShit(myResponse)

func _process(_delta):
	allNpcs = get_tree().get_nodes_in_group("npcInteractable")
	if oldVal != allNpcs:
		for npcs in oldVal:
			npcs.disconnect("npcInteraction", doshit)
		oldVal = allNpcs
		for npcs in allNpcs:
			npcs.connect("npcInteraction", doshit)
	pass
