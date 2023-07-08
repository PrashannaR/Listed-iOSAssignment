//
//  ScrollViewItem.swift
//  Listed-iOSAssignment
//
//  Created by Prashanna Rajbhandari on 07/07/2023.
//

import SwiftUI

struct ScrollViewItem: View {
    
    
    let imageName:String
    let title: String
    let desc: String
    
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 120, height: 120)
                .foregroundColor(.white)
                .overlay(alignment: .leading, content: {
                    VStack(alignment: .leading) {
                        Image(imageName)
                            .padding(.top)
                        Spacer()
                        Text(title)
                            .font(.headline)
                            .lineLimit(1)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            
                        Spacer()
                        Text(desc)
                            .font(.subheadline)
                            .foregroundColor(.gray)

                        Spacer()
                    }
                    .padding(.leading, 8)

                })
                .padding()
        }
    }
}

struct ScrollViewItem_Previews: PreviewProvider {
    static var previews: some View {
        //ScrollViewItem(item: ScrollItem(id: 1, image: "click", title: "123", body: "Today's clicks"))
        
        ScrollViewItem(imageName: "click", title: "123", desc: "Today's clicks")
            
    }
}
