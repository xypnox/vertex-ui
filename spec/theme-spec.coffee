describe "One Dark UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('apex-adapt-dark-slim-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe ''

    atom.config.set('apex-adapt-dark-slim-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

    atom.config.set('apex-adapt-dark-slim-ui.fontSize', 'Auto')
    expect(document.documentElement.style.fontSize).toBe ''

  it "allows the tab sizing to be set via config", ->
    atom.config.set('apex-adapt-dark-slim-ui.tabSizing', 'Maximum')
    expect(document.documentElement.getAttribute('theme-apex-adapt-dark-slim-ui-tabsizing')).toBe 'maximum'

  it "allows the tab sizing to be set via config", ->
    atom.config.set('apex-adapt-dark-slim-ui.tabSizing', 'Minimum')
    expect(document.documentElement.getAttribute('theme-apex-adapt-dark-slim-ui-tabsizing')).toBe 'minimum'

  it "allows the dock toggle buttons to be hidden via config", ->
    atom.config.set('apex-adapt-dark-slim-ui.hideDockButtons', true)
    expect(document.documentElement.getAttribute('theme-apex-adapt-dark-slim-ui-dock-buttons')).toBe 'hidden'
