import UIKit

class AddWorldClockView: UIView {

  private let statusBarHeight: CGFloat = UIApplication.shared.statusBarFrame.height
  private let headerViewHeight: CGFloat = 88

  var ctrl: AddWorldClockViewController!

  var tableView: UITableView!
  var titleLabel: UILabel!
  var searchBar: UISearchBar!
  var headerContents: UIStackView!
  var headerView: UIView!

  init(_ ctrl: AddWorldClockViewController) {
    super.init(frame: .zero)

    self.ctrl = ctrl
    self.tableView = createTableView()
    self.titleLabel = createTitleLabel()
    self.searchBar = createSearchBar()
    self.headerContents = createHeaderContents()
    self.headerView = createHeaderView()

    layOut()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  private func createTableView() -> UITableView {
    let it = UITableView()
    it.register(AddWorldClockViewCell.self, forCellReuseIdentifier: AddWorldClockViewCell.id)
    it.delegate = ctrl
    it.dataSource = ctrl
    it.translatesAutoresizingMaskIntoConstraints = false
    it.backgroundColor = ColorScheme.modalBackground
    it.sectionIndexColor = ColorScheme.orange
    it.contentInset.top = headerViewHeight
    return it
  }

  private func createTitleLabel() -> UILabel {
    let it = UILabel()
    it.translatesAutoresizingMaskIntoConstraints = false
    it.text = "Choose a City."
    it.textColor = ColorScheme.white
    it.font = UIFont.systemFont(ofSize: UIFont.systemFontSize - 2)
    return it
  }

  private func createSearchBar() -> UISearchBar {
    let it = UISearchBar()
    it.delegate = ctrl
    it.translatesAutoresizingMaskIntoConstraints = false
    it.placeholder = "Search"
    (it.value(forKey: "_searchField") as! UITextField).textColor = ColorScheme.white
    (it.value(forKey: "_searchField") as! UITextField).backgroundColor = ColorScheme.searchTextFieldBackground
    it.tintColor = ColorScheme.orange
    it.backgroundImage = UIImage()
    it.autocapitalizationType = .none
    it.showsCancelButton = true
    (it.value(forKey: "_cancelButton") as! UIButton).isEnabled = true
    it.keyboardAppearance = .dark

    return it
  }

  private func createHeaderContents() -> UIStackView {
    let it = UIStackView()
    it.translatesAutoresizingMaskIntoConstraints = false
    it.axis = .vertical
    it.alignment = .center
    it.distribution = .equalSpacing
    it.spacing = 8
    return it
  }

  private func createHeaderView() -> UIView {
    let it = UIView()
    it.translatesAutoresizingMaskIntoConstraints = false
    it.backgroundColor = ColorScheme.modalBackground
    it.layer.shadowColor = ColorScheme.darkGray.cgColor
    it.layer.shadowOffset = CGSize(width: 0, height: 1)
    it.layer.shadowOpacity = 1
    it.layer.shadowRadius = 0
    return it
  }

  private func layOut() {

    addSubview(tableView)
    NSLayoutConstraint.activate([
      tableView.topAnchor.constraint(equalTo: topAnchor),
      tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
      tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
      tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
    ])

    addSubview(headerView)
    NSLayoutConstraint.activate([
      headerView.topAnchor.constraint(equalTo: topAnchor),
      headerView.leadingAnchor.constraint(equalTo: leadingAnchor),
      headerView.trailingAnchor.constraint(equalTo: trailingAnchor),
      headerView.heightAnchor.constraint(equalToConstant: statusBarHeight + headerViewHeight),
    ])

    headerView.addSubview(headerContents)
    NSLayoutConstraint.activate([
      headerContents.topAnchor.constraint(equalTo: headerView.topAnchor, constant: statusBarHeight + 8),
      headerContents.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 8),
      headerContents.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -8),
    ])

    headerContents.addArrangedSubview(titleLabel)
    headerContents.addArrangedSubview(searchBar)
    NSLayoutConstraint.activate([
      searchBar.widthAnchor.constraint(equalTo: headerContents.widthAnchor),
    ])

  }

}

