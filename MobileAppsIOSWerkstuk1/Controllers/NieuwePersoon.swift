
import Foundation
import UIKit
import MapKit

class NieuwePersoon: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
            case 0:
                return 3
            case 1:
                return 4
            case 2:
                return 2
            default:
                return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let persoonCel = tableView.dequeueReusableCell(withIdentifier: "NieuwePersoonCel", for: indexPath) as! FormulierCel
        
        switch (indexPath.section, indexPath.row) {
            
        // Algemeen
        case (0, 0):
            persoonCel.textLabel!.text = "Voornaam"
        case (0, 1):
            persoonCel.textLabel!.text = "Familienaam"
        case (0, 2):
            persoonCel.textLabel!.text = "Telefoonnummer"
            
        // Adres
        case (1, 0):
            persoonCel.textLabel!.text = "Straat"
        case (1, 1):
            persoonCel.textLabel!.text = "Huisnummer"
        case (1, 2):
            persoonCel.textLabel!.text = "Postcode"
        case (1, 3):
            persoonCel.textLabel!.text = "Plaats"
            
        // Algemeen
        case (2, 0):
            persoonCel.textLabel!.text = "Breedtegraad"
        case (2, 1):
            persoonCel.textLabel!.text = "Lengtegraad"
            
        default:
            print("shouldn't happen")
        }
        
        return persoonCel
    }
    
    @IBAction func opslaan(_ sender: Any) {
        let cellen = table.visibleCells as! Array<FormulierCel>
        let persoon = Persoon()
        
        for cel in cellen {
            let veld = cel.textLabel!.text!
            let waarde = cel.textField!.text!
            
            if waarde == "" {
                let alert = UIAlertController(title: "Ongeldige invoer", message: "Je hebt ongeldige waarden ingevuld, kijk ze even na", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                
                self.present(alert, animated: true, completion: nil)
                break
            }
            
            switch veld {
            case "Voornaam":
                persoon.voornaam = waarde
            case "Familienaam":
                persoon.familienaam = waarde
            case "Telefoonnummer":
                persoon.telefoonNummer = waarde
            case "Straat":
                persoon.adres.straat = waarde
            case "Huisnummer":
                persoon.adres.huisnummer = waarde
            case "Postcode":
                persoon.adres.postcode = waarde
            case "Plaats":
                persoon.adres.plaats = waarde
            case "Breedtegraad":
                persoon.coordinaten.breedtegraad = Double(waarde)!
            case "Lengtegraad":
                persoon.coordinaten.lengtegraad = Double(waarde)!
            default:
                print("unexpected field", waarde)
            }
        }
        
        Personen.voegPersoonToe(persoon: persoon)
        self.navigationController?.popToRootViewController(animated: true)
    }
}
