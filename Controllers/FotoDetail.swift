import Foundation
import UIKit

class FotoDetail: UIViewController {
    var foto: String?
    var paginaTitle: String?

    @IBOutlet weak var fotoImage: UIImageView!
    @IBOutlet weak var nav: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (foto != nil) {
            nav.title = paginaTitle
            fotoImage.image = UIImage(named: foto!)
        }
    }
}
