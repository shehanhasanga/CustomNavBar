//
//  CustomNavLink.swift
//  CustomNavView
//
//  Created by shehan karunarathna on 2022-02-17.
//

import SwiftUI

struct CustomNavLink<Label:View, Destination:View>: View {
    
    let destination:Destination
    let label:Label
    init(destination:Destination, @ViewBuilder label: () -> Label){
        self.destination = destination
        self.label = label()
        
    }
    var body: some View {
        NavigationLink {
            CustomNavBarContainer {
                destination
            }
            .navigationBarHidden(true)
           
        } label: {
            label
        }

    }
}

//struct CustomNavLink_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomNavLink()
//    }
//}
