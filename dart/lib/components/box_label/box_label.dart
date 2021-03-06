library box_label_comp;

import 'package:angular/angular.dart' show Component, NgAttr;
import 'package:angular/angular.dart' as ng;
import 'dart:html' as dom;

@Component(
  selector: 'box-label',
  template: '<span ng-class="type"><content></content></span>',
  cssUrl: 'packages/pritunl/components/box_label/box_label.css'
)
class BoxLabelComp implements ng.ShadowRootAware {
  @NgAttr('padding')
  String padding;

  @NgAttr('type')
  String type;

  onShadowRoot(dom.ShadowRoot root) {
    if (this.padding != null) {
      root.querySelector('span').style.padding = this.padding;
    }
  }
}
