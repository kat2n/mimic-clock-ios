import UIKit

class BedtimeViewController: AppViewController {

  var model: BedtimeViewModel!

  init() {
    super.init(nibName: nil, bundle: nil)

    self.model = BedtimeViewModel()

    navigationItem.title = "Bedtime"

    tabBarItem.title = "Bedtime"
    tabBarItem.image = UIImage(named: "bedtime")
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func loadView() {
    super.loadView()

    view = BedtimeView(self)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }

}
