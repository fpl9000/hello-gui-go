package main

import (
	"fyne.io/fyne/v2"
	"fyne.io/fyne/v2/app"
	"fyne.io/fyne/v2/container"
	"fyne.io/fyne/v2/widget"
)

func main() {
	// Create a new Fyne application.
	myApp := app.New()

	// Create a new window with a title.
	myWindow := myApp.NewWindow("Hello World")

	// Set the window size to 400x300 pixels.
	myWindow.Resize(fyne.NewSize(400, 100))

	// Create a label widget with the "Hello, World!" message.
	helloLabel := widget.NewLabel("Hello, World!")

	// Create a button that shows a message when clicked.
	helloButton := widget.NewButton("Click Me!", func() {
		helloLabel.SetText("Hello from Fyne GUI!")
	})

	// Create a container to hold our widgets with vertical box layout.
	content := container.NewVBox(
		helloLabel,
		helloButton,
	)

	// Set the content of the window.
	myWindow.SetContent(content)

	// Center the window on the screen.
	myWindow.CenterOnScreen()

	// Show the window and run the application.
	// This will block until the window is closed.
	myWindow.ShowAndRun()
}
