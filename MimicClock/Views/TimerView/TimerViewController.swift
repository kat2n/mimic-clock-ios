import UIKit

class TimerViewController: UIViewController {

  init() {
    super.init(nibName: nil, bundle: nil)

    navigationItem.title = "Timer"

    tabBarItem.title = "Timer"
    tabBarItem.image = UIImage(named: "timer")
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = ColorScheme.black
  }

}
