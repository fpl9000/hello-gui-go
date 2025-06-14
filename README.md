# Hello GUI - Fyne Application

A simple "Hello World" GUI application built with Go and the Fyne toolkit.

## Features

- Simple graphical window with "Hello World" message
- Interactive button that changes the text when clicked
- Cross-platform GUI using Fyne v2
- Native Windows executable

## Requirements

- Go 1.24.2 or later
- MinGW compiler (MSYS2 recommended for Windows)
- Fyne v2 dependencies (automatically managed by Go modules)
  - Install Fyne v2 by following the instructions at https://docs.fyne.io/started/

## Building the Application

### Method 1: Using the Build Script (Windows)
```batch
build.bat
```

### Method 2: Manual Build
```bash
# Set up the environment (Windows with MSYS2)
export PATH="/cygdrive/c/apps/msys64/mingw64/bin:$PATH"
export CC=gcc

# Build the executable
go build -o hello-gui.exe main.go
```

### Method 3: Run Directly
```bash
# Set up the environment (Windows with MSYS2)
export PATH="/cygdrive/c/apps/msys64/mingw64/bin:$PATH"
export CC=gcc

# Run the application
go run main.go
```

## Running the Application

After building, you can run the application by:
- Double-clicking `hello-gui.exe` in Windows Explorer
- Running `./hello-gui.exe` from the command line

## Application Structure

- `main.go` - Main application code with GUI setup
- `go.mod` - Go module definition with dependencies
- `go.sum` - Dependency checksums
- `build.bat` - Windows build script
- `hello-gui.exe` - Compiled executable (created after building)

## Dependencies

The application uses the following main dependencies:
- `fyne.io/fyne/v2` - Cross-platform GUI toolkit
- Various supporting libraries for graphics, fonts, and system integration

## Troubleshooting

### Compiler Issues
If you encounter "don't use the cygwin compiler" errors, ensure you're using MinGW instead of Cygwin's GCC:
- Install MSYS2 with MinGW64
- Set the PATH to include MinGW binaries
- Set CC=gcc environment variable

### Missing Dependencies
Run `go mod tidy` to ensure all dependencies are properly downloaded and configured.
