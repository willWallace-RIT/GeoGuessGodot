🌍 GeoGuess AI (Godot Plugin)

Train a machine learning model to predict in-game location from static screenshots using automated dataset generation directly inside Godot.

---

🚀 Overview

GeoGuess AI is a Godot Editor Plugin that:

- 📸 Captures randomized in-game scenes
- 🏷️ Labels them with ground-truth location data
- 🧠 Prepares datasets for machine learning
- 🎯 Predicts location from new images (stub / ML-ready)

This enables GeoGuess-style gameplay, AI-driven analytics, or map-awareness systems inside your game.

---

✨ Features

- Automated Dataset Generation
  
  - Random camera positions & rotations
  - Screenshot capture
  - JSONL metadata labeling

- Region-Based Classification
  
  - Simple quadrant system (extendable)
  - Replaceable with biome/zone logic

- Plugin UI Panel
  
  - Generate dataset
  - Train (stub)
  - Test predictions

- ML-Ready Pipeline
  
  - Export dataset for PyTorch / TensorFlow
  - Designed for ONNX integration

---

📦 Installation

1. Copy the plugin folder:

addons/geoguess_ai/

into your Godot project.

2. Enable the plugin:
   
   - Go to Project → Project Settings → Plugins
   - Enable GeoGuess AI

3. The panel will appear in the right dock.

---

🧪 How It Works

1. Dataset Generation

The plugin:

- Randomizes camera position and rotation
- Captures screenshots
- Saves metadata with location labels

Output:

user://dataset/
├── sample_00000.png
├── sample_00001.png
├── labels.jsonl

---

2. Metadata Format

Each line in "labels.jsonl":

{"file":"sample_00000.png","position":{"x":12,"y":5,"z":-33},"region":"southeast"}

---

3. Region Mapping

Default system splits the world into 4 regions:

- northwest
- northeast
- southwest
- southeast

You can customize this in:

utils/region_mapper.gd

---

4. Prediction (Current State)

⚠️ Currently uses a random stub predictor.

Replace with:

- ONNX model
- External ML inference
- Custom classifier

---

🧠 Training Pipeline (Recommended)

This plugin is designed to pair with an external ML workflow:

Suggested Stack

- Python
- PyTorch
- torchvision (ResNet, etc.)
- ONNX export

Flow

1. Generate dataset in Godot
2. Train model externally
3. Export ".onnx"
4. Load in Godot for inference

---

🧩 Planned Integration

- ONNX Runtime (GDExtension)
- Real-time inference in engine
- Confidence scoring
- Heatmap visualization

---

🎯 Use Cases

- GeoGuess-style gameplay modes
- AI navigation awareness
- Anti-cheat / familiarity detection
- Scene recognition systems
- Player behavior analytics

---

⚙️ Configuration

Edit dataset behavior in:

dataset/capture.gd

Key settings:

samples_per_run = 50
output_path = "user://dataset/"

---

⚠️ Limitations

- No real ML model included yet
- Accuracy depends heavily on:
  - Scene diversity
  - Distinct visual features
- Uniform environments will perform poorly

---

🔥 Future Improvements

- Multi-angle sampling per location
- Lighting / weather randomization
- Temporal (path-based) prediction
- Attention / saliency visualization
- In-editor dataset viewer

---

🤝 Contributing

Ideas and extensions are welcome:

- Better region labeling systems
- Built-in training tools
- Optimized inference pipelines

---

📜 License

MIT (or your choice)

---

🧠 Inspiration

Inspired by:

- GeoGuessr-style reasoning
- Computer vision localization
- Game-state understanding AI

---

💡 Tip

Start simple:

👉 Train on distinct regions first
👉 Then move toward fine-grained coordinates

---

🚀 Next Steps

To unlock full power:

- Add ONNX runtime to Godot
- Train a CNN on captured dataset
- Replace stub predictor

---

Enjoy building AI that understands your world. 🌍
