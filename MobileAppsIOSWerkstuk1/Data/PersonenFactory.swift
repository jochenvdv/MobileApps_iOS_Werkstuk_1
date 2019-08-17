import Foundation

class PersonenFactory {
    static func maakPersonen() -> [Persoon] {
        var personen = [Persoon]()
        
        // Jelle
        let adresJelle = Adres(straat: "Melkweg", huisnummer: "200", postcode: "2050", plaats: "Antwerpen")
        let coordinatenJelle = Coordinaten(breedtegraad: 51.221306, lengtegraad: 4.382162)
        let persoonJelle = Persoon(voornaam: "Jelle", familienaam: "De Snelle", adres: adresJelle, telefoonNummer: "0486652781", coordinaten: coordinatenJelle, foto: "first")
        personen.append(persoonJelle)
        
        // Kevin
        let adresKevin = Adres(straat: "Stationstraat", huisnummer: "27", postcode: "3000", plaats: "Leuven")
        let coordinatenKevin = Coordinaten(breedtegraad: 50.881300, lengtegraad: 4.715475)
        let persoonKevin = Persoon(voornaam: "Kevin", familienaam: "Kevermans", adres: adresKevin, telefoonNummer: "0474952364", coordinaten: coordinatenKevin, foto: "second")
        personen.append(persoonKevin)
        
        // Mike
        let adresMike = Adres(straat: "Rue Prins Laurent", huisnummer: "1065", postcode: "1000", plaats: "Brussel")
        let coordinatenMike = Coordinaten(breedtegraad: 50.846837, lengtegraad: 4.354306)
        let persoonMike = Persoon(voornaam: "Mike", familienaam: "De Macho", adres: adresMike, telefoonNummer: "0463285179", coordinaten: coordinatenMike, foto: "second")
        personen.append(persoonMike)
        
        // Jochen
        let adresJochen = Adres(straat: "Grote Markt", huisnummer: "142", postcode: "9100", plaats: "Sint-Niklaas")
        let coordinatenJochen = Coordinaten(breedtegraad: 51.164327, lengtegraad: 4.139067)
        let persoonJochen = Persoon(voornaam: "Jochen", familienaam: "Oneindigverenverder", adres: adresJochen, telefoonNummer: "0458921136", coordinaten: coordinatenJochen, foto: "first")
        personen.append(persoonJochen)
        
        return personen
    }
}

