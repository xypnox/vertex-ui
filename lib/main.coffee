root = document.documentElement

module.exports =
  activate: (state) ->
    atom.config.observe 'vertex-ui.fontSize', (value) ->
      setFontSize(value)

    atom.config.observe 'vertex-ui.tabSizing', (value) ->
      setTabSizing(value)

    atom.config.observe 'vertex-ui.hideDockButtons', (value) ->
      setHideDockButtons(value)

    atom.config.observe 'vertex-ui.autoHideStatus', (value) ->
      setAutoHideStatus(value)

    # DEPRECATED: This can be removed at some point (added in Atom 1.17/1.18ish)
    # It removes `layoutMode`
    if atom.config.get('vertex-ui.layoutMode')
      atom.config.unset('vertex-ui.layoutMode')

  deactivate: ->
    unsetFontSize()
    unsetTabSizing()
    unsetHideDockButtons()
    unsetAutoHideStatus()


# Font Size -----------------------

setFontSize = (currentFontSize) ->
  if Number.isInteger(currentFontSize)
    root.style.fontSize = "#{currentFontSize}px"
  else if currentFontSize is 'Auto'
    unsetFontSize()

unsetFontSize = ->
  root.style.fontSize = ''


# Tab Sizing -----------------------

setTabSizing = (tabSizing) ->
  root.setAttribute('vertex-ui-tabsizing', tabSizing.toLowerCase())

unsetTabSizing = ->
  root.removeAttribute('vertex-ui-tabsizing')


# Dock Buttons -----------------------

setHideDockButtons = (hideDockButtons) ->
  if hideDockButtons
    root.setAttribute('vertex-ui-dock-buttons', 'hidden')
  else
    unsetHideDockButtons()

unsetHideDockButtons = ->
  root.removeAttribute('vertex-ui-dock-buttons')

# Auto Hide Status -------------------
setAutoHideStatus = (autoHideStatus) ->
  if autoHideStatus
    root.setAttribute('vertex-ui-auto-hide-status', true)
  else
    unsetAutoHideStatus()

unsetAutoHideStatus = ->
  root.removeAttribute('vertex-ui-auto-hide-status')
