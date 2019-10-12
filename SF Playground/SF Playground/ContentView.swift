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

	var body: some View {
		NavigationView {
			VStack {
				Image(systemName: symbol)
					.font(.title)
				Text(symbol)
				Spacer()
					.frame(height: 50.0)
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
				}
				Text("Contextual menu with your icon")
					.font(.caption)
					.foregroundColor(Color.gray)
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
