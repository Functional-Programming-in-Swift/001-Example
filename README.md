Before Imperative way

```
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
 
    // print active user order by index
    var userNames = [String]()
    
    func getActiveUsers()  {
        var activeUsers = [User]()
        
        users.forEach { (user) in
            if (user.active) {
                activeUsers.append(user)
            }
        }
        
        activeUsers.sort { (user1, user2) -> Bool in
            user1.id < user2.id
        }
        
        userNames.removeAll()
        activeUsers.forEach { (user) in
            userNames.append(user.name)
        }
        
    }
    

    
}

let dataBase = UserDatabase()
dataBase.getActiveUsers()
print(dataBase.userNames)
```

After - Declarative way - with functional programming - stateless

```
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
            $0.active
        }.sorted(by: {
            $0.id < $1.id})
            .map {
                $0.name
        }
    }
}

let dataBase = UserDatabase()
print(dataBase.getActiveUsers())

```