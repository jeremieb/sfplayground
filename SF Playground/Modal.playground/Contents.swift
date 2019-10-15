import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    @State var showModal:Bool = false
    var body: some View {
        NavigationView{
			Image(systemName: "sportscourt.fill")
				.font(.system(size: 60))
            Text("Sample")
            .navigationBarTitle("List")
            .navigationBarItems(leading:Button("Edit"){
                    self.showModal = true
                })
        }.sheet(isPresented: self.$showModal) {
            Modal(isOn: self.$showModal)
        }
    }
}

struct Modal: View {
    @Binding var isOn:Bool
    var body: some View {
        Text("Dismiss Modal View").onTapGesture {
            self.isOn = false
        }
    }
}

let host = UIHostingController(rootView: ContentView())
PlaygroundPage.current.liveView = host
