//
//  SideMenuSwiftUI.swift
//  Created by Sudharsan on 22/11/22.

import SwiftUI

struct SideMenuHeader: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        
        ZStack(alignment: .topTrailing) {
            
            Button {
                withAnimation {
                    showMenu.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .frame(width: 42, height: 42)
                    .padding(12)
            }
            
            
            VStack(alignment: .leading){
                Image("dp")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 62, height: 62)
                    .background(.gray)
                    .clipShape(Circle())
                
                Text("Sudharsan Devarajan")
                    .font(.system(size: 22, weight: .bold))
                
                Text("@DharshuIOS")
                    .font(.system(size: 16, weight: .none))
                
                
                HStack{
                    
                    Spacer()
                }
            }
            
            
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct SideMenuHeader_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeader(showMenu: .constant(false))
    }
}
