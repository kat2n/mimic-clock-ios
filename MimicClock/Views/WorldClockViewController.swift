import UIKit

class WorldClockViewController: UIViewController {

  init() {
    super.init(nibName: nil, bundle: nil)

    navigationItem.leftBarButtonItem = editButtonItem
    navigationItem.title = "World Clock"
    navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(handleAddButton))

    tabBarItem.title = "World Clock"
    tabBarItem.image = UIImage(named: "world-clock")
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = Color.black
  }

  @objc func handleAddButton() {
  }

}
