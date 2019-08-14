import Foundation

class Persoon {
    private var voornaam: String
    private var familienaam: String
    private var adres: Adres
    private var telefoonNummer: String
    private var coordinaten: Coordinaten
    private var foto: String
    
    public init(voornaam: String, familienaam: String, adres: Adres, telefoonNummer: String, coordinaten: Coordinaten, foto: String) {
        self.voornaam = voornaam
        self.familienaam = familienaam
        self.adres = adres
        self.telefoonNummer = telefoonNummer
        self.coordinaten = coordinaten
        self.foto = foto
    }
}

