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

let symbol = "hifispeaker"

struct ContentView: View {
	
	@State private var currentView = 0
	
	var segmentedView = ["\(symbol)", "full screen", "gallery"]
	
	var body: some View {
		NavigationView {
			VStack {
				Spacer()
					.frame(height: 110.0)
				Picker(selection: $currentView, label: Text("What is your favorite color?")) {
					ForEach(0..<segmentedView.count) { index in
						Text(self.segmentedView[index]).tag(index)
					}
				}.pickerStyle(SegmentedPickerStyle()).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
				Spacer()
					.frame(height: 80.0)
				Image(systemName: symbol)
					.font(.title)
				Text(symbol)
				Spacer()
					.frame(height: 80.0)
				Button(action: {
					
				}, label: {
					Image(systemName: symbol)
					Text(symbol)
				})
					.foregroundColor(Color.black)
					.padding()
					.background(Color.orange)
					.cornerRadius(10)
					.contextMenu {
						Image(systemName: symbol);
						Text(symbol)
							.multilineTextAlignment(.center)
				}
				Text("Contextual menu with your icon")
					.font(.caption)
					.foregroundColor(Color.gray)
				Spacer()
			}
			.navigationBarTitle(Text("SF Playground"))
			.navigationBarItems(trailing:
				Button(action: {
					
				}, label: {
					Image(systemName: "info.circle.fill")
						.foregroundColor(Color.orange)
				})
			)
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
