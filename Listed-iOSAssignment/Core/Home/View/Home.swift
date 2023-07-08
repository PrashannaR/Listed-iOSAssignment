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
            ZStack {
                Color.theme.accent
                    .ignoresSafeArea()
                RoundedBackground()

                // foreground
                ScrollView {
                    VStack(alignment: .leading) {
                        Greetings()

                        ChartView()

                        ScrollItems()

                        AnalyticsButton()

                        LinksTab()
                        
                        ForEach(0..<5) { _ in
                            LinkView()
                        }
                        
                        ViewAllLinksButton()
                        
                        CustomButtonTwo(borderColor: Color.theme.borderGreen, bgColor: Color.theme.bgGreen, image: "call", title: "Talk with us")
                            .padding(.top, 32)
                        
                        CustomButtonTwo(borderColor: Color.theme.borderBlue, bgColor: Color.theme.bgBlue, image: "faq", title: "Frequently Asked Questions")
                            .padding(.top)


                        Spacer()
                    }
                }
            }
            .onAppear {
                vm.updateGreetings()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Dashboard")
                        .font(.title2)
                        .fontWeight(.semibold)
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    NavBarButton()
                }
            }
            .toolbarBackground(Color.theme.accent, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .foregroundColor(.white)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            Home()
        }
    }
}

// MARK: Extension

extension Home {
    private func RoundedBackground() -> some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(maxHeight: .infinity)
                .ignoresSafeArea(edges: .bottom)
                .foregroundColor(Color.theme.bgWhite)
        }
    }

    // MARK: Greetings

    private func Greetings() -> some View {
        VStack(alignment: .leading) {
            Text(vm.greetingsMessage)
                .foregroundColor(.gray)

            Text("Prashanna 👋")
                .font(.title2)
                .foregroundColor(.black)
                .fontWeight(.semibold)
                .padding(.top, 3)
        }
        .padding(.top, 20)
        .padding()
    }

    private func ChartView() -> some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(maxWidth: .infinity)
                .frame(height: 200)
                .padding()
        }
    }

    // MARK: Scroll Items

    private func ScrollItems() -> some View {
        VStack {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(vm.scrollItems) { items in
                        ScrollViewItem(item: items)
                    }
                }
            }
        }
    }

    // MARK: Analytics Button

    private func AnalyticsButton() -> some View {
        VStack {
            Button {
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 0.4)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .padding(.horizontal)
                    .foregroundColor(.gray)
                    .overlay {
                        HStack {
                            Image("upArrow")
                            Text("View Analytics")
                                .fontWeight(.semibold)
                        }.foregroundColor(.black)
                    }
            }
        }
    }
    
    //MARK: Links Tab
    private func LinksTab() -> some View{
        HStack {
            // Top Links
            Button {
            } label: {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 100, height: 35)
                    .foregroundColor(Color.theme.accent)
                    .overlay {
                        Text("Top Links")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
            }
            
            //recent links
            Button {
            } label: {
                Text("Recent Links")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }.foregroundColor(.gray)
            
            Spacer()
            
            //Search
            Button {
            } label: {
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.gray.opacity(0.1))
                    .frame(width: 35, height: 35)
                    .overlay(alignment: .center) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                    }
            }

            

        }.padding()
    }
    
    // MARK: Links Button

    private func ViewAllLinksButton() -> some View {
        VStack {
            Button {
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 0.4)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .padding(.horizontal)
                    .foregroundColor(.gray)
                    .overlay {
                        HStack {
                            Image("link")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                            Text("View all Links")
                                .fontWeight(.semibold)
                        }.foregroundColor(.black)
                    }
            }
        }
    }
    
    //MARK: Custom Buttons
    private func CustomButtonTwo(borderColor: Color, bgColor: Color, image: String, title: String) -> some View{
        VStack{
            Button {
                
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 2)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .padding(.horizontal)
                    .foregroundColor(borderColor)
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .padding(.horizontal)
                            .foregroundColor(bgColor)
                            .overlay{
                                HStack{
                                    Image(image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 30, height: 30)
                                        .padding(.leading,8)
                                    Text(title)
                                        .font(.headline)
                                        .foregroundColor(.black)
                                    Spacer()
                                }
                                .padding()
                            }
                    }
            }
        }
    }

    // MARK: NavBar Button

    private func NavBarButton() -> some View {
        HStack {
            Button {
            } label: {
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(Color.theme.blueBtn)
                    .frame(width: 35, height: 35)
                    .overlay(alignment: .center) {
                        Image(systemName: "hexagon")
                            .fontWeight(.semibold)
                            .overlay {
                                Image(systemName: "circle")
                                    .resizable()
                                    .frame(width: 10, height: 10)
                                    .bold()
                            }.foregroundColor(.white)
                    }
            }
        }
    }
}
