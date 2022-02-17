//
//  ContentView.swift
//  CustomNavView
//
//  Created by shehan karunarathna on 2022-02-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CustomNavView {
            ZStack {
                Color.orange.ignoresSafeArea()
                CustomNavLink(
                    destination:
                        Text("Destination")
                        .customNavigationTitle("second title")
                        .customNavigationSubTitle("sub title")
                    
                
                ) {
                    
                    Text("Link")
                }
                .customNavigationTitle("Custom title")
                .customNavigationBackButtonHidden(true)
                
//                NavigationLink {
//                    Text("Destination")
//                } label: {
//                    Text("Link")
//                }

            }
        }
        
//        NavigationView {
//            CustomNavBarContainer {
//                ZStack {
//                    Color.orange.ignoresSafeArea()
//                    NavigationLink {
//                        Text("Destination")
//                    } label: {
//                        Text("Link")
//                    }
//
//                }
//            }
//            .navigationBarHidden(true)
//        }
       
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView{
    var defaultVal : some View{
        NavigationView{
            ZStack{
                Color.green.ignoresSafeArea()
                NavigationLink {
                    Text("destination")
                        .navigationTitle("nav two")
                        .navigationBarBackButtonHidden(false)
                } label: {
                    Text("Navigate")
                }

            }
            .navigationTitle("nav title")
        }
    }
}
