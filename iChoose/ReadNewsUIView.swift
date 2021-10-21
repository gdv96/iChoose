//
//  ReadNewsUIView.swift
//  iChoose
//
//  Created by devannogiovanni on 21/10/21.
//

import SwiftUI

struct ReadNewsUIView: View {
    var body: some View {
        VStack{
            Image("Icon-News")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .frame(width: 200)
                .clipShape(Circle())
                .shadow(radius: 10)
                .offset(y: +7)
            
            Text("Read the")
                .padding(.top, 28.0)
                .font(.headline)
            
            Image("News-con-spazi")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .padding(.vertical, -42.0)
               
            VStack{
                Text("Keep yourself updated with the customised live city news feed!")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
            }
        }.padding(.top, 93.0)
    }
}


struct ReadNewsUIView_Previews: PreviewProvider {
    static var previews: some View {
        ReadNewsUIView()
    }
}
