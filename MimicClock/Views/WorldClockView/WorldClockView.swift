import UIKit

class WorldClockView: UIView {

  var ctrl: WorldClockViewController!

  init(_ ctrl: WorldClockViewController) {
    self.ctrl = ctrl
    super.init(frame: .zero)

    backgroundColor = ColorScheme.black

  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

}
