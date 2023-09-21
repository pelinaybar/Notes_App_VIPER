import Foundation
import UIKit

class DetailsViewController: UIViewController {
    
    
    @IBOutlet weak var notes_title: UITextField!
    @IBOutlet weak var notes_detail: UITextView!
    
    var note:Notes?
    
    var detailsPresenterObject:ViewToPresenterDetailsProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let note = note {
            notes_title.text = note.notes_title
            notes_detail.text = note.notes_detail
        }
        
        DetailsRouter.createModule(ref: self)
    }

    @IBAction func updeteButton(_ sender: Any) {
        if let notes_title = notes_title.text,let notes_detail = notes_detail.text,let note = note {
            detailsPresenterObject?.update(notes_id: note.notes_id!, notes_title: notes_title, notes_detail: notes_detail)
            navigationController?.popViewController(animated: true)
        }
    }
}
