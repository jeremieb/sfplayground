import SwiftUI
import PlaygroundSupport

struct ContentView: View {

    var body: some View {
		VStack{
			Image("jeremie")
				.scaleEffect(0.50)
			Text("SF Playground is a project initialiazed by Jeremie Berduck. You can follow me on Twitter: @jeremieberduck")
				.font(.footnote)
				.foregroundColor(Color.gray)
				.multilineTextAlignment(.center)
		}
    }

}

let host = UIHostingController(rootView: ContentView())
PlaygroundPage.current.liveView = host
