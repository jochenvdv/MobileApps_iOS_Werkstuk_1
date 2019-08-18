import Foundation

class Persoon {
    var voornaam: String
    var familienaam: String
    var adres: Adres
    var telefoonNummer: String
    var coordinaten: Coordinaten
    var foto: String
    
    init() {
        voornaam = ""
        familienaam = ""
        telefoonNummer = ""
        foto = "nobody"
        coordinaten = Coordinaten()
        adres = Adres()
    }

    init(voornaam: String, familienaam: String, adres: Adres, telefoonNummer: String, coordinaten: Coordinaten, foto: String) {
        self.voornaam = voornaam
        self.familienaam = familienaam
        self.adres = adres
        self.telefoonNummer = telefoonNummer
        self.coordinaten = coordinaten
        self.foto = foto
    }
}

