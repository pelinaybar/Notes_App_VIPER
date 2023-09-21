import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var notes_title: UILabel!
    @IBOutlet weak var notes_detail: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
