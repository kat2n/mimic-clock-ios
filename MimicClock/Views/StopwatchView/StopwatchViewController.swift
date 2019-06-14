import UIKit

class StopwatchViewController: AppViewController {

  var model: StopwatchViewModel!

  init() {
    super.init(nibName: nil, bundle: nil)

    self.model = StopwatchViewModel()

    navigationItem.title = "Stopwatch"

    tabBarItem.title = "Stopwatch"
    tabBarItem.image = UIImage(named: "stopwatch")
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func loadView() {
    super.loadView()

    view = StopwatchView(self)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }

}
