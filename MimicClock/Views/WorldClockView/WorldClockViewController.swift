import UIKit

class WorldClockViewController: UIViewController {

  var model: WorldClockViewModel!

  init() {
    super.init(nibName: nil, bundle: nil)

    model = WorldClockViewModel()

    navigationItem.leftBarButtonItem = editButtonItem
    navigationItem.title = "World Clock"
    navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(handleAddButton))

    tabBarItem.title = "World Clock"
    tabBarItem.image = UIImage(named: "world-clock")
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func loadView() {
    view = WorldCloclView(self)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @objc func handleAddButton() {
  }

}
