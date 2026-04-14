extends Node

var region_mapper = preload("res://addons/geoguess_ai/utils/region_mapper.gd").new()

func save_metadata(filename):
    var cam = get_viewport().get_camera_3d()
    if cam == null:
        return

    var data = {
        "file": filename,
        "position": cam.global_position,
        "region": region_mapper.get_region(cam.global_position)
    }

    var path = "user://dataset/labels.jsonl"
    var file = FileAccess.open(path, FileAccess.READ_WRITE)

    if file:
        file.seek_end()
        file.store_line(JSON.stringify(data))
