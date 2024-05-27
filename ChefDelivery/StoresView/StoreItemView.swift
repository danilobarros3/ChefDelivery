//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Danilo Barros on 27/05/24.
//

import SwiftUI

struct StoreItemView: View {
    
    // MARK: - Attributes
    
    var order: OrderType
    
    // MARK: - BodyView
    
    var body: some View {
        HStack {
            Image(order.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading) {
                Text(order.name)
                    .font(.subheadline)
            }
            
            Spacer()
        }
    }
}

struct StoreItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoreItemView(order: OrderType(id: 1, name: "Monstro Burger", image: "monstro-burger-logo"))
            .previewLayout(.sizeThatFits)
    }
}
