import Foundation
//შექმენით ენამი Gender სადაც იქნება 2 გენდერი (გენდერზე არ გამომეკიდოთ, თუ გინდათ მეტი ჩაამატეთ)

enum Gender {
    case male, female
}

//შექმენით Protocol სახელად SuperBeing. გაუწერეთ მას ფროფერთები - name: String, strength: Int, speed: Int, weakness: String, gender: Gender

protocol SuperBeing {
    var name: String { get }
    var strength: Int { get  }
    var speed: Int { get }
    var weakness: String { get  }
    var gender: Gender { get }
    
}



//SuperBeing-ის strength-სა და speed-ს მიეცით default მნიშვნელობა

extension SuperBeing {
    var strength: Int {
        50
    }
    
    var speed: Int {
        80
    }
}

//შექმენით კლასები Superhero და SuperVillain, დაუქონფორმეთ SuperBeing-ს.
//გაუწერეთ Superhero კლასს მეთოდი - rescue, რომელიც პარამეტრად მიიღებს დაზარალებულის სახელს და დაბეჭდავს -
//“‘სუპერგმირის სახელი’ არ შეუშინდა სახიფათო სიტუაციას და ‘დაზარალებულის სახელი’ გადაარჩინა სიკვდილს” (მაგ: “ბეტმენი” არ შეუშინდა სახიფათო სიტუაციას და “გელა” გადაარჩინა სიკვდილს).

//გაუწერეთ Superhero კლასს მეთოდი - combat, რომელიც პარამეტრად მიიღებს Supervillain-ს და დაბეჭდავს -
//“‘სუპერგმირის სახელი’ შეერკინა და დაამარცხა ‘ბოროტმოქმედის სახელი’” (მაგ: “ბეტმენი” შეერკინა და დაამარცხა “ჯოკერი”)

class Superhero: SuperBeing {
    var speed: Int
    var name: String
    var weakness: String
    var gender: Gender
    var outfitColor: String
    var equipment: String
    var vehicle: String
    
    init(speed: Int, name: String, weakness: String, gender: Gender, outfitColor: String, equipment: String, vehicle: String) {
        self.speed = speed
        self.name = name
        self.weakness = weakness
        self.gender = gender
        self.outfitColor = outfitColor
        self.equipment = equipment
        self.vehicle = vehicle
    }
    
    func rescue(humanToRescue: String) -> String {
        return "\(name) არ შეუშინდა სახიფათო სიტუაციას და \(humanToRescue) გადაარჩინა სიკვდილს"
    }
    
    func combat(villain: SuperVillain) -> String {
        return "\(name) შეერკინა და დაამარცხა \(villain.name)"
    }
    
    
    
    
}

//გაუწერეთ SuperVillain კლასს დამატებითი პარამეტრები evilScheme: String, obsession: String, rivalry: String
//
//გაუწერეთ SuperVillain კლასს მეთოდი - attack - რომელიც პარამეტრად მიიღებს Superhero-ს და დაბეჭდავს -
//“ბოროტმ. სახელი” გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა “სუპერგმირის სახელი” მის შეჩერებას თუ შეძლებს” (მაგ: “ჯოკერი” გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა “ბეტმენი” მის შეჩერებას თუ შეძლებს)
//გაუწერეთ SuperVillain კლასს მეთოდი experimentation - რომელიც პარამეტრად მიიღებს სტრინგს (subject) და დაბეჭდავს -
//'ბოროტმოქმედის სახელი’ ექსპერიმენტებს ატარებს დაუცველ მოქალაქე/*ბზე, მისი მსხვერპლი ამჟამად ‘მსხვერპლის სახელი’ აღმოჩნდა” (მაგ: “ჯოკერი” ექსპერიმენტებს ატარებს დაუცველ მოქალაქებზე, მისი მსხვერპლი ამჟამად “გელა” აღმოჩნდა)*/

class SuperVillain: SuperBeing {
    var speed: Int
    var name: String
    var weakness: String
    var gender: Gender
    var evilScheme: String
    var obsession: String
    var rivalry: String
    
    init(speed: Int, name: String, weakness: String, gender: Gender, evilScheme: String, obsession: String, rivalry: String) {
        self.speed = speed
        self.name = name
        self.weakness = weakness
        self.gender = gender
        self.evilScheme = evilScheme
        self.obsession = obsession
        self.rivalry = rivalry
    }
    
    func attack(superHero: Superhero) -> String {
        return "\(name) გეგმავს თავდასხმას და მთელი ქალაქის მიწასთან გასწორებას, საეჭვოა “\(superHero.name)” მის შეჩერებას თუ შეძლებს”"
    }
    
    func experimentation(citizen: String) -> String {
        return "\(name) ექსპერიმენტებს ატარებს დაუცველ მოქალაქე/*ბზე, მისი მსხვერპლი ამჟამად \(citizen) აღმოჩნდა"
    }
    
}


//შექმენით მინიმუმ 5-5 ობიექტი თითოეული SuperBeing-ის დაქონფირმებული კლასებიდან

var hero1 = Superhero(speed: 20, name: "Anthony kiedis", weakness: "None", gender: .male, outfitColor: "blue", equipment: "hammer", vehicle: "car")
var hero2 = Superhero(speed: 20, name: "iron man", weakness: "None", gender: Gender.male, outfitColor: "red", equipment: "suit", vehicle: "car")
var hero3 = Superhero(speed: 30, name: "Spidyyy", weakness: "None", gender: Gender.male, outfitColor: "red", equipment: "suit", vehicle: "bicycle")
var hero4 = Superhero(speed: 40, name: "wonder woman", weakness: "None", gender: Gender.female, outfitColor: "gold", equipment: "idk", vehicle: "Agar maxsovs")
var hero5 = Superhero(speed: 50, name: "Superhero5", weakness: "None", gender: Gender.female, outfitColor: "Yellow", equipment: "shield", vehicle: "car")


var villain1 = SuperVillain(speed: 11, name: "Thanos", weakness: "none", gender: Gender.male, evilScheme: "მოსახლეობის განახევრება", obsession: "rings", rivalry: hero1.name)
var villain2 = SuperVillain(speed: 12, name: "Villain2", weakness: "Love", gender: Gender.male, evilScheme: "Kill 'em all", obsession: "obsession2", rivalry: hero2.name)
var villain3 = SuperVillain(speed: 13, name: "Villain3", weakness: "her wife", gender: Gender.male, evilScheme: "Ride the lightning", obsession: "obsession3",  rivalry:hero3.name)
var villain4 = SuperVillain(speed: 14, name: "James Hetfield", weakness: "Alcohol", gender: Gender.male, evilScheme: "Justice for all", obsession: "Master of puppets", rivalry: hero4.name)
var villain5 = SuperVillain(speed: 15, name: "Kirk Hammet", weakness: "None", gender: Gender.male, evilScheme: "Reload", obsession: "Guitars", rivalry: hero5.name)

//დაწერეთ ჯენერიკ ფუნქცია compareSwiftness რომელიც იღებს მხოლოდ ორ პარამეტრს პირველ და მეორე სუპერგმირებს რომლებიც დაქვემდებარებულები იქნებიან SuperBeing პროტოკოლზე, ფუნქცია უნდა აბრუნებდეს სტრინგს
//ფუნქციის ბადიში შეამოწმეთ speed მნიშვნელობები ორივე სუპერგმირის
//დააბრუნეთ სტრინგი აღწერით თუ რომელი სუპერგმირია უფრო სწრაფი (გაითვალისწინეთ ისიც თუ სიჩქარეები ერთმანეთის ტოლია)

func compareSwiftness<T: SuperBeing>(hero1: T, hero2: T) -> String {
    var fastestHero: String
    
    if hero1.speed > hero2.speed {
        fastestHero = hero1.name
        print("\(fastestHero) is faster ")
    }
    else if hero2.speed > hero1.speed {
        fastestHero = hero2.name
        print("\(fastestHero) is faster ")
    }
    else {
        fastestHero = "None of them"
        print("\(hero1.name) & \(hero2.name) have equal speed")
    }
    
    
    return fastestHero
    
}


compareSwiftness(hero1: hero1, hero2: hero2)

