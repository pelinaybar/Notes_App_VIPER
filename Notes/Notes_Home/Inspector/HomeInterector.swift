import Foundation
import Firebase

class HomeInterector : PresenterToInterectorHomeProtocol {
    var homePresenter: InterectorToPresenterHomeProtocol?
   
    var refNotes = Database.database().reference().child("notes")
    
    func takeAllNotes() {
        print("takeallnotes")
        refNotes.observe(.value, with: { snapshot in
            var list = [Notes]()
            
            if let toCell = snapshot.value as? [String:AnyObject] {
                for line in toCell {
                    if let d = line.value as? NSDictionary {
                        let notes_id = line.key
                        let notes_title = d["notes_title"] as? String ?? ""
                        let notes_detail = d["notes_detail"] as? String ?? ""
                        
                        let note = Notes(notes_id: notes_id, notes_title: notes_title, notes_detail: notes_detail)
                        list.append(note)
                    }
                }
            }
            self.homePresenter?.presenterToCell(notesLists: list)
        })
    }
    
    func searchNotes(searchWord: String) {
        refNotes.observe(.value, with: { snapshot in
            var list = [Notes]()
            
            if let toCell = snapshot.value as? [String:AnyObject] {
                for line in toCell {
                    if let d = line.value as? NSDictionary {
                        let notes_id = line.key
                        let notes_title = d["notes_title"] as? String ?? ""
                        let notes_detail = d["notes_detail"] as? String ?? ""
                        
                        if notes_detail.lowercased().contains(searchWord.lowercased()){
                            let note = Notes(notes_id: notes_id, notes_title: notes_title, notes_detail: notes_detail)
                            list.append(note)
                        }
                    }
                }
            }
            
            self.homePresenter?.presenterToCell(notesLists: list)
        })
    }
    
    func deleteNotes(notes_id: String) {
        refNotes.child(notes_id).removeValue()
    }
    
}
