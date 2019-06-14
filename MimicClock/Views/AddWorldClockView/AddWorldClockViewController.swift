import UIKit

class AddWorldClockViewController: AppViewController {

  var model: AddWorldClockViewModel!

  var data: [String] = ["aaa", "bbb", "ccc"]

  init() {
    super.init(nibName: nil, bundle: nil)

    self.model = AddWorldClockViewModel()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func loadView() {
    super.loadView()

    view = AddWorldClockView(self)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }

}

