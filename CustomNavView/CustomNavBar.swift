//
//  CustomNavBar.swift
//  CustomNavView
//
//  Created by shehan karunarathna on 2022-02-17.
//

import SwiftUI

struct CustomNavBar: View {
    @Environment(\.presentationMode) var presentationMode
    let showBackButton:Bool
    let title:String
    let subTitle:String?
    var body: some View {
        HStack{
            if showBackButton {
                backbutton
            }
           
            
            Spacer()
            titleSection
            Spacer()
            if showBackButton {
                backbutton
                .opacity(0)
            }
           
        }
        .padding()
        .font(.headline)
        .accentColor(.white)
        .foregroundColor(.white)
        .background(Color.blue.ignoresSafeArea( edges: .top))
    }
}
//
//struct CustomNavBar_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomNavBar()
//    }
//}

extension CustomNavBar{
    var backbutton : some View{
        Button{
            presentationMode.wrappedValue.dismiss()
        }label: {
            Image(systemName: "chevron.left")
        }
    }
    
    var titleSection : some View{
        VStack(spacing:4){
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
            if let subtitle = subTitle {
                Text(subtitle)
            }
           
        }
    }
}
