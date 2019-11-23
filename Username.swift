struct User{
    var name: String
    var surname: String
    init (name: String, surname: String){
        self.name = name
        self.surname = surname
    }
    func printname() -> String {
        return "Name:\(self.name) Surname:\(self.surname)"
    }
    mutating func changename(a: String, b: String){
        self.name=a
        self.surname=b
    }
}
var jack = User(name: "Jack", surname: "London")
jack.name //"Jack"
jack.surname //"London"
print(jack.printname())
jack.changename(a: "Dima", b: "Razvarin")
print(jack.printname())
