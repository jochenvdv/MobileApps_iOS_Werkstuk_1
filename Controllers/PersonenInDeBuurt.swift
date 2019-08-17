import UIKit
import MapKit
import CoreLocation

class PersonenInDeBuurt: UIViewController, CLLocationManagerDelegate {
    let data = Personen().lijst
    let manager = CLLocationManager()
    
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.delegate = self
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        for persoon in data {
            let annotation = MKPointAnnotation()
            let coordinate = CLLocationCoordinate2D(latitude: persoon.coordinaten.breedtegraad, longitude: persoon.coordinaten.lengtegraad)
            
            annotation.title = "\(persoon.voornaam) \(persoon.familienaam)"
            annotation.subtitle = "\(persoon.adres.straat) \(persoon.adres.huisnummer), \(persoon.adres.postcode) \(persoon.adres.plaats)"
            annotation.coordinate = coordinate
            
            map.addAnnotation(annotation)

        }
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let userLocation = locations[0]
        let userCoordinate = CLLocationCoordinate2DMake(userLocation.coordinate.latitude, userLocation.coordinate.longitude)
        let span = MKCoordinateSpanMake(100.0,100.0)
        let region = MKCoordinateRegionMake(userCoordinate, span)
        map.showsUserLocation = true
        map.setRegion(region, animated: true)
    }
}

