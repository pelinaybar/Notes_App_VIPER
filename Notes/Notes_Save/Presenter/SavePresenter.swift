import Foundation

class SavePresenter : ViewToPresenterSaveProtocol {
    var saveInterector: PresenterToInterectorSaveProtocol?
    
    func add(notes_title: String, notes_detail: String) {
        saveInterector?.addNote(notes_title: notes_title, notes_detail: notes_detail)
    }
}
