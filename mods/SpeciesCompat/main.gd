extends Node

const ID = "SpeciesCompat"
onready var Lure = get_node("/root/SulayreLure")

func _ready():
	#print("RAYTRAC3R Cosmetics should be working!") #test to see if the gd even works?
	
	#set up possum head
	Lure.assign_pattern_texture(ID, "ClownMod.pattern_clown", "Awesome Possum.species_possum", "res://mods/SpeciesCompat/Assets/Patterns/possum/clown.png")
