//
//  ContentView.swift
//  iChoose
//
//  Created by devannogiovanni on 21/10/21.
//

import SwiftUI

struct ContentView: View {
    @State var firstPage: Bool = true
    @State var firstPage1: Bool = true
    var body: some View {
        if (firstPage){
                TabView {
                    WelcomeUIView()
                    //page 1
                    ReadNewsUIView()
                    //page 2
                    ReportsUIView()
                    //page 3
                    VotingUIView(isFirst: $firstPage)
                    //page 4
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        } else if (firstPage1){
            
            BenvenutoUIView(isFirst1: $firstPage1)
            
        } else {
            TabUIView()
                
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
