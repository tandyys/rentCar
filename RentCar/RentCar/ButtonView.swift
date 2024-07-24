//
//  ButtonView.swift
//  RentCar
//
//  Created by tandyys on 18/07/24.
//

import SwiftUI

struct ButtonView: View {
    @State var isOrderComplete = false
    
    var body: some View {
        Button(action: {
            isOrderComplete.toggle()
            print("Order complete")
        }) {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(.indigo)
        }
        .overlay {
            Text("COMPLETE ORDER")
                .font(.system(size: 22))
                .bold()
                .foregroundStyle(.white)
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 60)
        .padding()
    }
}

#Preview {
    ButtonView()
        .previewLayout(.sizeThatFits)
}
