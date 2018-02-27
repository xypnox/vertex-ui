describe "One Dark UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('vertex-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe ''

    atom.config.set('vertex-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

    atom.config.set('vertex-ui.fontSize', 'Auto')
    expect(document.documentElement.style.fontSize).toBe ''

  it "allows the tab sizing to be set via config", ->
    atom.config.set('vertex-ui.tabSizing', 'Maximum')
    expect(document.documentElement.getAttribute('vertex-ui-tabsizing')).toBe 'maximum'

  it "allows the tab sizing to be set via config", ->
    atom.config.set('vertex-ui.tabSizing', 'Minimum')
    expect(document.documentElement.getAttribute('vertex-ui-tabsizing')).toBe 'minimum'

  it "allows the dock toggle buttons to be hidden via config", ->
    atom.config.set('vertex-ui.hideDockButtons', true)
    expect(document.documentElement.getAttribute('vertex-ui-dock-buttons')).toBe 'hidden'
