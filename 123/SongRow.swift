//
//  SongRow.swift
//  123
//
//  Created by User10 on 2019/9/25.
//  Copyright © 2019 Starmy. All rights reserved.
//

import SwiftUI

struct SongRow: View {
    
    var song: Song
    var body: some View {
        HStack {
            Image(song.name)
                .resizable()
                .scaledToFill()
                .frame(width:80, height:80)
                .clipped()
            VStack(alignment: .leading) {
                Text("湘北 vs. " + song.name)
                Text(song.singer)
                    .font(Font.custom("Noteworthy-Bold", size: 20))
                    .foregroundColor(Color(hue: 0.989, saturation: 0.868, brightness: 0.747))
            }
            Spacer()
        }
    }
}

struct SongRow_Previews: PreviewProvider {
    static var previews: some View {
        SongRow(song: Song(name: "三浦台", singer: "114：51", lyrics: "goog"))
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
