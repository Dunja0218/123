//
//  IntroView.swift
//  123
//
//  Created by User10 on 2019/10/2.
//  Copyright © 2019 Starmy. All rights reserved.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        List(0..<members.count) { (index) in
            VStack {
                ScrollView(.vertical){
                    Image(members[index].Name)
                        .resizable()
                        .scaledToFill()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 200)
                        .clipped()
                        .padding()
                    Text(
                        members[index].Number + "       " +  members[index].Location)
                    
                    Text(
                       members[index].Birthday + "       " + members[index].Nickname)
                    
                    Text(members[index].Height_Weight + "\n")
                    
                    Text(members[index].Another)
                        .padding()
                    
                    Spacer()
                }
            }
            .background(Color.yellow)
            .cornerRadius(20)
            .shadow(radius: 5)
        }
        .navigationBarTitle("成員介紹")
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            IntroView()
        }
        
    }
}
