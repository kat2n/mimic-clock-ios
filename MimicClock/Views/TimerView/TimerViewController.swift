import UIKit

class TimerViewController: AppViewController {

  var model: TimerViewModel!

  init() {
    super.init(nibName: nil, bundle: nil)

    self.model = TimerViewModel()

    navigationItem.title = "Timer"

    tabBarItem.title = "Timer"
    tabBarItem.image = UIImage(named: "timer")
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func loadView() {
    super.loadView()

    view = TimerView(self)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }

}
