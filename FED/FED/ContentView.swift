//
//  ContentView.swift
//  FED
//
//  Created by Kutasov, Ivan on 23/09/2020.
//  Copyright © 2020 Kutasov, Ivan. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var isPresenting = false

    var body: some View {
        Button("Choose photo") {
            self.isPresenting = true
        }.sheet(isPresented: $isPresenting, content: {
            ImagePicker()
        })
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
