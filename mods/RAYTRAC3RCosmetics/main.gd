extends Node

const ID = "RAYTRAC3RCosmetics"
onready var Lure = get_node("/root/SulayreLure")

var colors = [ "black", "blue", "brown", "green", "grey", "maroon", "mint", "olive", "orange", "pink", "purple", "red", "salmon", "silver", "tan", "teal", "yellow" ] #stone is temporarily removed for being too close to silver and just adding clutter, same with west and olive, midnight and black
var colored_eyes = [ "ring", "minty", "scarab" ]
var colored_accessories = [ "plumage" ]

func assign_eye_colors(): #shamelessly copied and modified from a snippet ZeaTheMays posted on Discord
	for eyename in colored_eyes:
		for color in colors:
			var itemID = "eye_" + color + "_" + eyename
			var path = "res://mods/RAYTRAC3RCosmetics/Resources/Cosmetics/Colored Eyes/eye_" + eyename + "_" + color + ".tres"
			
			#print(ID + " " + itemID + " " + path)
			Lure.add_content(ID,itemID,path,[Lure.LURE_FLAGS.FREE_UNLOCK])
			
func assign_acc_colors(): #shamelessly copied and modified from a snippet ZeaTheMays posted on Discord
	for accname in colored_accessories:
		for color in colors:
			var itemID = "accessory_" + color + accname
			var path = "res://mods/RAYTRAC3RCosmetics/Resources/Cosmetics/Colored Accessories/accessory_" + color + accname + ".tres"
			
			#print(ID + " " + itemID + " " + path)
			Lure.add_content(ID,itemID,path,[Lure.LURE_FLAGS.FREE_UNLOCK])
			
func assign_color_meshes(species):
	for accname in colored_accessories:
		for color in colors:
			var itemID = ID + ".accessory_" + color + accname
			var speciesID = ID + ".species_" + species
			var path = "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_" + accname + "_" + species + ".tres"
			
			Lure.assign_cosmetic_mesh(ID,itemID,speciesID,path)

func _ready():
	#print("RAYTRAC3R Cosmetics should be working!") #test to see if the gd even works?
	
	#set up minty head
	Lure.assign_pattern_texture(ID, "pattern_calico", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/calico/minty.png")
	Lure.assign_pattern_texture(ID, "pattern_collie", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/collie/minty.png")
	Lure.assign_pattern_texture(ID, "pattern_spotted", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/spotty/minty.png")
	Lure.assign_pattern_texture(ID, "pattern_tux", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/tux/minty.png")
	Lure.assign_pattern_texture(ID, ID + ".pattern_heartchest", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/heartchest/minty.png")
	Lure.assign_pattern_texture(ID, "ClownMod.pattern_clown", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/pattern_compatibility/clown/minty.png")
	Lure.assign_pattern_texture(ID, "DarnHyena.YeenFishin.pattern_hyena", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/pattern_compatibility/hyena/minty.png")
	Lure.assign_pattern_texture(ID, "SpookMod.stitch_pattern", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/pattern_compatibility/stitches/minty.png")
	Lure.assign_face_animation(ID, ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Species/minty_face.tres")
	Lure.assign_cosmetic_mesh(ID, "accessory_cig", ID + ".species_minty", "res://Assets/Models/Cosmetics/cig_dog.tres")
	Lure.assign_cosmetic_mesh(ID, ID + ".accessory_scarabmask", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_scarabmask_dog.tres")
	Lure.assign_cosmetic_mesh(ID, ID + ".accessory_babyhair", ID + ".species_minty", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_babyhair.tres")
	
	#set up penguin head
	Lure.assign_pattern_texture(ID, "pattern_calico", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/heartchest/penguin.png")
	Lure.assign_pattern_texture(ID, "pattern_collie", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/heartchest/penguin.png")
	Lure.assign_pattern_texture(ID, "pattern_spotted", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/heartchest/penguin.png")
	Lure.assign_pattern_texture(ID, "pattern_tux", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/heartchest/penguin.png")
	Lure.assign_pattern_texture(ID, ID + ".pattern_heartchest", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/heartchest/penguin.png")
	Lure.assign_face_animation(ID, ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Species/penguin_face.tres")
	Lure.assign_cosmetic_mesh(ID, "accessory_cig", ID + ".species_penguin", "res://Assets/Models/Cosmetics/cig_dog.tres")
	Lure.assign_cosmetic_mesh(ID, "accessory_antlers", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_antlers_penguin.tres")
	Lure.assign_cosmetic_mesh(ID, "Codsmetics.accessory_dark_antlers", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_antlers_penguin.tres")
	Lure.assign_cosmetic_mesh(ID, "accessory_bandaid", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_bandaid_penguin.tres")
	Lure.assign_cosmetic_mesh(ID, ID + ".accessory_scarabmask", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_scarabmask_penguin.tres")
	Lure.assign_cosmetic_mesh(ID, ID + ".accessory_babyhair", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_babyhair.tres")
	assign_color_meshes("penguin")
	Lure.assign_cosmetic_mesh(ID, "accessory_glasses_round", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_glassesround_penguin.tres")
	Lure.assign_cosmetic_mesh(ID, "accessory_eyepatch", ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_eyepatch_penguin.tres")
	Lure.assign_species_voice(ID, ID + ".species_penguin", "res://mods/RAYTRAC3RCosmetics/Assets/Sounds/719110__owen_garcia__loud-duck-quack.wav", "res://mods/RAYTRAC3RCosmetics/Assets/Sounds/463033__iamaviolin__penguin-calls-noises.wav", "res://mods/RAYTRAC3RCosmetics/Assets/Sounds/705839__breviceps__penguin-squeak.wav")
	
	#set up llama head
	Lure.assign_pattern_texture(ID, "pattern_calico", ID + ".species_llama", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/collie/llama.png")
	Lure.assign_pattern_texture(ID, "pattern_collie", ID + ".species_llama", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/collie/llama.png")
	Lure.assign_pattern_texture(ID, "pattern_spotted", ID + ".species_llama", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/collie/llama.png")
	Lure.assign_pattern_texture(ID, "pattern_tux", ID + ".species_llama", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/collie/llama.png")
	Lure.assign_pattern_texture(ID, ID + ".pattern_heartchest", ID + ".species_llama", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/tux/llama.png")
	Lure.assign_face_animation(ID, ID + ".species_llama", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Species/llama_face.tres")
	Lure.assign_cosmetic_mesh(ID, "accessory_cig", ID + ".species_llama", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_cig_llama.tres")
	Lure.assign_cosmetic_mesh(ID, "accessory_antlers", ID + ".species_llama", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_antlers_llama.tres")
	Lure.assign_cosmetic_mesh(ID, "Codsmetics.accessory_dark_antlers", ID + ".species_llama", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_antlers_llama.tres")
	Lure.assign_cosmetic_mesh(ID, "accessory_bandaid", ID + ".species_llama", "res://mods/RAYTRAC3RCosmetics/Assets/Models/Accessories/accessory_bandaid_llama.tres")
	
	#add patterns
	Lure.add_content(ID,"pattern_heartchest","mod://Resources/Cosmetics/pattern_heartchest.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.assign_pattern_texture(ID, ID + ".pattern_heartchest", "Awesome Possum.species_possum", "res://mods/RAYTRAC3RCosmetics/Assets/Textures/heartchest/possum.png")
	
	#add shirts
	Lure.add_content(ID,"dibghost_shirt","mod://Resources/Cosmetics/undershirt_graphic_tshirt_dibghost.tres",[Lure.LURE_FLAGS.FREE_UNLOCK]) # this turns into <RAYTRAC3RCosmetics.dibghost_shirt>
	
	#add eyes
	assign_eye_colors()
	Lure.add_content(ID,"eye_ac_ankha","mod://Resources/Cosmetics/eye_ac_ankha.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"eye_ac_audie","mod://Resources/Cosmetics/eye_ac_audie.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	
	#add heads
	Lure.add_content(ID,"species_minty","mod://Resources/Cosmetics/species_minty.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"species_penguin","mod://Resources/Cosmetics/species_penguin.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"species_llama","mod://Resources/Cosmetics/species_llama.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	
	#add colors
	Lure.add_content(ID,"pcolor_mint","mod://Resources/Cosmetics/pcolor_mint.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"scolor_mint","mod://Resources/Cosmetics/scolor_mint.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"pcolor_silver","mod://Resources/Cosmetics/pcolor_silver.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"scolor_silver","mod://Resources/Cosmetics/scolor_silver.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])

	#add accessories
	assign_acc_colors()
	Lure.add_content(ID,"accessory_scarabmask","mod://Resources/Cosmetics/accessory_scarabmask.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content(ID,"accessory_babyhair","mod://Resources/Cosmetics/accessory_babyhair.tres",[Lure.LURE_FLAGS.FREE_UNLOCK])
