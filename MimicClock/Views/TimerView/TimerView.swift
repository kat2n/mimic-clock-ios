import UIKit

class TimerView: AppView {

  var ctrl: TimerViewController!

  init(_ ctrl: TimerViewController!) {
    super.init(frame: .zero)

    self.ctrl = ctrl

    backgroundColor = ColorScheme.black
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

}
