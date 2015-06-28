module.exports =
  activate: (state) ->

  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'toolbar-iconshortcuts'

    @toolBar.addButton
      icon: 'file-code-o'
      callback: 'application:new-file'
      tooltip: 'New File'
      iconset: 'fa'
    @toolBar.addButton
      icon: 'file-directory'
      callback: 'application:open-file'
      tooltip: 'Open File...'
    @toolBar.addButton
      icon: 'file-submodule'
      callback: 'application:open-folder'
      tooltip: 'Open Folder...'
    @toolBar.addButton
      icon: 'floppy-o'
      callback: 'core:save'
      tooltip: 'Save...'
      iconset: 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'magnifying-glass'
      callback: 'find-and-replace:show'
      tooltip: 'Find...'
      iconset: 'fi'
    @toolBar.addButton
      icon: 'shuffle'
      callback: 'find-and-replace:show-replace'
      tooltip: 'Find and Replace...'
      iconset: 'ion'

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'navicon-round'
      callback: 'command-palette:toggle'
      tooltip: 'Command Palette...'
      iconset: 'ion'
    @toolBar.addButton
      icon: 'tools'
      callback: 'settings-view:open'
      tooltip: 'Settings...'
      #iconset: 'fi'

    @toolBar.addButton
      icon: 'refresh'
      callback: 'window:reload'
      tooltip: 'Reload Window'
      iconset: 'ion'
    @toolBar.addButton
      icon: 'terminal'
      callback: ->
        require('remote').getCurrentWindow().toggleDevTools()
      tooltip: 'Toggle Developer Tools'