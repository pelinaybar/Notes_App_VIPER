import Foundation
import Firebase

class DetailsInterector : PresenterToInterectorDetailsProtocol {
    var refDetails = Database.database().reference().child("notes")
    
    func noteUpdate(notes_id: String, notes_title: String, notes_detail: String) {
        let updatedNote = ["notes_title":notes_title,"notes_detail":notes_detail]
        refDetails.child(notes_id).updateChildValues(updatedNote)
    }
}
