//
//  Person.swift
//  PersonListApp
//
//  Created by ddyack on 08.09.2020.
//  Copyright © 2020 ddyack. All rights reserved.
//

struct Person {
    let firstName: String
    let secondName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(secondName)"
    }
}

class DataManager {
    let firstNames: [String] = ["Bruce",
                                "john",
                                "Steven",
                                "Aaron",
                                "Tim",
                                "Allan",
                                "Sharon",
                                "Ted",
                                "Carl",
                                "Nicola"]
    
    let secondNames: [String] = ["Butler",
                                 "Smith",
                                 "Black",
                                 "Robertson",
                                 "Murphy",
                                 "Williams",
                                 "Isaacson",
                                 "Jankin",
                                 "Pennyworth",
                                 "Dow"]
    
    let phones: [String] = ["453454",
                            "312312",
                            "313143",
                            "545645",
                            "378427",
                            "534536",
                            "856324",
                            "745236",
                            "096353",
                            "127654"]
    
    let emails: [String] = ["aaa@mail.ru",
                            "abc@mail.ru",
                            "bbb@maiul.ru",
                            "123@mail.ru",
                            "ddd@mail.ru",
                            "ggg@yandex.ru",
                            "mail@mail.ru",
                            "yyy@gmail.com",
                            "sobaka@ya.ru",
                            "zbc@yandex.ru"]
}

extension Person {
    static func getPersonList() -> [Person] {
        let dataManager = DataManager()
        var persons: [Person] = []
        
        for _ in 1...dataManager.firstNames.count {
            persons.append(Person(firstName: dataManager.firstNames.randomElement() ?? "firstName",
                                  secondName: dataManager.secondNames.randomElement() ?? "secondName",
                                  phone: dataManager.phones.randomElement() ?? "123",
                                  email: dataManager.emails.randomElement() ?? "test@mail.ru"))
        }
        
        return persons
    }
}
