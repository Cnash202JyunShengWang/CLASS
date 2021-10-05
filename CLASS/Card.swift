//
//  Card.swift
//  CLASS
//
//  Created by 暨大附中 on 2021/10/5.
//

import SwiftUI

struct Card: View {
    @Binding var cardOnOff:Bool
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "suit.heart.fill")
                
                Text("hollow")
            }
            Text("keep going")
                .padding()
        }
        .frame(maxHeight: .infinity, alignment: .center)
        .frame(maxWidth:.infinity)
        .background(Color.green)
        .foregroundColor(.white)
        .cornerRadius(16)
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            cardOnOff.toggle()
        }
        
    }
}



struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(cardOnOff: .constant(false))
    }
}
