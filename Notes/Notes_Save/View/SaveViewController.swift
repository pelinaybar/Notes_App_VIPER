import Foundation
import UIKit

class SaveViewController: UIViewController{
    
    
    @IBOutlet weak var notes_title: UITextField!
    @IBOutlet weak var notes_detail: UITextView!
    
    var savePresenterObject:ViewToPresenterSaveProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        SaveRouter.createModule(ref: self)
    }
    
    @IBAction func saveButton(_ sender: Any) {
        if let notes_title = notes_title.text, let notes_detail = notes_detail.text {
            savePresenterObject?.add(notes_title: notes_title, notes_detail: notes_detail)
            navigationController?.popViewController(animated: true)
        }
    }
}
