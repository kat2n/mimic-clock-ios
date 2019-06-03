import UIKit

class AlarmViewController: UIViewController {

  init() {
    super.init(nibName: nil, bundle: nil)

    navigationItem.title = "Alarm"
    tabBarItem.title = "Alarm"
    tabBarItem.image = UIImage(named: "alarm")
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = .yellow
  }

}
