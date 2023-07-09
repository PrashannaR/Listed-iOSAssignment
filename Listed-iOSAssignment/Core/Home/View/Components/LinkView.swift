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
//                            RoundedRectangle(cornerRadius: 20)
//
//                                .foregroundColor(Color.theme.accent)
                            AsyncImage(url: URL(string: link.originalImage ?? "https://i.ytimg.com/vi/G0WTFfZqjz0/maxresdefault.jpg")) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 50, height: 50)

                            VStack(alignment: .leading) {
                                Text(link.title ?? "Sample link name...")
                                    .foregroundColor(.black)
                                    .font(.subheadline)
                                    .lineLimit(1)
                                
                                Text(formatDate(_:link.createdAt ?? "2021-12-17T10:36:05.000Z"))
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
    
    func formatDate(_ dateString: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        let date = dateFormatter.date(from: dateString)

        let outputDateFormatter = DateFormatter()
        outputDateFormatter.dateFormat = "dd MMM yyyy"
        return outputDateFormatter.string(from: date!)
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView(link: dev.link)
    }
}


