import Foundation
import RealmSwift

class Alarm: Object {

  @objc dynamic var name = ""

  class func deleteAll() {
    do {
      let realm = try Realm()
      try realm.write {
        realm.delete(realm.objects(Alarm.self))
      }
    } catch {
      print("Realm failed to delete all.")
    }
  }

  class func create(name: String) -> Alarm? {
    do {
      let realm = try Realm()
      let it = Alarm()
      it.name = name
      try realm.write {
        realm.add(it)
      }
      return it
    } catch {
      print("Realm failed to create.")
      return nil
    }
  }

  class func read() -> Results<Alarm>? {
    do {
      let realm = try Realm()
      return realm.objects(Alarm.self)
    } catch {
      print("Realm failed to read.")
      return nil
    }
  }

  func update(name: String) {
    do {
      let realm = try Realm()
      try realm.write {
        self.name = name
      }
    } catch {
      print("Realm failed to update.")
    }
  }

  func delete() {
    do {
      let realm = try Realm()
      try realm.write {
        realm.delete(self)
      }
    } catch {
      print("Realm failed to delete.")
    }
  }

}
