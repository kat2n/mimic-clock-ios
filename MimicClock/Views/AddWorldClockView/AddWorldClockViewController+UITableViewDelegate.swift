import UIKit

extension AddWorldClockViewController: UITableViewDelegate {

  func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
    (view as! UITableViewHeaderFooterView).textLabel?.textColor = Color.tableSectionText
    view.tintColor = Color.tableSectionBackground
  }

}

