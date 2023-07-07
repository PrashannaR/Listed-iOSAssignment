//
//  Home.swift
//  Listed-iOSAssignment
//
//  Created by Prashanna Rajbhandari on 07/07/2023.
//

import SwiftUI

struct Home: View {
    
    @StateObject private var vm = HomeViewModel()
    
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
                        .overlay(alignment: .leading) {
                            Greetings()
                        }
                    


                        
                    
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
            .onAppear{
                vm.updateGreetings()
            }
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
    
    private func Greetings() -> some View{
        VStack(alignment: .leading) {
            Text(vm.greetingsMessage)
                .foregroundColor(.gray)
            
            Text("Prashanna 👋")
                .font(.title2)
                .foregroundColor(.black)
                .fontWeight(.semibold)
                .padding(.top,3)
                
            
            Spacer()
        }.padding(.top,40)
            .padding()
    }

}
