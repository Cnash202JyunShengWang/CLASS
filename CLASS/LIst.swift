//
//  LIst.swift
//  CLASS
//
//  Created by 暨大附中 on 2021/10/5.
//

import SwiftUI

struct LIst: View {
    var body: some View {
        
        NavigationView{
            VStack {
                List {
                    ForEach(textStrings) { item in
                        NavigationLink(
                            destination: NavigationLink(
                                destination:CardView(),
                                label: {
                                    Text("請填入個人資料")
                                }),
                            label: {
                                VStack {
                                    Text(" BMI")
                                }
                            })
                    }
                }
                .navigationTitle(Text("BMI計畫"))
                //.listStyle(InsetGroupedListStyle())
            }
            //表單類型
            /*
             CarouselListStyle
             DefaultListStyle
             EllipticalListStyle //watchOS 7.0+
             GroupedListStyle
             InsetGroupedListStyle
             InsetListStyle
             PlainListStyle
             SidebarListStyle
             */
            
        }
    }
}

struct LIst_Previews: PreviewProvider {
    static var previews: some View {
        LIst()
    }
}
struct textString:Identifiable {
    var id = UUID()
    var title:String
    var img:String
}

let textStrings = [     //陣列
    textString(title: "", img: ""),
    textString(title: "", img: ""),
    textString(title: "", img: ""),
]



struct firstTitle: View {
    @State var img = ""
    @State var title = ""
    
    var body: some View {
        HStack {
            Image(systemName: img)
        }
    }
}

