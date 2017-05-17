import
  dom

import
  pixi

type
  Graphics* = object
    renderer: Renderer
    stage: Container

proc init*(graphics: var Graphics, stageWidth, stageHeight: int) =
  graphics.renderer = PIXI.autoDetectRenderer(stageWidth.cint, stageHeight.cint)

  graphics.stage = newContainer()

  var stageContainer = document.getElementById("stage-container")
  stageContainer.appendChild(graphics.renderer.view)

proc render*(graphics: Graphics) =
  graphics.renderer.render(graphics.stage)