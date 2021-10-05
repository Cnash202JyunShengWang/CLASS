//
//  CardView.swift
//  CLASS
//
//  Created by 暨大附中 on 2021/10/5.
//

import SwiftUI

struct CardView: View {
    @State var cardOnOff = false
    
    var body: some View {
        ZStack {
            NavigationView{
                VStack{
                    List{
                        NavigationLink {
                          ContentView()
                        } label: {
                            Text("健康資料")
                            
                        }
                    }
                    
                List{
                    NavigationLink {
                        secondView()
                    } label: {
                        Text("個人資訊")
                        
                    }
                }
                .listRowBackground(Color.clear)
                    List{
                        NavigationLink {
                            CardDemoView()
                        } label: {
                            Text("帶出動畫")
                            
                        }
                    }
            }
            }
        }
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
