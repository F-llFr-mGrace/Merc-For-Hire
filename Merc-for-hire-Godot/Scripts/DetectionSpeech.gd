extends Area3D

@export var whatIsMyFaction = 0
@export var whatIsMyStatus = 0

var faction = []

signal npcInteraction(npcName, npcFaction)

func _ready():
	faction.append(whatIsMyFaction)
	faction.append(whatIsMyStatus)

func _on_body_entered(body):
	npcInteraction.emit(self, faction)

func _on_body_exited(body):
	pass

func SayShit(myResponse):
	print(myResponse)

