//
//  ContentView.swift
//  SF Playground
//
//  Created by Jeremie Berduck on 12/10/2019.
//  Copyright © 2019 Jeremie Berduck. All rights reserved.
//

import SwiftUI

//SF Symbol to try:
// • hifispeaker.fill
// • hifispeaker
// • sportscourt
// • sportscourt.fill

let symbol :String = "swift.tv"

var dynamicImage: UIImage {
	let configuration = UIImage.SymbolConfiguration(textStyle: .body, scale: .large)
	let image = UIImage(named: symbol) ?? UIImage()
	return image.withConfiguration(configuration)
}

struct ContentView: View {
	
	@State var isPresented: Bool = false
	
	var body: some View {
		
		TabView{
			
			NavigationView{
				Text("Main View")
			}
			.navigationBarTitle(Text("SF Playground"))
				
			.tabItem{
				VStack {
					Image(systemName: "tv.fill")
					Text("Main")
				}
			}
			.tag(0)
			
			Text("Second View")
				.tabItem{
					VStack {
						Image(systemName: "rectangle.stack.fill")
						Text("Secondary")
					}
			}
			.tag(1)
			
		}
		
	}
	
	#if DEBUG
	struct ContentView_Previews: PreviewProvider {
		static var previews: some View {
			Group {
				ContentView()
					.previewLayout(.sizeThatFits)
					.previewDevice("iPhone 11 Pro")
				ContentView()
					.previewLayout(.sizeThatFits)
					.previewDevice("iPhone 11 Pro")
					.environment(\.colorScheme, .dark)
			}
		}
	}
	#endif
	
}
