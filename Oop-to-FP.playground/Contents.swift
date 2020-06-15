import UIKit

struct User {
    let id: Int
    let name: String
    let active: Bool
}

class UserDatabase {
    let users = [
        User(id: 1, name: "Bruce", active: false),
        User(id: 2, name: "Juan", active: true),
        User(id: 3, name: "Carlos", active: false),
        User(id: 4, name: "Jhon", active: true),
        User(id: 5, name: "Jose", active: false),
        User(id: 6, name: "Tomas", active: true),
        User(id: 7, name: "Gabriel", active: false),
        User(id: 8, name: "Bruce", active: false),
        User(id: 9, name: "Rachel", active: true),
        User(id: 10, name: "Shirley", active: false),
        User(id: 11, name: "Eric", active: true),
        User(id: 12, name: "Helen", active: false),
        User(id: 13, name: "Harold", active: true),
        User(id: 14, name: "Joyse", active: false)
    ]
    
    // print names of active user order by index    
    func getActiveUsers() -> [String] {
        return users.filter{
            user in user.active
        }.sorted(by: {(user1, user2) -> Bool in
            user1.id < user2.id})
            .map { user in
                user.name
        }
    }
}

let dataBase = UserDatabase()
print(dataBase.getActiveUsers())


