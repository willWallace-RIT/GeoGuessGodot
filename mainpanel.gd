extends VBoxContainer

@onready var capture = preload("res://addons/geoguess_ai/dataset/capture.gd").new()
@onready var predictor = preload("res://addons/geoguess_ai/inference/predictor.gd").new()
@onready var trainer = preload("res://addons/geoguess_ai/training/trainer_stub.gd").new()

@onready var output_label = $Label

func _ready():
    $GenerateDatasetButton.pressed.connect(_on_generate)
    $TrainModelButton.pressed.connect(_on_train)
    $TestPredictionButton.pressed.connect(_on_test)

func _on_generate():
    capture.capture_dataset()
    output_label.text = "Dataset generated."

func _on_train():
    trainer.train()
    output_label.text = "Training complete (stub)."

func _on_test():
    var img = get_viewport().get_texture().get_image()
    var result = predictor.predict(img)
    output_label.text = "Prediction: " + str(result)
