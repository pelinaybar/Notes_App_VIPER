import UIKit
import Firebase

class HomeViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var notesTableView: UITableView!
    
    var notesLists = [Notes]()
    var homePresenterObject:ViewToPresenterHomeProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        notesTableView.delegate = self
        notesTableView.dataSource = self
        HomeRouter.createModule(ref: self)
    }
    override func viewWillAppear(_ animated: Bool) {
        homePresenterObject?.notesDownload()
    }
}
extension HomeViewController : PresenterToViewHomeProtocol {
    func viewToCell(notesLists: Array<Notes>) {
        self.notesLists = notesLists
        DispatchQueue.main.async {
            self.notesTableView.reloadData()
        }
    }
}
extension HomeViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText == "" {
            homePresenterObject?.notesDownload()
        }else{
            homePresenterObject?.search(searchWord: searchText)
        }
    }
}

extension HomeViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notesLists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let note = notesLists[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.notes_title.text = note.notes_title!
        cell.notes_detail.text = note.notes_detail!
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let note = notesLists[indexPath.row]
        performSegue(withIdentifier: "toNoteDetails", sender: note)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue,sender: Any?) {
        if segue.identifier == "toNoteDetails" {
            let note = sender as? Notes
            let toVC = segue.destination as! DetailsViewController
            toVC.note = note
        }
    }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let note = notesLists[indexPath.row]
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete"){(contextualAction,view,bool) in
            let alert = UIAlertController(title: "Process of Delete", message: "\(note.notes_title!) will be delete?", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){ action in}
            let yesAction = UIAlertAction(title: "Yes", style: .destructive){ action in
                self.homePresenterObject?.delete(notes_id: note.notes_id!)
            }
            alert.addAction(cancelAction)
            alert.addAction(yesAction)
            self.present(alert, animated: true)
        }
        
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
}
