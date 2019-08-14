import Foundation

class Personen {
    private var lijst: [Persoon]
 
    init(){
        self.lijst = [Persoon]()
        
        // Jelle
        let adresJelle = Adres(straat: "Melkweg", huisnummer: "200", postcode: "2050", plaats: "Antwerpen")
        let coordinatenJelle = Coordinaten(breedtegraad: 51.054893, lengtegraad: 3.721990)
        let persoonJelle = Persoon(voornaam: "Jelle", familienaam: "De Snelle", adres: adresJelle, telefoonNummer: "0486652781", coordinaten: coordinatenJelle, foto: "jelle")
        self.lijst.append(persoonJelle)

        // Kevin
        let adresKevin = Adres(straat: "Stationstraat", huisnummer: "27", postcode: "3000", plaats: "Leuven")
        let coordinatenKevin = Coordinaten(breedtegraad: 51.054893, lengtegraad: 3.721990)
        let persoonKevin = Persoon(voornaam: "Kevin", familienaam: "Kevermans", adres: adresKevin, telefoonNummer: "0474952364", coordinaten: coordinatenKevin, foto: "kevin")
        self.lijst.append(persoonKevin)
        
        // Mike
        let adresMike = Adres(straat: "Rue Prins Laurent", huisnummer: "1065", postcode: "1000", plaats: "Brussel")
        let coordinatenMike = Coordinaten(breedtegraad: 51.054893, lengtegraad: 3.721990)
        let persoonMike = Persoon(voornaam: "Mike", familienaam: "De Macho", adres: adresMike, telefoonNummer: "0463285179", coordinaten: coordinatenMike, foto: "mike")
        self.lijst.append(persoonMike)
        
        // Jochen
        let adresJochen = Adres(straat: "Grote Markt", huisnummer: "142", postcode: "9100", plaats: "Sint-Niklaas")
        let coordinatenJochen = Coordinaten(breedtegraad: 51.054893, lengtegraad: 3.721990)
        let persoonJochen = Persoon(voornaam: "Jochen", familienaam: "Oneindigverenverder", adres: adresJochen, telefoonNummer: "0458921136", coordinaten: coordinatenJochen, foto: "jochen")
        self.lijst.append(persoonJochen)
        
    }}
