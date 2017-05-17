import
  ../../../../src/frag,
  ../../../../src/frag/config,
  ../../../../src/frag/logger,
  ../../../../src/frag/types

type
  App = ref object

proc initApp(app: App, ctx: Frag) =
  logDebug "Initializing app..."
  logDebug "App initialized."

proc beginFrame(app: App, timestamp, delta: float) =
  discard

proc updateApp(app: App, ctx: Frag, delta: float) =
  logDebug "Updating app..."

proc renderApp(app: App, ctx: Frag, lag: float) =
  logDebug "Rendering app..."

proc shutdownApp(app: App, ctx: Frag) =
  discard

startFrag(App(), Config(rootWindowWidth: 256, rootWindowHeight: 256))