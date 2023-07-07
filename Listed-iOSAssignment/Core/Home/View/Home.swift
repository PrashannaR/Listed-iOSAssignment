//
//  Home.swift
//  Listed-iOSAssignment
//
//  Created by Prashanna Rajbhandari on 07/07/2023.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Color.theme.accent
                    .ignoresSafeArea()
                
                //foreground
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .padding(.top,20)
                        .frame(maxHeight: .infinity)
                        .ignoresSafeArea(edges: .bottom)
                        .foregroundColor(Color.theme.bgWhite)

                        
                    
                }
                
                
            }.toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Dashboard")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "xmark")
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            Home()
        }
    }
}


//MARK: Extension
extension Home{

}
