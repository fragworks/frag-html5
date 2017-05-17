import 
  karax,
  karaxdsl,
  vdom

proc example00(ev: Event, n: VNode) =
  loadScript("00-hello-world/nimcache/main.js")

proc createDom(): VNode =
  result = buildHtml(tdiv()):
    button(onclick=example00):
      text "Example 00"

setRenderer createDom