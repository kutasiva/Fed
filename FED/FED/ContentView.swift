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
    @State private var image = UIImage()

    var body: some View {
        VStack {
            Image(uiImage: self.image)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                self.isPresenting = true
            }) {
                HStack {
                    Image(systemName: "photo")
                    Text("Open photo library")
                }

            }.sheet(isPresented: $isPresenting, content: {
                ImagePicker()
            })
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
                .padding(.horizontal)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
