//
//  ImagePicker.swift
//  FED
//
//  Created by Kutasov, Ivan on 26/09/2020.
//  Copyright © 2020 Kutasov, Ivan. All rights reserved.
//

import UIKit
import SwiftUI

struct ImagePicker {

}

extension ImagePicker: UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        return UIImagePickerController()
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {
        ()
    }
}
