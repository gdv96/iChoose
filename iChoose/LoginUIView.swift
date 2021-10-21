//
//  LoginUIView.swift
//  iChoose
//
//  Created by devannogiovanni on 21/10/21.
//

import SwiftUI

struct LoginUIView: View {
    @State var username: String = ""
    @State var password: String = ""
    
    @ObservedObject private var appSetting = Settings.shared
    
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    
    @State var editingMode: Bool = false
    @State private var isShowingDetailView = false
    
    var body: some View {
        VStack {
            UserImage()
            WelcomeText()
            UsernameTextField(username: $username, editingMode: $editingMode)
            PasswordSecureField(password: $password)
            
           Text("Forgotten password?")
                .foregroundColor(.blue)
                .padding(.top, -12.0)
            
            if authenticationDidFail {
                Text("Information not correct. Try again.")
                    .offset(y: -10)
                    .foregroundColor(.red)
                
            }
            VStack {
                NavigationLink(destination: TabUIView(), isActive: $isShowingDetailView) { EmptyView() }
                Button(action: {
                    if self.username == appSetting.name && self.password == appSetting.password {
                        self.authenticationDidSucceed = true
                        self.authenticationDidFail = false
                        self.isShowingDetailView = true
                        appSetting.logOut = "false"
                    } else {
                        self.authenticationDidFail = true
                        self.isShowingDetailView = false
                    }
                }) {
                    Text("LOGIN")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .cornerRadius(15.0)
                        .padding()
                }
            }
            Text("Do not have an account?")
            NavigationLink(destination: RegistrationUIView()) {
                Text("Sign In!")
                    .foregroundColor(.blue)
            }
            Spacer()
            
        }.padding(25.0)
    }

}

struct LoginUIView_Previews: PreviewProvider {
    static var previews: some View {
        LoginUIView()
    }
}

struct WelcomeText : View {
    var body: some View {
        return Text("Welcome back!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 22.0)
    }
}

struct UserImage : View {
    var body: some View {
        return Image("Logo-pt")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(20)
            .frame(width: 200)
            .clipShape(Circle())
            .shadow(radius: 10)
            
    }
}

struct UsernameTextField : View {
    
    @Binding var username: String
    
    @Binding var editingMode: Bool
    
    var body: some View {
        return TextField("Username", text: $username, onEditingChanged: {edit in
            if edit == true
            {self.editingMode = true}
            else
            {self.editingMode = false}
        })
            .padding()
            .background(Color("lightGray"))
            .frame(width: 250.0, height: 50.0)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
        
    }
}

struct PasswordSecureField : View {
    
    @Binding var password: String
    
    var body: some View {
        return SecureField("Password", text: $password)
            .padding()
            .background(Color("lightGray"))
            .frame(width: 250.0, height: 50.0)
            .cornerRadius(5.0)
            .padding(.bottom, 20.0)
    }
}


