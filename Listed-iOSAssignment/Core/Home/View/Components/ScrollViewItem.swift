//
//  ScrollViewItem.swift
//  Listed-iOSAssignment
//
//  Created by Prashanna Rajbhandari on 07/07/2023.
//

import SwiftUI

struct ScrollViewItem: View {
    let item: ScrollItem
    var body: some View {
        HStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 120, height: 120)
                .foregroundColor(.white)
                .overlay(alignment: .leading, content: {
                    VStack(alignment: .leading) {
                        Image(item.image)
                            .padding(.top)
                        Spacer()
                        Text(item.title)
                            .font(.headline)
                            .lineLimit(1)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            
                        Spacer()
                        Text(item.body)
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
        ScrollViewItem(item: ScrollItem(id: 1, image: "click", title: "123", body: "Today's clicks"))
            
    }
}
