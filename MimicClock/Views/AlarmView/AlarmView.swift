import UIKit

class AlarmView: AppView {

  var ctrl: AlarmViewController!

  init(_ ctrl: AlarmViewController) {
    super.init(frame: .zero)

    self.ctrl = ctrl

    backgroundColor = ColorScheme.black
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

}
