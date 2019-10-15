//
//  Info.swift
//  SF Playground
//
//  Created by Jeremie Berduck on 12/10/2019.
//  Copyright © 2019 Jeremie Berduck. All rights reserved.
//

import SwiftUI

struct Info: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button(action: {
//            self.presentationMode.value.dismiss()
        }, label: { Text("Save")})
    }
}

struct Info_Previews: PreviewProvider {
    static var previews: some View {
        Info()
    }
}
