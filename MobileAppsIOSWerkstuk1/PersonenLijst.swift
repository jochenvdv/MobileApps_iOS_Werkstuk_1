import UIKit

class PersonenLijst: UITableViewController {
    let data = Personen().lijst
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let persoonCel = tableView.dequeueReusableCell(withIdentifier: "PersoonCel", for: indexPath)
        
        persoonCel.textLabel?.text = data[indexPath.row].voornaam + " " + data[indexPath.row].familienaam
        persoonCel.imageView?.image = UIImage(named: data[indexPath.row].foto)
        
        return persoonCel
    }

}
