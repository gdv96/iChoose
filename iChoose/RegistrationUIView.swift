//
//  RegistrationUIView.swift
//  iChoose
//
//  Created by devannogiovanni on 21/10/21.
//

import SwiftUI
struct RegistrationUIView: View {
    
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var Username: String = ""
    @State var email: String = ""
    @State var password1: String = ""
    @State var confirmPassword2: String = ""
    
    @ObservedObject private var appSetting = Settings.shared
    
    @State var didntmatch: Bool = false
    @State var didmatch: Bool = false
    @State private var isShowingView = false
    
    var body: some View {
        VStack{
            Text("Sign In")
                .font(.title)
                .fontWeight(.heavy)
                .padding()
                
            
        TextField("First Name", text: $firstName)
                .padding()
                .background(Color("lightGray"))
                .frame(width: 250.0, height: 50.0)
                .cornerRadius(5.0)
                .padding(.bottom, 20.0)
        
    
        TextField("Last Name", text: $lastName)
                .padding()
                .background(Color("lightGray"))
                .frame(width: 250.0, height: 50.0)
                .cornerRadius(5.0)
                .padding(.bottom, 20.0)
        
        TextField("Username", text: $Username)
                .padding()
                .background(Color("lightGray"))
                .frame(width: 250.0, height: 50.0)
                .cornerRadius(5.0)
                .padding(.bottom, 20.0)
        
    
        TextField("E-mail", text: $email)
                .padding()
                .background(Color("lightGray"))
                .frame(width: 250.0, height: 50.0)
                .cornerRadius(5.0)
                .padding(.bottom, 20.0)
            
            PasswordSecureField1(password1: $password1)
            
            ConfimPasswordSecureField2(confirmPassword2: $confirmPassword2)
            
            
            if didntmatch {
                Text("Passwords do not match. Try again.")
                    .offset(y: -10)
                    .foregroundColor(.red)
            }
            
            VStack {
                NavigationLink(destination: TabUIView(), isActive: $isShowingView) { EmptyView() }
                Button(action: {
                    if  !self.firstName.isEmpty && !self.Username.isEmpty && !self.password1.isEmpty && !self.confirmPassword2.isEmpty && self.password1 == confirmPassword2 {
                        self.didmatch = true
                        self.didntmatch = false
                        self.isShowingView = true
                        appSetting.password = password1
                        appSetting.username = Username
                        appSetting.name = firstName
                        print(Settings.shared.Città)
                        print(Settings.shared.Provincia)
                        print(Settings.shared.name)
                        appSetting.logOut = "false"
                    } else {
                        self.didntmatch = true
                        self.isShowingView = false
                    }
                }) {
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .cornerRadius(15.0)
                        .padding()
                }
            }
            accediUIView()
        }.navigationBarHidden(true)
    }
}

struct RegistrationUIView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationUIView()
    }
}

struct PasswordSecureField1: View {
    
    @Binding var password1: String
    
    var body: some View {
        return SecureField("Password", text: $password1)
            .padding()
            .background(Color("lightGray"))
            .frame(width: 250.0, height: 50.0)
            .cornerRadius(5.0)
            .padding(.bottom, 20.0)
    }
}

struct ConfimPasswordSecureField2: View {
    
    @Binding var confirmPassword2: String
    
    var body: some View {
        return SecureField("Confirm Password", text: $confirmPassword2)
            .padding()
            .background(Color("lightGray"))
            .frame(width: 250.0, height: 50.0)
            .cornerRadius(5.0)
            .padding(.bottom, 20.0)
    }
}
struct accediUIView: View{
    var body: some View {
Text("Do you have an account?")
NavigationLink(destination: LoginUIView()) {
    Text("Log In!")
        .foregroundColor(.blue)
}
        Spacer()
    }
}
