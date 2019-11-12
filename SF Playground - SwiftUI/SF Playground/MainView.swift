//
//  MainView.swift
//  SF Playground
//
//  Created by Jeremie Berduck on 11/1/19.
//  Copyright © 2019 Jeremie Berduck. All rights reserved.
//

import SwiftUI


struct MainView: View {

	var body: some View {
	
		VStack {
			
			Spacer()
				.frame(height: 80.0)
			
			Spacer()
				.frame(height: 80.0)
			
			Group {
				VStack {
					Spacer(minLength: 30)
					Image(uiImage: dynamicImage)
						.font(.largeTitle)
					Spacer(minLength: 5)
					Text(symbol)
						.font(.footnote)
					Spacer(minLength: 5)
				}
				.frame(width: 100, height: 100, alignment: .center)
				.background(Color.gray.opacity(0.3))
				.cornerRadius(10)
				
				Spacer()
					.frame(height: 190.0)
				
				Button(action: {
					
				}, label: {
					Image(uiImage: dynamicImage)
					Text(symbol)
				})
					.foregroundColor(Color.black)
					.padding()
					.background(Color.orange)
					.cornerRadius(10)
					.contextMenu {
						Image(uiImage: dynamicImage);
						Text(symbol)
							.multilineTextAlignment(.center)
				}
				
				Text("Contextual menu with your icon")
					.font(.caption)
					.foregroundColor(Color.gray)
				
				Spacer()
				
			}
		
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
