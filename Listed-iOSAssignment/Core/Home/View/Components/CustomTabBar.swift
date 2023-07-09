//
//  CustomTabBar.swift
//  Listed-iOSAssignment
//
//  Created by Prashanna Rajbhandari on 09/07/2023.
//

import SwiftUI

struct CustomTabBar: View {
    
    var body: some View {
        Buttons()
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}


extension CustomTabBar{
    private func Buttons() -> some View{
        HStack{
            Button {
            } label: {
                VStack{
                    Image("link")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30,height: 30)
                    Text("Links")
                        .font(.caption)
                        .foregroundColor(.black)
                    
                }
            }
            .padding(.leading,20)
            Spacer()
            
            Button {
                
            } label: {
                VStack{
                    Image("course")
                    Text("Courses")
                        .font(.caption)
                        .foregroundColor(.black)
                    
                }
            }
            Spacer()
            
            Button {
                
            } label: {
                Circle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(Color.theme.accent)
                    .overlay {
                        Image(systemName: "plus")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    
             }
            .offset(x: 5,y: -30)


            Spacer()
            Button {
                
            } label: {
                VStack{
                    Image("campaign")
                    Text("Campaigns")
                        .font(.caption)
                        .foregroundColor(.black)
                    
                }
            }

            Spacer()

            
            Button {
                
            } label: {
                VStack{
                    Image("profile")
                    Text("Profile")
                        .font(.caption)
                        .foregroundColor(.black)
                    
                }
            }
            .padding(.trailing)


        }
        .background{
            Color.white
        }
        
    }
}
