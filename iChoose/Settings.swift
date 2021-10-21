//
//  Settings.swift
//  iChoose
//
//  Created by devannogiovanni on 21/10/21.
//

import Foundation

class Settings: ObservableObject {
    static var shared: Settings = {
        let instance = Settings()
        return instance
    }()
    
    @Published var logOut: String = ""
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var name: String = ""
    @Published var Città: String = ""
    @Published var Provincia: String = ""
    
}
