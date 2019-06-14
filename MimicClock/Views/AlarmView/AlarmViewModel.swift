import Foundation

class AlarmViewModel {

  func testRealm() {

    Alarm.deleteAll()

    let alarms = Alarm.read()
    print(alarms)

    let alarm = Alarm.create(name: "aaa")
    print(alarms)

    alarm?.update(name: "bbb")
    print(alarms)

    alarm?.delete()
    print(alarms)

  }

}
