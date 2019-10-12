//
//  ContentView.swift
//  SF Playground
//
//  Created by Jeremie Berduck on 12/10/2019.
//  Copyright © 2019 Jeremie Berduck. All rights reserved.
//

import SwiftUI


let smallConfiguration = UIImage.SymbolConfiguration(scale: .small)
let mediumConfiguration = UIImage.SymbolConfiguration(scale: .medium)
let largeConfiguration = UIImage.SymbolConfiguration(scale: .large)

let symbol = "hifispeaker.fill"

let image = UIImage(systemName: symbol, withConfiguration: largeConfiguration)!

struct ContentView: View {
    var body: some View {
		NavigationView {
			VStack {
				Image(uiImage: image.withTintColor(.red, renderingMode: .alwaysOriginal))
				Text(symbol)
			}.navigationBarTitle(Text("SF Playground"))
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
