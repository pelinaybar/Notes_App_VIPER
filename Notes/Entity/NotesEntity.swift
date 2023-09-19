import Foundation

class Notes{
    var notes_id:String?
    var notes_title:String?
    var notes_detail:String?
    
    init(notes_id:String,notes_title:String,notes_detail:String){
        self.notes_id = notes_id
        self.notes_title = notes_title
        self.notes_detail = notes_detail
    }
}
