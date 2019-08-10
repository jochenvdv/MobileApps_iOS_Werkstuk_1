import Foundation

class Persoon {
    private var voornaam: String
    private var familienaam: String
    private var adres: Adres
    private var telefoonNummer: String
    private var locatie: Locatie
    private var fotoUrl: URL
    
    public init(voornaam: String, familienaam: String, adres: Adres, telefoonNummer: String, locatie: Locatie, fotoUrl: URL) {
        self.voornaam = voornaam
        self.familienaam = familienaam
        self.adres = adres
        self.telefoonNummer = telefoonNummer
        self.locatie = locatie
        self.fotoUrl = fotoUrl
    }
}

