import UIKit

class PersonenLijst: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        table!.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Personen.lijst.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // source: https://www.ioscreator.com/tutorials/prototype-cells-table-view-ios-tutorial-ios10
        let persoonCel = tableView.dequeueReusableCell(withIdentifier: "PersoonCel", for: indexPath)
        
        persoonCel.textLabel?.text = "\(Personen.lijst[indexPath.row].voornaam) \(Personen.lijst[indexPath.row].familienaam)"
        
        return persoonCel
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // source: https://stackoverflow.com/questions/24040692/prepare-for-segue-in-swift
        
        if segue.identifier == "toonPersoonDetail" {
            let controller = segue.destination as? PersoonDetail
            controller!.persoon = Personen.lijst[table!.indexPathForSelectedRow!.row]
        }
    }
}
