//
//  secondView.swift
//  CLASS
//
//  Created by 暨大附中 on 2021/10/3.
//

import SwiftUI

struct secondView: View {
    @StateObject var myData = Age1()
        var body :some View{
            NavigationView{
          VStack {
                  Rectangle()
                      .frame(width: 300, height: 50, alignment: .center)
                      .foregroundColor(.green)
                      .cornerRadius(26)
                      .offset(x: 0, y: 80)
             NavigationLink{
                other1 () }
               label: {
                  Text("個人出生資訊")
                      .foregroundColor(.black)
                      .font(.title)
                      .frame(width: 200, height: 100, alignment: .center)
                  
              }
              HStack{
                  Button {
                      myData.number += 1
                  } label: {
                      Text("年份+1")
                          .font(.title)
                          .foregroundColor(.black)
                  }
              Button {
                  myData.number -= 1
              } label: {
                  Text("年份-1")
                      .font(.title)
                      .foregroundColor(.black)
              }
              }
              HStack{
                  Button {
                      myData.name3 += 1
                  } label: {
                      Text("月+1")
                          .foregroundColor(.black)
                          .font(.title)
                  }
              Button {
                  myData.name3 -= 1
              } label: {
                  Text("月-1")
                      .foregroundColor(.black)
                      .font(.title)
              }
              }
              HStack{
                  Button {
                      myData.name4 += 1
                  } label: {
                      Text("日+1")
                          .foregroundColor(.black)
                          .font(.title)
                  }
              Button {
                  myData.name4 -= 1
              } label: {
                  Text("日-1")
                      .foregroundColor(.black)
                      .font(.title)
              }
              }
              HStack{
                  Button {
                      myData.name4 += 1
                  } label: {
                      Text("點+1")
                          .foregroundColor(.black)
                          .font(.title)
                  }
              Button {
                  myData.name4 -= 1
              } label: {
                  Text("點-1")
                      .foregroundColor(.black)
                      .font(.title)
              }
              }
      }
      }.environmentObject(myData)
        }
  }


    struct secondView_Previews: PreviewProvider {
    static var previews: some View {
        secondView()
    }
}

struct other1: View {
    
    @EnvironmentObject var myData:Age1
    
    var body: some View {
        VStack {
            Text("日期\(myData.number)年")
                .font(.title)
                .padding()
            Text("\(myData.name3)月")
                .font(.title)
                .padding()
            Text("\(myData.name4)日")
                .font(.title)
                .padding()
            Text("\(myData.name5)點")
                .font(.title)
                .padding()
            
        }
    }
}
