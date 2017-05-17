import 
  karax,
  karaxdsl,
  vdom

proc example00(ev: Event, n: VNode) =
  loadScript("00-hello-world/nimcache/main.js")

proc createDom(): VNode =
  result = buildHtml(tdiv()):
    a(class="button is-primary", onclick=example00):
      text "Example 00"
    tdiv(id="stage-container")
    tdiv(id="stats")

setRenderer createDom