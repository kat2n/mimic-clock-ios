import UIKit

class AddWorldClockView: UIView {

  var ctrl: AddWorldClockViewController!

  init(_ ctrl: AddWorldClockViewController) {
    self.ctrl = ctrl
    super.init(frame: .zero)

    backgroundColor = .red
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

}
