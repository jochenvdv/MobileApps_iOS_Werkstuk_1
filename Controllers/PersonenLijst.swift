import UIKit

class PersonenLijst: UIViewController, UITableViewDelegate, UITableViewDataSource{
    let data = Personen().lijst
    
    @IBOutlet weak var table: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let persoonCel = tableView.dequeueReusableCell(withIdentifier: "PersoonCel", for: indexPath)
        
        persoonCel.textLabel?.text = "\(data[indexPath.row].voornaam) \(data[indexPath.row].familienaam)"
        persoonCel.imageView?.image = UIImage(named: data[indexPath.row].foto)
        
        return persoonCel
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toonPersoonDetail" {
            let controller = segue.destination as? PersoonDetail
            controller!.persoon = data[table.indexPathForSelectedRow!.row]
        }
    }
}
