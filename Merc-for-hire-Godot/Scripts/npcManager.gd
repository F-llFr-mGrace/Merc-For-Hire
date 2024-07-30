extends Node3D

@onready var civilianSpawnGroup = $CivilianSpawnGroup
@onready var gangSpawnGroup = $GangSpawnGroup
@onready var civSpawns = civilianSpawnGroup.get_children()
@onready var gangSpawns = gangSpawnGroup.get_children()
const npcV1 = preload("res://Scenes/npcv1.tscn")

var npcFaction = 0
var npcWealth = 0

func _ready():
	for spawn in civSpawns:
		var giveFaction = 0
		var giveWealth = 0
		createNewNpcAt(spawn, giveFaction, giveWealth)

	for spawn in gangSpawns:
		var giveFaction = 1
		var giveWealth = 0
		createNewNpcAt(spawn, giveFaction, giveWealth)

func createNewNpcAt(spawn, giveFaction, giveWealth):
	var npc = npcV1.instantiate()
	spawn.add_child(npc)
	npc.ownerGiveAttributes(giveFaction, giveWealth)
