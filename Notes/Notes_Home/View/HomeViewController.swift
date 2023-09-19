import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var notesTableView: UITableView!
    
    var notesLists = [Notes]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
extension HomeViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText == "" {
            print("iffff")
        }else{
            print("elseee")
        }
    }
}
