//
//  HomeNotUserUIView.swift
//  iChoose
//
//  Created by devannogiovanni on 21/10/21.
//

import SwiftUI

struct HomeNotUserUIView: View {
    @ObservedObject private var appSetting = Settings.shared
    var body: some View {
            VStack {
                Image("cucciolo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    .frame(width: 300)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .overlay(Circle().stroke(Color.blue, lineWidth: 2))
                    .shadow(radius: 8)
                    .padding()
                    
                
                Text("Hello, citizen!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Text("City Council of \(appSetting.Città)")
                    .fontWeight(.medium)
                    .padding(-19.0)
                
                Button(action: {}) {
                    HStack {
                        Text("Change yout city")
                            .multilineTextAlignment(.leading)
                        Image(systemName: "globe.europe.africa")
                    }
                }
                .frame(width: 200.0, height: 50.0)
                .foregroundColor(.black)
                .background(Color("lightGray"))
                .cornerRadius(.infinity)
                .padding()
                .offset(y: 7)
                
                
                Button(action: {openMailClient()}) {
                    HStack {
                        Text("Report")
                            .multilineTextAlignment(.leading)
                            .offset(x: -36, y: 0)
                        
                            
                            
                        Image(systemName: "message")
                           .offset(x: +38, y: 0)
                    }
                }
                .frame(width: 200.0, height: 50.0)
                .foregroundColor(.black)
                .background(Color("lightGray"))
                .cornerRadius(.infinity)
                .padding()
                
                
                
                
                NavigationLink(destination: RegistrationUIView()){
                    
                    HStack {
                        Text("Sign In")
                            .offset(x: -36, y: 0)
                        Image(systemName: "pencil")
                            .offset(x: +38, y: 0)
                        
                    }
                    .frame(width: 200.0, height: 50.0)
                    .foregroundColor(.black)
                    .background(Color("lightGray"))
                    .cornerRadius(.infinity)
                    .padding()
                }
                
                NavigationLink(destination: LoginUIView()){
                        HStack {
                            Text("Login")
                                .offset(x: -36, y: 0)
                            Image(systemName: "figure.walk")
                                .offset(x: +38, y: 0)
                            
                        }.foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .frame(width: 200.0, height: 50.0)
                        .background(Color("lightGray"))
                        .cornerRadius(.infinity)
                        .padding()
                }
                Spacer()
            }
    }
}

struct HomeNotUserUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeNotUserUIView()
    }
}

private func openMailClient() {
    let mailtoString = "mailto:segreteria@comune.benevento.it".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
    let mailtoUrl = URL(string: mailtoString!)!
    if UIApplication.shared.canOpenURL(mailtoUrl) {
            UIApplication.shared.open(mailtoUrl, options: [:])
    }
}
