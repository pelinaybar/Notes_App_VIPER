import Foundation
import Firebase

class SaveInterector : PresenterToInterectorSaveProtocol {
    
    var refNotes = Database.database().reference().child("notes")
    
    func addNote(notes_title: String, notes_detail: String) {
        let newNote = ["notes_id":"","notes_title":notes_title,"notes_detail":notes_detail]
        refNotes.childByAutoId().setValue(newNote)
    }
    
}
