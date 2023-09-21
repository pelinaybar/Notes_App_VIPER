import Foundation

protocol ViewToPresenterDetailsProtocol {
    var detailsInterector: PresenterToInterectorDetailsProtocol? {get set}
    
    func update(notes_id:String,notes_title:String,notes_detail:String)
}

protocol PresenterToInterectorDetailsProtocol {
    func noteUpdate(notes_id:String,notes_title:String,notes_detail:String)
}

protocol PresenterToRouterDetailsProtocol {
    static func createModule(ref:DetailsViewController)
}
