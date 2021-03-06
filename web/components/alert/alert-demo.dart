import "package:angular2/angular2.dart" show Component, View, NgFor;
import "package:ng2-strap/alert/alert.dart" show Alert;

@Component(selector: "alert-demo")
@View(templateUrl: "alert-demo.html", directives: const [Alert, NgFor])
class AlertDemo {
  List alerts = [
    {
      "type": "danger",
      "msg": "Oh snap! Change a few things up and try submitting again."
    },
    {
      "type": "success",
      "msg": "Well done! You successfully read this important alert message.",
      "closable": true
    }
  ];
  closeAlert(num i) {
    alerts.removeAt(i);
  }

  addAlert() {
    alerts.add({"msg": "Another alert!", 'closable': true});
  }
}
