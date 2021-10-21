//
//  NewsMemory.swift
//  iChoose
//
//  Created by devannogiovanni on 21/10/21.
//

import Foundation

class NewsMemory: ObservableObject {
    static var shared2: NewsMemory = {
        let instance = NewsMemory()
        return instance
    }()
    
    var newsArray = [
        cardNews(title:"01/10/21", subTitle:"New tender on the way for the Epitaffio Bridge building works", author:"", imageName:"ponteepitaffio", testo: "The city council office for public works communicates that a tender is on the way to assign public building works to a construction company.Works will involve the new structure of the Epitaffio Bridge and they will last from four to five months."),
        cardNews(title: "20/07/2021", subTitle: "School Cafeteria Service 2021/22, subscriptions open from tomorrow", author: "", imageName: "mensa", testo:"Subscriptions for the School Cafeteria Service 2021/22 will be opened tomorrow. Rossella Del Prete - responsible for Education matters at the city council of Benevento - deliberated the fees relief measures for families. They will be able to get a 100% contribution if their annual family income is less than 21.000 euros, or a 70% contribution if their annual family income is more than 21.000 euros. Contribution will be available for residents only. Subscriptions can be made at this link."),
        cardNews(title: "19/07/21", subTitle: "Tricolor Goal the relay race promoted by Alex Zanardi, will stop in Benevento on 20th July.", author: "", imageName: "zanardi", testo: "“Tricolor Goal” will stop in Benevento on 20th July. It is a way to spread a message of hope all around Italy through a charity sport event. Over 70 Paralympic athletes will run across the Trajan Arch at 9:00 am and they will be welcomed by the Mayor of Benevento Clemente Mastella.")
        
    ]
    
}
