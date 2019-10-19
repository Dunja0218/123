//
//  ContentView.swift
//  123
//
//  Created by User10 on 2019/9/25.
//  Copyright © 2019 Starmy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let names = [["member1","member2"], ["member3","member4"], ["member5","member6"]]
    var columnCount = 2
    let photoWidth = (UIScreen.main.bounds.size.width - 30) / 2
    
    var body: some View {
        NavigationView{
            List {
                NavigationLink(destination:IntroView()) {
                    Text("INTRODUCTION").font(Font.custom("Chalkduster", size: 30)).fontWeight(.light).foregroundColor(Color(hue: 0.989, saturation: 0.868, brightness: 0.747))
                }
                ForEach(0..<names.count) { (row) in
                    ScrollView {
                        HStack(spacing:10) {
                            ForEach(0..<self.names[row].count) { (column) in
                                
                                ZStack (alignment: .bottomTrailing){
                                    Image(self.names[row][column])
                                        .renderingMode(.original)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width:self.photoWidth, height:self.photoWidth)
                                        .clipShape(Circle())
                                        .overlay(Circle().stroke(Color.white, lineWidth: 2))
                                        .shadow(radius: 10)
                                    
                                    Text("#")
                                        .font(Font.system(size: 30))
                                        .frame(width: 40, height: 40)
                                        .background(Color.purple)
                                        .clipShape(Circle())
                                        .offset(x: -10, y: -10)
                                }
                                .background(Color(red: 238, green: 238, blue:0))
                                .cornerRadius(20)
                            }
                        }
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 0))
                    }
                    
                }
                .onAppear(){
                    UITableView.appearance().separatorColor = .clear
                }
            }
            .navigationBarTitle("灌籃高手 SLAMDUNK")
        }
        .padding(.trailing)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
