//
//  WelcomeUIView.swift
//  iChoose
//
//  Created by devannogiovanni on 21/10/21.
//

import SwiftUI

struct WelcomeUIView: View {
    var body: some View {
        
        VStack{
            
            Image("Logo-pt")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .frame(width: 200)
                .clipShape(Circle())
                .shadow(radius: 10)
            
            
            Text("Welcome to")
                .padding(.top, 28.0)
                .font(.headline)
         
            Image("Logo Scrita")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .padding()
            
            VStack{
                Text("Be part of your city life, share your thoughts and be always up-to- ")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(25.0)
                Text("date directly from your iPhone!")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(-31.0)
                
                
                Spacer()
            }
        }.padding(.top, 93.0)
        
    }
}
struct WelcomeUIView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeUIView()
    }
}
