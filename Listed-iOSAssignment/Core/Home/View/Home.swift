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

                // foreground
                ZStack {
                    RoundedBackground()
                        .overlay(alignment: .leading) {
                            VStack(alignment: .leading) {
                                Greetings()

                                ChartView()

                                ScrollItems()

                                Spacer()
                            }
                        }
                }

            }.toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Dashboard")
                        .font(.title2)
                        .fontWeight(.semibold)
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    NavBarButton()
                }
            }
            .foregroundColor(.white)
            .onAppear {
                vm.updateGreetings()
            }
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
                .padding(.top, 20)
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

        }.padding(.top, 40)
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
