import UIKit

class StopwatchViewController: UIViewController {

  init() {
    super.init(nibName: nil, bundle: nil)

    navigationItem.title = "Stopwatch"

    tabBarItem.title = "Stopwatch"
    tabBarItem.image = UIImage(named: "stopwatch")
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = ColorScheme.black
  }

}
