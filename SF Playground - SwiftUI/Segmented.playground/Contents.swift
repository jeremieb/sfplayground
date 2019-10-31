


import SwiftUI
import PlaygroundSupport

struct ContentView : View {
	
	var body: some View {
		List {
			Group {
				Text("Row 1")
				Text("Row 2")
				Text("Row 3")
				Text("Row 4")
				Text("Row 5")
				Text("Row 6")
			}
			
			Group {
				Text("Row 7")
				Text("Row 8")
				Text("Row 9")
				Text("Row 10")
				Text("Row 11")
			}
		}
	}
}

let host = UIHostingController(rootView: ContentView())
PlaygroundPage.current.liveView = host
