extends Node

func predict(image: Image) -> String:
    # STUB — replace with ONNX model later

    var regions = ["northwest", "northeast", "southwest", "southeast"]
    return regions[randi() % regions.size()]
