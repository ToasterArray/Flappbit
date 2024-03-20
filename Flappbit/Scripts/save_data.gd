class_name SaveData extends Resource
const SAVE_PATH = "user://save_data.tres"
@export var high_score:int
@export var SFX_off:bool
@export var MUSIC_off:bool

func save() -> void:
	ResourceSaver.save(self, SAVE_PATH)
	
static func load_or_create() -> SaveData:
	var res:SaveData
	if(FileAccess.file_exists(SAVE_PATH)):
		res = load(SAVE_PATH) as SaveData
	else:
		res = SaveData.new()
	return res
