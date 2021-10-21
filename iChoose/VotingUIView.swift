//
//  VotingUIView.swift
//  iChoose
//
//  Created by devannogiovanni on 21/10/21.
//

import SwiftUI

struct VotingUIView: View {
    @State private var isShowingBenvenutoView = false
    @Binding var isFirst: Bool
    var body: some View {
        
        VStack{
            Image("VOTE")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .frame(width: 200)
                .clipShape(Circle())
                .shadow(radius: 10)
                .offset(y: +53)
            
            
            Text("Share your thoughts by")
                .padding()
                .font(.headline)
                .offset(y: +45)
            
            Image("Voting")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .offset(y: +29)
                .padding()
                
            VStack{
                Text("Let the administrators know your opinion about city council proposals!")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .offset(y: +27)

                
                Spacer()
                Button(action: {
                    isFirst = false
                }) {
                    Text("Let's start!")
                        .font(.title2)
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.bottom, 90.0)
                    }
                
                }
                    
                Spacer()
        }.padding(.top, 59.0)
    }
}

/*struct VotingUIView_Previews: PreviewProvider {
    static var previews: some View {
        VotingUIView()
    }
}*/
