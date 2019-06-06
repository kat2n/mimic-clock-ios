import UIKit

class WorldCloclView: UIView {

  var ctrl: WorldClockViewController!

  init(_ ctrl: WorldClockViewController) {
    self.ctrl = ctrl
    super.init(frame: .zero)

    backgroundColor = Color.black

  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

}
