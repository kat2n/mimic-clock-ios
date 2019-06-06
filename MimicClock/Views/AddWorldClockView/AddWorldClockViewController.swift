import UIKit

class AddWorldClockViewController: UIViewController {

  var model: AddWorldClockViewModel!

  init() {
    self.model = AddWorldClockViewModel()
    super.init(nibName: nil, bundle: nil)
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
