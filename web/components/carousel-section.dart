/// <reference path="../../tsd.d.ts" />
import "package:angular2/angular2.dart"
    show Component, View, CORE_DIRECTIVES, NgNonBindable;
import "../../lib/index.dart" show tabs;
import "carousel/carousel-demo.dart" show CarouselDemo;

var name = "Carousel";

var src = "https://github.com/valor-software/ng2-bootstrap/blob/master/components/carousel/carousel.ts";
// webpack html imports
var doc = require("../../lib/carousel/readme.md");

var titleDoc = require("../../lib/carousel/title.md");

var ts = require("!!prismjs?lang=typescript!./carousel/carousel-demo.ts");

var html = require("!!prismjs?lang=markup!./carousel/carousel-demo.html");

@Component (selector: "carousel-section")
@View (template: '''
  <br>
  <section id="${ name.toLowerCase()}">
    <div class="row"><h1>${ name}<small>(<a href="${ src}">src</a>)</small></h1></div>

    <hr>

    <div class="row"><div class="col-md-12">${ titleDoc}</div></div>

    <div class="row">
      <h2>Example</h2>
      <div class="card card-block panel panel-default panel-body">
        <carousel-demo></carousel-demo>
      </div>
    </div>

    <br>

    <div class="row">
      <tabset>
        <tab heading="Markup">
          <div class="card card-block panel panel-default panel-body">
            <pre class="language-html"><code class="language-html" ng-non-bindable>${ html}</code></pre>
          </div>
        </tab>
        <tab heading="TypeScript">
          <div class="card card-block panel panel-default panel-body">
            <pre class="language-typescript"><code class="language-typescript" ng-non-bindable>${ ts}</code></pre>
          </div>
        </tab>
      </tabset>
    </div>

    <br>

    <div class="row">
      <h2>API</h2>
      <div class="card card-block panel panel-default panel-body">
      ${ doc}
      </div>
    </div>
  </section>
  ''', directives: const [ CarouselDemo, tabs, CORE_DIRECTIVES, NgNonBindable])
class CarouselSection {}