//
//  CustomNavBarContainer.swift
//  CustomNavView
//
//  Created by shehan karunarathna on 2022-02-17.
//

import SwiftUI

struct CustomNavBarContainer<Content:View>:View {
    let content : Content
    @State var showBackButton:Bool = true
    @State var title:String = "Title"
    @State var subTitle:String? = "Sub Title"
    init( @ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        VStack( spacing:0){
            CustomNavBar(showBackButton: showBackButton, title: title, subTitle: subTitle)
            content
                .frame(maxWidth:.infinity, maxHeight: .infinity)
        }
        .onPreferenceChange(CustomNavBarTitlePreferenceKeys.self) { val in
            self.title = val
        }
        .onPreferenceChange(CustomNavBarSubTitlePreferenceKeys.self) { val in
            self.subTitle = val
        }
        .onPreferenceChange(CustomNavBarBackButtonHiddenPreferenceKeys.self) { val in
            self.showBackButton = !val
        }
    }
}

struct CustomNavBarContainer_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


