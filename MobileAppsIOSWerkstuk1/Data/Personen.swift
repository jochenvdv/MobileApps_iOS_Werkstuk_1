import Foundation

class Personen {
    static var lijst = PersonenFactory.maakPersonen()
    
    static func voegPersoonToe(persoon: Persoon) {
        lijst.append(persoon)
    }
    
    static func verwijderPersoon(persoon: Persoon) {
        lijst = lijst.filter({ $0 !== persoon })
    }
}
