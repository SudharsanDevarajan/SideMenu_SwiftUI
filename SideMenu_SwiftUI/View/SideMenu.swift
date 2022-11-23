//
//  SideMenuSwiftUI.swift
//  Created by Sudharsan on 22/11/22.

import SwiftUI

struct SideMenu: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.red,Color.black.opacity(0.9)], startPoint: .top, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack(alignment: .leading){
                SideMenuHeader(showMenu: $showMenu)
                    .padding(.bottom)
                
                ForEach(SideMenuViewModel.allCases,id: \.self){ option in
                    NavigationLink {
                        Text("Welcome \(option.menuTitle)")
                    } label: {
                        SideMenuOption(viewModel: option)
                    }
                }
                
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenu(showMenu: .constant(false))
    }
}
