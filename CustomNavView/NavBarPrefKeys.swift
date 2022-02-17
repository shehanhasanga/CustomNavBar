//
//  NavBarPrefKeys.swift
//  CustomNavView
//
//  Created by shehan karunarathna on 2022-02-17.
//

import Foundation
import SwiftUI

struct CustomNavBarTitlePreferenceKeys:PreferenceKey{
    static var defaultValue: String = ""
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}

struct CustomNavBarSubTitlePreferenceKeys:PreferenceKey{
    static var defaultValue: String? = nil
    static func reduce(value: inout String?, nextValue: () -> String?) {
        value = nextValue()
    }
}


struct CustomNavBarBackButtonHiddenPreferenceKeys:PreferenceKey{
    static var defaultValue: Bool = false
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}


extension View {
    func customNavigationTitle(_ title:String) -> some View{
        self.preference(key: CustomNavBarTitlePreferenceKeys.self, value: title)
    }
    
    func customNavigationSubTitle(_ subTitle:String?) -> some View{
        self.preference(key: CustomNavBarSubTitlePreferenceKeys.self, value: subTitle)
    }
    
    func customNavigationBackButtonHidden(_ hidden:Bool) -> some View{
        self.preference(key: CustomNavBarBackButtonHiddenPreferenceKeys.self, value: hidden)
    }
    
    func customNavItems(title:String = "", subTitle:String? = nil, hidden:Bool = false) -> some View{
        self.customNavigationTitle(title)
        self.customNavigationSubTitle(subTitle)
        self.customNavigationBackButtonHidden(hidden)
       return  self
    }
}


extension UINavigationController{
    open override func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = nil
    }
}
