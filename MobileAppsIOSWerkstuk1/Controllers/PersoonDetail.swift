import Foundation
import UIKit
import MapKit

class PersoonDetail: UIViewController, MKMapViewDelegate {
    var persoon: Persoon?
    
    @IBOutlet weak var fotoImage: UIImageView!
    @IBOutlet weak var naam: UILabel!
    @IBOutlet weak var adres: UILabel!
    @IBOutlet weak var telefoonNummer: UILabel!
    
    @IBOutlet weak var nav: UINavigationItem!
    @IBOutlet weak var map: MKMapView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (persoon != nil) {
            let volledigeNaam = "\(persoon!.voornaam) \(persoon!.familienaam)"
            
            naam.text = volledigeNaam
            adres.text = "\(persoon!.adres.straat) \(persoon!.adres.huisnummer)\n\(persoon!.adres.postcode) \(persoon!.adres.plaats)"
            telefoonNummer.text = persoon!.telefoonNummer
            fotoImage.image = UIImage(named: persoon!.foto)
            nav.title = volledigeNaam
            
            let coordinate = CLLocationCoordinate2DMake(persoon!.coordinaten.breedtegraad, persoon!.coordinaten.lengtegraad)
            
            let annotation = MKPointAnnotation()
            annotation.title = volledigeNaam
            annotation.coordinate = coordinate
            map.addAnnotation(annotation)

            let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
            let region = MKCoordinateRegionMake(coordinate, span)
        
            map.setRegion(region, animated: true)
        
        }
    }
    
    @IBAction func toonFotoDetail(_ sender: Any) {
        print("omg")
        performSegue(withIdentifier: "toonFotoDetail", sender: sender)
    }
    
    @IBAction func verwijder(_ sender: Any) {
        Personen.verwijderPersoon(persoon: persoon!)
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toonFotoDetail" {
            let controller = segue.destination as? FotoDetail
            controller!.foto = persoon!.foto
            controller!.title = nav.title
        }

    }
}
