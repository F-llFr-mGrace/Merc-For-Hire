extends Area3D

var myFaction = 0
var myWealth = 0

@onready var characterName = $"../CharacterName"

var faction = []
var player
var playerLabel

signal npcInteraction(npcName, npcFaction)

func _ready():
	faction.append(myFaction)
	faction.append(myWealth)

func viewed(viewer, incomingLabel):
	playerLabel = incomingLabel
	player = viewer.owner
	npcInteraction.emit(self, faction)
	characterName.visible = true

func SayShit(myResponse):
	playerLabel.updateText(myResponse)
	pass

func makeNameInvis():
	characterName.visible = false

