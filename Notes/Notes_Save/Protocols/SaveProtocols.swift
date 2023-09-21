import Foundation

protocol ViewToPresenterSaveProtocol {
    var saveInterector:PresenterToInterectorSaveProtocol? {get set}
    
    func add(notes_title:String,notes_detail:String)
}
protocol PresenterToInterectorSaveProtocol {
    func addNote(notes_title:String,notes_detail:String)
}
protocol PresenterToRouterSaveProtocol {
    static func createModule(ref:SaveViewController)
}
