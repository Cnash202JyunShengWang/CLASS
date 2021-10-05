//
//  ContentView.swift
//  CLASS
//
//  Created by 暨大附中 on 2021/10/3.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var myData = Age()
    
    var body: some View {
        NavigationView{
            VStack{
            List{
                NavigationLink{
              other()
              }label:{
                  Text("結果")
                    .foregroundColor(Color(hue: 0.609, saturation: 0.865, brightness: 0.859))
                        .font(.title)
              }
            }
            }
        }.environmentObject(myData)
            }
}
        
          
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct other: View {
    
    @EnvironmentObject var myData:Age
    
    var body: some View {
        VStack {
            Text("日期\(myData.number)日")
                .font(.title)
                .padding()
            Text("身高\(myData.name)cm")
                .font(.title)
                .padding()
            Text("體重\(myData.name1)kg")
                .font(.title)
                .padding()
            Text("卡路里\(myData.name2)cal")
                .font(.title)
                .padding()
            
        }
    }
}
struct other2: View {
    @StateObject var myData = Age()
    
    var body: some View {

    VStack {
        Spacer()
        ZStack{
            Rectangle()
                .frame(width: 300, height: 50, alignment: .center)
                .foregroundColor(.green)
                .cornerRadius(26)
                .offset(x: 0, y: -30)
        Text("距離健檢日期120天")
            .font(.title)
            .frame(width: 300, height: 100, alignment:.top)
        }
       Spacer()
        HStack{
            Button {
                myData.number += 1
            } label: {
                Text("身高+1")
                    .font(.title)
                    .foregroundColor(.black)
            }
        Button {
            myData.number -= 1
        } label: {
            Text("身高-1")
                .font(.title)
                .foregroundColor(.black)
        }
        }
        Spacer()
        HStack{
            Button {
                myData.name1 += 1
            } label: {
                Text("體重+1")
                    .foregroundColor(.black)
                    .font(.title)
            }
        Button {
            myData.name1 -= 1
        } label: {
            Text("體重-1")
                .foregroundColor(.black)
                .font(.title)
        }
        }
        Spacer()
        HStack{
            Button {
                myData.name2 += 1
            } label: {
                Text("卡路里+1")
                    .foregroundColor(.black)
                    .font(.title)
            }
        Button {
            myData.name2 -= 1
        } label: {
            Text("卡路里-1")
                .foregroundColor(.black)
                .font(.title)
        }
        }
        Spacer()
    }
    }
}
