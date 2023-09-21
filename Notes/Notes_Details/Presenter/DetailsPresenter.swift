import Foundation

class DetailsPresenter : ViewToPresenterDetailsProtocol {
    var detailsInterector: PresenterToInterectorDetailsProtocol?
    
    func update(notes_id: String, notes_title: String, notes_detail: String) {
        detailsInterector?.noteUpdate(notes_id: notes_id, notes_title: notes_title, notes_detail: notes_detail)
    }
}
