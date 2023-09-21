import Foundation

protocol ViewToPresenterHomeProtocol {
    var homeInterector:PresenterToInterectorHomeProtocol? {get set}
    var homeView:PresenterToViewHomeProtocol? {get set}
    
    func notesDownload()
    func search(searchWord:String)
    func delete(notes_id:String)
}
protocol PresenterToInterectorHomeProtocol {
    var homePresenter:InterectorToPresenterHomeProtocol? {get set}
    
    func takeAllNotes()
    func searchNotes(searchWord:String)
    func deleteNotes(notes_id:String)
}
protocol InterectorToPresenterHomeProtocol {
    func presenterToCell(notesLists:Array<Notes>)
}

protocol PresenterToViewHomeProtocol {
    func viewToCell(notesLists:Array<Notes>)
}

protocol PresenterToRouterHomeProtocol {
    static func createModule(ref:HomeViewController)
}
