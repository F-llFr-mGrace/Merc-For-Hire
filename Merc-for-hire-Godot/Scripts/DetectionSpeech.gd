extends Area3D

@onready var game_world = $"."
@onready var rep_v_1 = $".."

@export var whatIsMyFaction = 0
@export var whatIsMyStatus = 0

var factionStatus = []
var faction = []

signal npcInteraction(npcName, npcFactionStatus)

func _ready():
	faction.append(whatIsMyFaction)
	faction.append(whatIsMyStatus)
	factionStatus.append_array(faction)

func _on_body_entered(body):
	npcInteraction.emit(self, factionStatus)

func _on_body_exited(body):
	pass

func SayShit(myResponse):
	print(myResponse)

