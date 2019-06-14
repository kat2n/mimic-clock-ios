import UIKit

class AddWorldClockViewCell: UITableViewCell {

  static let id = "add-world-clock-view-cell"

  override init(style: CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)

    backgroundColor = Color.modalBackground
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func awakeFromNib() {
    super.awakeFromNib()
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }

  func render(_ data: String) {
    textLabel?.textColor = Color.white
    textLabel?.text = data
  }

}
