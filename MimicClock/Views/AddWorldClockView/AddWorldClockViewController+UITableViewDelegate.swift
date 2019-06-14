import UIKit

extension AddWorldClockViewController: UITableViewDelegate {

  func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
    (view as! UITableViewHeaderFooterView).textLabel?.textColor = ColorScheme.tableSectionText
    view.tintColor = ColorScheme.tableSectionBackground
  }

}

