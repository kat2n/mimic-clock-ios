import UIKit

class AlarmViewController: UIViewController {

  init() {
    super.init(nibName: nil, bundle: nil)

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
  }

  @objc func handleAddButton() {
  }

}
