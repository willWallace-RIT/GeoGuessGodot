extends Node

func get_region(pos: Vector3) -> String:
    if pos.x < 0 and pos.z < 0:
        return "southwest"
    elif pos.x >= 0 and pos.z < 0:
        return "southeast"
    elif pos.x < 0 and pos.z >= 0:
        return "northwest"
    else:
        return "northeast"
