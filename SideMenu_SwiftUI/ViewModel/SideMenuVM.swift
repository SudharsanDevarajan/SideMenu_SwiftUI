//
//  SideMenuVM.swift
//  SideMenu_SwiftUI
//
//  Created by htcuser on 23/11/22.
//

import SwiftUI

enum SideMenuViewModel: Int,CaseIterable{
    case profile
    case message
    case notification
    case bookmarks
    case logout
    
    
    var menuTitle: String{
        switch self{
        case .profile:
            return "Profile"
        case .message:
            return "Messages"
        case .notification:
            return "Notifications"
        case .bookmarks:
            return "Bookmarks"
        case .logout:
            return "Logout"
        }
    }
    
    var menuImage: String{
        switch self{
        case .profile:
            return "person"
        case .message:
            return "bubble.left"
        case .notification:
            return "bell"
        case .bookmarks:
            return "bookmark"
        case .logout:
            return "arrow.left.square"
        }
    }
}
