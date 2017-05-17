import 
  karax,
  karaxdsl,
  vdom

proc example00(ev: Event, n: VNode) =
  loadScript("00-hello-world/nimcache/main.js")

proc createDom(): VNode =
  result = buildHtml(tdiv()):
    tdiv(class="container"):
      tdiv(class="columns"):
        tdiv(class="column"):
          aside(class="menu"):
            p(class="menu-label"):
              text "General"
            ul(class="menu-list"):
              li:
                a(onclick=example00):
                  text "Example 00"
        tdiv(class="column"):
          tdiv(class="card"):
            tdiv(class="card-header"):
              p(class="card-header-title"):
                text "Example:"
            tdiv(class="card-content", id="stage-container")
            tdiv(class="card-footer"):
              tdiv(class="card-footer-item", id="stats")

setRenderer createDom