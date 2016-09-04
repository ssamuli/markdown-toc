Toc = require './Toc'

module.exports =
  config:
     'automatically-update':
      title: 'Automatically update TOC',
      type: 'boolean'
      default: false

  activate: (state) ->
    atom.commands.add 'atom-workspace', 'markdown-toc:create': =>
        @toc = new Toc(atom.workspace.getActivePaneItem())
        @toc.create()
    atom.commands.add 'atom-workspace', 'markdown-toc:update': =>
        @toc = new Toc(atom.workspace.getActivePaneItem())
        @toc.update()
    atom.commands.add 'atom-workspace', 'markdown-toc:delete': =>
        @toc = new Toc(atom.workspace.getActivePaneItem());
        @toc.delete()
    atom.commands.add 'atom-workspace', 'markdown-toc:toggle': =>
        @toc = new Toc(atom.workspace.getActivePaneItem())
        @toc.toggle()
    atom.commands.add 'atom-workspace', 'markdown-toc:toggle-autoupdate': =>
        @toc = new Toc(atom.workspace.getActivePaneItem())
        @toc.toggle_autoupdate()

  # deactivate: ->
  #   @toc.destroy()
