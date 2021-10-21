//
//  HomeUserUIView.swift
//  iChoose
//
//  Created by devannogiovanni on 21/10/21.
//

import SwiftUI

struct HomeUserUIView: View {
    @ObservedObject private var appSetting = Settings.shared
    @State private var showingAlert = false
    var body: some View {
        //NavigationView{
            VStack {
                Image("domenico")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    .frame(width: 300)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .overlay(Circle().stroke(Color.blue, lineWidth: 2))
                    .shadow(radius: 8)
                    .padding()
                
                
                Text("Hello, \(appSetting.name)!")
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
                
            
            alertView()
            Spacer()
            }
    }
}
//}

struct HomeUserUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeUserUIView()
    }
}

struct alertView: View {
    @State var showDetail: Bool = false
    @State private var displayPopupMessage: Bool = false
    //@State var logOut: Bool = false
    @ObservedObject private var appSetting = Settings.shared
    
    var body: some View {
        VStack {
            NavigationLink(destination: TabUIView(), isActive: self.$showDetail) { EmptyView() }
            Button(action: {
               // self.logOut = true
                self.displayPopupMessage = true
            } )
            {
                Text("Log Out")
                    .offset(x: -36, y: 0)
                Image(systemName: "rectangle.portrait.and.arrow.right")
                    .offset(x: +38, y: 0)
            }
        }
        .alert(isPresented: $displayPopupMessage){
            Alert(title: Text("Are you sure you want to exit?"), message: Text("You will need to sign in again to access your feed"), primaryButton: .destructive(Text("Yes"), action: {
                appSetting.logOut = ""
                self.showDetail = true
            }), secondaryButton: .default(Text("No"), action: {
                appSetting.logOut = "false"
            })
          
            )
        }
        .frame(width: 200.0, height: 50.0)
        .foregroundColor(.black)
        .multilineTextAlignment(.center)
        .background(Color("lightRed"))
        .cornerRadius(.infinity)
        .padding()
    }
}

     private func openMailClient() {
    let mailtoString = "mailto:segreteria@comune.benevento.it".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
    let mailtoUrl = URL(string: mailtoString!)!
    if UIApplication.shared.canOpenURL(mailtoUrl) {
            UIApplication.shared.open(mailtoUrl, options: [:])
    }
}
