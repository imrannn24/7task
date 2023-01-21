//
//  main.swift
//  7task
//
//  Created by imran on 20.01.2023.
//

import Foundation


var users:[String:String] = ["240604":"Imran","090205":"Meerim" ]

func login(){
    print("Введите имя пользователя:")
    let user = readLine()!
    print("Введите пароль:")
    var password = readLine()!
    while password.count < 6{
        print("Пароль должен содержать не менее 6 символов \nПовторите попытку:")
        password = readLine()!
    }
    for (pass, imya) in users{
        if user == imya{
            if password == pass{
                print("Вы успешно вошли")
            }else if password != pass{
                print("Неверный пароль")
                var popytki = 3
                while password != pass && popytki > 0{
                    print("Повторите попытку. Осталось попыток \(popytki)")
                    password = readLine()!
                    popytki -= 1
                }
                if password == pass{
                    print("Вы успешно вошли")
                }else{
                    print("У вас не осталось попыток")
                }
            }
            break
        }else{
            users.updateValue(password, forKey: user)
            print("Вы успешно зарегистрировались ваш UserName: \(user)")
            break
        }
    }
}
login()

