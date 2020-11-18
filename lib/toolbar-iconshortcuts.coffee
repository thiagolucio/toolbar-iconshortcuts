module.exports =
  activate: (state) ->
    require('atom-package-deps').install('toolbar-iconshortcuts')

  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'toolbar-iconshortcuts'

    @toolBar.addButton
      icon: 'file-empty'
      callback: 'application:new-file'
      tooltip: 'New File'
      iconset: 'icomoon'
    @toolBar.addButton
      icon: 'folder'
      callback: 'application:open-file'
      tooltip: 'Open File...'
      iconset: 'icomoon'
    @toolBar.addButton
      icon: 'folder-plus'
      callback: 'application:open-folder'
      tooltip: 'Open Folder...'
      iconset: 'icomoon'
    @toolBar.addButton
      icon: 'checkmark'
      callback: 'core:save'
      tooltip: 'Save...'
      iconset: 'icomoon'

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'chrome'
      callback: 'open-in-browser:open'
      tooltip: 'Open in Browser...'
      iconset: 'icomoon'
    @toolBar.addButton
      icon: 'sphere'
      callback: 'atom-live-server:start-3000'
      tooltip: 'Run localhost port 3000...'
      iconset: 'icomoon'
    @toolBar.addButton
      icon: 'power'
      callback: 'run:file'
      tooltip: 'Run script...'
      iconset: 'icomoon'
    @toolBar.addButton
      icon: 'terminal'
      callback: 'terminus:toggle'
      tooltip: 'Open terminal Integrated...'
      iconset: 'icomoon'
    @toolBar.addButton
      icon: 'new-tab'
      callback: 'pane:split-right'
      tooltip: 'Split Right'
      iconset: 'icomoon'
    @toolBar.addButton
      icon: 'tab'
      callback: 'tree-view:toggle'
      tooltip: 'Toggle Treeview'
      iconset: 'icomoon'
    @toolBar.addButton
      icon: 'search'
      callback: 'find-and-replace:show'
      tooltip: 'Find...'
      iconset: 'icomoon'
    @toolBar.addButton
      icon: 'shuffle'
      callback: 'find-and-replace:show-replace'
      tooltip: 'Find and Replace...'
      iconset: 'icomoon'

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'keyboard'
      callback: 'command-palette:toggle'
      tooltip: 'Command Palette...'
      iconset: 'icomoon'
    @toolBar.addButton
      icon: 'equalizer2'
      callback: 'settings-view:open'
      tooltip: 'Settings...'
      iconset: 'icomoon'
    @toolBar.addButton
      icon: 'spinner9'
      callback: 'window:reload'
      tooltip: 'Reload Window'
      iconset: 'icomoon'
    @toolBar.addButton
      icon: 'target'
      callback: ->
        require('remote').getCurrentWindow().toggleDevTools()
      tooltip: 'Toggle Developer Tools'
      iconset: 'icomoon'

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'exit'
      callback: 'tool-bar:toggle'
      tooltip: 'Close Tool-Bar'
      iconset: 'icomoon'
