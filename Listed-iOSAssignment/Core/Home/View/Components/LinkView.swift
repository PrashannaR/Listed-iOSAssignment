//
//  LinkView.swift
//  Listed-iOSAssignment
//
//  Created by Prashanna Rajbhandari on 07/07/2023.
//

import SwiftUI

struct LinkView: View {
    
    let link : Link
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(maxWidth: .infinity)
                .frame(height: 130)
                .foregroundColor(.white)
                .padding()
                .overlay(alignment: .leading) {
                    VStack(alignment: .leading) {
                        HStack {
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 50, height: 50)
                                .foregroundColor(Color.theme.accent)

                            VStack(alignment: .leading) {
                                Text(link.title ?? "Sample link name...")
                                    .foregroundColor(.black)
                                    .font(.subheadline)
                                    .lineLimit(1)
                                Text("22 Aug 2022")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }

                            Spacer()
                            let totalClicks = link.totalClicks
                            VStack(alignment: .leading) {
                                Text(String(totalClicks ?? 0))
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                Text("Clicks")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding()
                        Spacer()
                        
                        Image("rect")
                            .resizable()
                            .overlay {
                                HStack{
                                    Text(link.smartLink ?? "")
                                        .font(.subheadline)
                                        .foregroundColor(Color.theme.accent)
                                    Spacer()
                                    Image(systemName: "doc.on.doc")
                                        .foregroundColor(Color.theme.accent)
                                }
                                .padding()
                            }



                    }
                    .padding()
                }
        }
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView(link: dev.link)
    }
}


