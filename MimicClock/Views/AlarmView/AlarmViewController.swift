import UIKit

class AlarmViewController: AppViewController {

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

  override func loadView() {
    super.loadView()

    view = AlarmView(self)
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    model.testRealm()
  }

  @objc func handleAddButton() {
  }

}
