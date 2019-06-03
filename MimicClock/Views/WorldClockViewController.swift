import UIKit

class WorldClockViewController: UIViewController {

  init() {
    super.init(nibName: nil, bundle: nil)

    tabBarItem.title = "World Clock"
    tabBarItem.image = UIImage(named: "world-clock")
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = .red
  }

}
