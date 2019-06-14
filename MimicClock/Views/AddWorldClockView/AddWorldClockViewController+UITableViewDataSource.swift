import UIKit

extension AddWorldClockViewController: UITableViewDataSource {

  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return data.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: AddWorldClockViewCell.id, for: indexPath) as! AddWorldClockViewCell
    cell.render(data[indexPath.row])
    return cell
  }

  func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return "section"
  }

  func sectionIndexTitles(for tableView: UITableView) -> [String]? {
    return ["A", "B", "C", "#"]
  }

  func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int {
    tableView.scrollToRow(at: [0, index], at: .top, animated: true)
    return index
  }

}

