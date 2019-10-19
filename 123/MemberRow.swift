//
//  MemberRow.swift
//  123
//
//  Created by Dunja on 2019/10/13.
//  Copyright © 2019 Starmy. All rights reserved.
//

import SwiftUI

struct MemberRow: View {
       var member: Member
       var body: some View {
           HStack {
               Image(member.Name)
                   .resizable()
                   .scaledToFill()
                   .frame(width:80, height:80)
                   .clipped()
               VStack(alignment: .leading) {
                   Text(member.Name)
                   Text(member.Birthday)
               }
               Spacer()
           }
       }
}

struct MemberRow_Previews: PreviewProvider {
    static var previews: some View {
        MemberRow(member : Member(Name: "櫻木花道", Birthday: "04/01", Number: "10號", Location: "大前鋒", Height_Weight: "189.2cm / 83kg", Nickname: "天才", Shoe: "Nike-AirJordan 1, 16", Another: "在國中三年追求50個女生都被甩掉。進入高中後對赤木晴子一見鍾情，為吸引她而進入籃球隊。他從籃球的門外漢，在短短的幾個月里成長為天才籃球手。他對感興趣的東西學起來很快，擅長籃板球和灌籃。速度和彈跳力很好，而且有著驚人的充沛體力，常常做出令人意想不到的舉動，從而改變整個球隊的氣氛，令人聯想到丹尼斯·羅得曼。因為赤木晴子暗戀流川楓，所以他非常嫉妒流川楓，兩個人也經常爭吵打架，不過，他們各自心裡還是佩服對方的球技的。"))
    }
}
