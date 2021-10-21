//
//  ReportsUIView.swift
//  iChoose
//
//  Created by devannogiovanni on 21/10/21.
//

import SwiftUI

struct ReportsUIView: View {
    var body: some View {
        VStack{
            Image("Report")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .frame(width: 200)
                .clipShape(Circle())
                .shadow(radius: 10)
                .offset(y: +20)
            
            
            Text("Make your own")
                .padding(.top, 28.0)
                .font(.headline)
            
            Image("Reports")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .offset(y: +5)
                .padding()
                
            
            
            VStack{
                Text("Directly report issues noticed in your city area to the city council!")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .offset(y: -8)
                    .padding()
                Spacer()
            }
        }.padding(.top, 93.0)
    }
}}

struct ReportsUIView_Previews: PreviewProvider {
    static var previews: some View {
        ReportsUIView()
    }
}
