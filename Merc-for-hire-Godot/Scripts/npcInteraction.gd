extends Area3D

@onready var characterName = $"../CharacterName"

var faction = []
var player
var playerLabel

signal npcInteraction(npcName, npcFaction)

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

func giveAttributes(myFaction, myWealth):
	faction.append(myFaction)
	faction.append(myWealth)
