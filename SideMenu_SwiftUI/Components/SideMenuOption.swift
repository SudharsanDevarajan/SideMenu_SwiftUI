//
//  SideMenuSwiftUI.swift
//  Created by Sudharsan on 22/11/22.


import SwiftUI
struct SideMenuOption: View {
    
    var viewModel: SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 12){
            Image(systemName: viewModel.menuImage)
                .frame(width: 24, height: 24)
                .foregroundColor(.white)
            
            Text(viewModel.menuTitle)
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(.white)
            
            Spacer()
        }
        .padding()
    }
}

struct SideMenuOption_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOption(viewModel: .message)
    }
}
