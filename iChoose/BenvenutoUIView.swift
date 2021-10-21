//
//  BenvenutoUIView.swift
//  iChoose
//
//  Created by devannogiovanni on 21/10/21.
//

import SwiftUI

struct BenvenutoUIView: View {
    @State var Provincia: String = ""
    @State var Città: String = ""
    @ObservedObject private var appSetting = Settings.shared
    @Binding var isFirst1: Bool
    
    @State var didntmatchBenvenuto: Bool = false
    @State var didmatchBenvenuto: Bool = false
   // @State private var isShowingBenvenutoView = false
    
    @State private var showingSheet = false
    var body: some View {
      //  NavigationView{
        VStack{
           
            Image("Logo-pt")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .frame(width: 200)
                .clipShape(Circle())
                .shadow(radius: 10)
                .offset(y: +35)
            
            Image("Logo Scrita")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                .offset(y: +20)
                .padding()
            
            VStack{
                Text("In order to improve your")
                    .font(.title2)
                    .lineLimit(5)
                    .multilineTextAlignment(.center)
                    .padding(.top, 20.0)
                    .padding(.horizontal, 26.0)
                   
                
                Text("experience, please insert ")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(.top, -13.0)
                    .padding(.horizontal, 26.0)
                
                Text("your city name")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding(.top, -11.0)
                    .padding(.horizontal, 26.0)
                
                TextField("District", text: $Provincia)
                    .padding()
                    .background(Color("lightGray"))
                    .frame(width: 250.0, height: 50.0)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20.0)
                
                
                TextField("City", text: $Città)
                    .padding()
                    .background(Color("lightGray"))
                    .frame(width: 250.0, height: 50.0)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20.0)
                
                if didntmatchBenvenuto {
                    Text("Please fill all fields in order to procede.")
                        .foregroundColor(.red)
                }
                
                VStack {
                 //   NavigationLink(destination: PollsUIView(), isActive: $isShowingBenvenutoView) { EmptyView() }
                    Button(action: {
                        if  !self.Provincia.isEmpty && !self.Città.isEmpty {
                            self.didmatchBenvenuto = true
                            self.didntmatchBenvenuto = false
//                            self.isShowingBenvenutoView = true
                            appSetting.Città = Città
                            appSetting.Città = Provincia
                            print(Settings.shared.Città)
                            print(Settings.shared.Provincia)
                            isFirst1 = false
                        } else {
                            self.didntmatchBenvenuto = true
                          //  self.isShowingBenvenutoView = false
                        }
                    }) {
                Text("Continue")
                        .font(.title2)
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50.0)
                        .background(.blue)
                        .cornerRadius(10)
                        .padding()
                    
                }
                
                Button(action: {showingSheet.toggle()}) {
                    
                    Text("Privacy Policy")
                        .font(.title2)
                        .foregroundColor(.blue)
                        
                }.offset(y: -20)
                        .sheet(isPresented: $showingSheet) {
                        SheetView()
                            
                }
                Spacer()
             //   }
            }
        }
    }
}
}
struct SheetView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack{
            
        Button("X") {
            dismiss()
        }
        .font(.body)
        .padding()
        .overlay(Circle().stroke(Color.gray, lineWidth: 2))
        .offset(x: 140, y: -90)
            
            Text("iChoose Privacy Policy")
                .font(.title)
                .fontWeight(.heavy)
                .padding(.top, -80.0)
            
        Text("All the information inserted are exclusively collected to improve the app experience - they will not be shared with any third parties. Personal data are stored and traited respecting rules according the Article n. 5 of European Union Law n. 2016/679.                                    Data are exclusively traited according to this law and for a limited period of time, as it is said in the privacy laws.")
                .font(.title2)
                .multilineTextAlignment(.leading)
                .padding()
                
}
    }
}
/*struct BenvenutoUIView_Previews: PreviewProvider {
    static var previews: some View {
        BenvenutoUIView()
    }
}*/
