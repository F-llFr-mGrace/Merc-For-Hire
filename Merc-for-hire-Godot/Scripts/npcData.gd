extends Area3D

@export var whatIsMyFaction = 0
@export var whatIsMyStatus = 0

@onready var characterName = $"../CharacterName"

var faction = []
var player
var playerLabel

signal npcInteraction(npcName, npcFaction)

func _ready():
	faction.append(whatIsMyFaction)
	faction.append(whatIsMyStatus)

func viewed(viewer, incomingLabel):
	playerLabel = incomingLabel
	player = viewer.owner
	npcInteraction.emit(self, faction)
	characterName.visible = true

func _on_body_exited(body):
	pass

func SayShit(myResponse):
	playerLabel.updateText(myResponse)
	pass

func makeNameInvis():
	characterName.visible = false

