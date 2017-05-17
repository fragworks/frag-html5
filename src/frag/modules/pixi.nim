import
  dom

type
  PixiGlobal {.importc.} = ref object of RootObj
  Renderer* {.importc.} = ref object of RootObj
    view*: Node
  DisplayObject {.importc.} = ref object of RootObj
    parent: DisplayObject
    transform: TransformBase
  Container* {.importc.} = ref object of DisplayObject
  Sprite {.importc.} = ref object of Container
  TransformBase {.importc.} = ref object of RootObj
  Loader {.importc.} = ref object of RootObj
  Texture {.importc.} = ref object of DisplayObject
  Resource {.importc.} = ref object of RootObj
    texture: Texture
var
  PIXI* {.importc, nodecl.}: PixiGlobal

{.push importcpp .}
proc autoDetectRenderer*(pixi: PixiGlobal, w, h: cint): Renderer
proc render*(renderer: Renderer, container: Container)
proc load(loader: Loader, cb: proc)
proc addChild(container: Container, displayObject: DisplayObject)
{.pop.}

proc newContainer*(): Container {.importcpp: "new PIXI.Container()".}
proc newSprite(texture: Texture): Sprite {.importcpp: "new PIXI.Sprite(@)".}
proc add(filename: cstring): Loader {.importcpp: "PIXI.loader.add(@)".}
proc get(filename: cstring): Resource {.importcpp: "PIXI.loader.resources[@]".}