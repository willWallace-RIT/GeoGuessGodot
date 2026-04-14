func save_metadata(filename):
    var cam = get_viewport().get_camera_3d()
    
    var data = {
        "file": filename,
        "position": cam.global_position,
        "region": get_region_from_position(cam.global_position)
    }
    
    var file = FileAccess.open("user://dataset/labels.json", FileAccess.WRITE_READ)
    file.store_line(JSON.stringify(data))
