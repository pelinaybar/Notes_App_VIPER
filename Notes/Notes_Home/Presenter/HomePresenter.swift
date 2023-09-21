import Foundation

class HomePresenter : ViewToPresenterHomeProtocol {
    var homeInterector: PresenterToInterectorHomeProtocol?
    var homeView: PresenterToViewHomeProtocol?
    
    func notesDownload() {
        homeInterector?.takeAllNotes()
    }
    
    func search(searchWord: String) {
        homeInterector?.searchNotes(searchWord: searchWord)
    }
    
    func delete(notes_id: String) {
        homeInterector?.deleteNotes(notes_id: notes_id)
    }
}
extension HomePresenter : InterectorToPresenterHomeProtocol {
    func presenterToCell(notesLists : Array<Notes>) {
        homeView?.viewToCell(notesLists: notesLists)
    }
}
