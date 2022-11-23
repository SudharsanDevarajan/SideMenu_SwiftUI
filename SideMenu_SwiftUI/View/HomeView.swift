//
//  SideMenuSwiftUI.swift
//  Created by Sudharsan on 22/11/22.

import SwiftUI

struct HomeView: View {
    
    @State var showMenu = false
    
    var body: some View {
        NavigationView {
            ZStack{
                if showMenu{
                    SideMenu(showMenu: $showMenu)
                }
                
                DashboardView()
                    .cornerRadius(showMenu ? 22 : 0)
                    .offset(x: showMenu ? 300 : 0,y: showMenu ? 42 : 0)
                    .scaleEffect(showMenu ? 0.8 : 1)
                    .toolbar{
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button {
                                withAnimation(.easeOut) {
                                    showMenu.toggle()
                                }
                            } label: {
                                Image(systemName: "line.3.horizontal")
                                    .foregroundColor(.black)
                                    .font(.system(size: 22,weight: .semibold))
                            }
                        }
                    }
                    .navigationTitle("Home")
            }
            .onAppear{
                showMenu = false
            }
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct DashboardView: View {
    var body: some View {
        ZStack{
            Color.white
            Text("Dashboard")
        }
    }
}
