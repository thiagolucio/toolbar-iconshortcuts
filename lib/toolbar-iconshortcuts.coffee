shell = require 'shell'

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
      iconset: ''

    @toolBar.addButton
      icon: 'file-submodule'
      callback: 'application:open-folder'
      tooltip: 'Open Folder...'
      iconset: ''

    @toolBar.addButton
      icon: 'floppy-o'
      callback: 'core:save'
      tooltip: 'Save...'
      iconset: 'fa'

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'browser'
      callback: 'open-in-browser:open'
      tooltip: 'Open in Browser...'
      iconset: ''

    @toolBar.addButton
      icon: 'fa fa-server'
      callback: 'atom-live-server:start-3000'
      tooltip: 'Run localhost port 3000...'
      iconset: 'fa'

    @toolBar.addButton
      icon: 'markdown'
      callback: 'markdown-preview:toggle'
      tooltip: 'Markdown Preview'
      iconset: ''

    @toolBar.addButton
      icon: 'chevron-right'
      callback: 'pane:split-right'
      tooltip: 'Split Right'
      iconset: ''

    @toolBar.addButton
      icon: 'mirror'
      callback: 'tree-view:toggle'
      tooltip: 'Toggle Treeview'
      iconset: ''

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
      iconset: ''

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'x'
      callback: 'tool-bar:toggle'
      tooltip: 'Close Tool-Bar'
      iconset: ''
