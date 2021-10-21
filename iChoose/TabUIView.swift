//
//  TabUIView.swift
//  iChoose
//
//  Created by devannogiovanni on 21/10/21.
//

import SwiftUI

struct TabUIView: View {
    @ObservedObject private var appSetting = Settings.shared
    var body: some View {
        TabView {
            if((appSetting.username.isEmpty) && (appSetting.password.isEmpty)) || (appSetting.logOut.isEmpty) {
                HomeNotUserUIView()
                    .tabItem{
                        Image(systemName: "person")
                        Text("User")
                    }
            } else {
                HomeUserUIView()
                    .tabItem{
                        Image(systemName: "person")
                        Text("User")
                    }
            }
            PollsUIView()
                .tabItem{
                    Image("bottone1")
                        .renderingMode(.template)
                    Text("Polls")
                }
            
            NewsUIView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("News")
                }
        }
    }
}

struct TabUIView_Previews: PreviewProvider {
    static var previews: some View {
        TabUIView()
    }
}
