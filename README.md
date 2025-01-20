# Processing on VSCode (macOS)

This guide demonstrates how to set up and run Processing sketches in Visual Studio Code on macOS, avoiding the need for the Processing IDE.

## Prerequisites

- Visual Studio Code
- Processing installed on your Mac
- Processing command line tool (`processing-java`)

## Project Structure

```shell
project/
├── .vscode/
│   └── tasks.json    # VSCode task configuration
├── sketch/           # Processing sketch folder
│   └── sketch.pde    # Main Processing file (name must match folder)
└── README.md
```

## Setup Instructions

1. **Install Processing**

   - Download and install Processing from [processing.org](https://processing.org/download)
   - Verify that `processing-java` is available in `/usr/local/bin/processing-java`

2. **Configure VSCode**

   - Create a `.vscode` folder in your project root
   - Create `tasks.json` inside `.vscode` with the following configuration:

   ````json
   {
     "version": "2.0.0",
     "presentation": {
       "reveal": "always",
       "panel": "new"
     },
     "tasks": [
       {
         "label": "Run Processing Sketch",
         "command": "/usr/local/bin/processing-java",
         "type": "process",
         "args": ["--force", "--sketch=${fileDirname}", "--run"],
         "problemMatcher": [],
         "group": {
           "kind": "build",
           "isDefault": true
         }
       }
     ]
   }```
   ````

3. Create Your Sketch

Create a folder for your sketch
Important: The .pde file must have the same name as its parent folder
Example: sketch/sketch.pde

## Running Your Sketch

Open your .pde file in VSCode
Run the task using:

Command Palette (Cmd + Shift + P): Tasks: Run Build Task
Or use the keyboard shortcut: Cmd + Shift + B

## Example Sketch

Here's a simple example to test your setup:

```java
void setup() {
  size(400, 400);
  background(255);
}

void draw() {
  if (mousePressed) {
    fill(0, 150, 255);
    noStroke();
    ellipse(mouseX, mouseY, 20, 20);
  }

  // Clear screen with right click
  if (mousePressed && mouseButton == RIGHT) {
    background(255);
  }
}
```

## Common Issues and Solutions

Error: Not a valid sketch folder: Ensure your .pde file name matches its parent folder name
Command not found: Verify the path to processing-java in your tasks.json
Sketch won't run: Check that your sketch folder structure matches the required format

## Tips

You can use the ${fileDirname} variable in tasks.json to automatically find the sketch directory
Keep your Processing sketch file and folder names aligned
Consider installing a Processing language extension for syntax highlighting
