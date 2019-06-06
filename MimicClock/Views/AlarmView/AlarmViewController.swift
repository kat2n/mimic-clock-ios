import UIKit

class AlarmViewController: UIViewController {

  var model: AlarmViewModel!

  init() {
    super.init(nibName: nil, bundle: nil)

    self.model = AlarmViewModel()

    navigationItem.leftBarButtonItem = editButtonItem
    navigationItem.title = "Alarm"
    navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(handleAddButton))

    tabBarItem.title = "Alarm"
    tabBarItem.image = UIImage(named: "alarm")
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = Color.black

    model.testRealm()
  }

  @objc func handleAddButton() {
  }

}
