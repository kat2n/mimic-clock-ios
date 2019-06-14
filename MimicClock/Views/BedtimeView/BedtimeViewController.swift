import UIKit

class BedtimeViewController: UIViewController {

  init() {
    super.init(nibName: nil, bundle: nil)

    navigationItem.title = "Bedtime"

    tabBarItem.title = "Bedtime"
    tabBarItem.image = UIImage(named: "bedtime")
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = Color.black
  }

}
