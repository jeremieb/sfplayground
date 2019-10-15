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

let symbol = "sportscourt.fill"

struct ContentView: View {
	
	@State var isPresented: Bool = false
	
	@State private var currentView = 0	
	@State private var displayWeight = 18
	@State var fontWeight = [".ultraLight", ".thin", ".light", ".regular", ".medium", ".semibold", ".bold", ".heavy", ".black"]
	
	var segmentedView = ["\(symbol)", "ultra big", "gallery"]
	
	var body: some View {
		
		NavigationView {
			
			VStack {
				
				Spacer()
					.frame(height: 80.0)
				
				Picker(selection: $currentView, label: Text("Choose a view")) {
					ForEach(0..<segmentedView.count) { index in
						Text(self.segmentedView[index]).tag(index)
					}
				}.pickerStyle(SegmentedPickerStyle()).padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
				
				Spacer()
					.frame(height: 80.0)
				
				VStack {
					Spacer(minLength: 30)
					Image(systemName: symbol)
						.font(.largeTitle)
					Spacer(minLength: 5)
					Text(symbol)
						.font(.footnote)
					Spacer(minLength: 5)
				}
				.frame(width: 100, height: 100, alignment: .center)
				.background(Color.gray.opacity(0.3))
				.cornerRadius(10)

				Image("test")
				
				Spacer()
					.frame(height: 190.0)
				
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
				Button(action: { self.isPresented.toggle() }, label: {
					Image(systemName: "info.circle.fill")
						.foregroundColor(Color.orange)
						.font(.title)
				})
			)
				
			// Info Screen
			.sheet(isPresented: $isPresented) {
				VStack{
					Spacer()
					HStack{
						Image("jeremie")
							.scaleEffect(0.20)
							.frame(width: 90, height: 90, alignment: .center)
						Text("SF Playground is a project initialiazed by Jeremie Berduck. You can follow me on Twitter: @jeremieberduck")
							.font(.footnote)
							.foregroundColor(Color.gray)
							.padding(.all)
					}
				}
			}
		}
	}
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
#endif
