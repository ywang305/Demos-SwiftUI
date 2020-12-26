//
//  DemoSPD_ImagePicker.swift
//  eb_sui_4_abs
//
//  Created by Yao Wang on 12/26/20.
//  Copyright © 2020 yao. All rights reserved.
//

import SwiftUI
import ImagePickerView

struct DemoSPD_ImagePicker: View {
    @State var showImagePicker: Bool = false
        @State var image: UIImage?

        var body: some View {
            VStack {
                if image != nil {
                    Image(uiImage: image!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                Button("Pick image") {
                    self.showImagePicker.toggle()
                }
            }
            .sheet(isPresented: $showImagePicker) {
                ImagePickerView(sourceType: .photoLibrary) { image in
                    self.image = image
                }
            }
        }
}

struct DemoSPD_ImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        DemoSPD_ImagePicker()
    }
}
