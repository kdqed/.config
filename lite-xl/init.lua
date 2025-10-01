-- put user settings here
-- this module will be loaded after everything else when the application starts
-- it will be automatically reloaded when saved

local core = require "core"
local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"
local common = require "core.common"

------------------------------ Themes ----------------------------------------
style.background = { common.color "#0a1212" }
style.background2 = { common.color "#0a1212" }
style.background3 = { common.color "#1e2524" }
style.text = { common.color "#b9b5b0" }
style.caret = { common.color "#b9b5b0" }
style.accent = { common.color "#5caba6" }

style.dim = { common.color "#b9b5b080" }
style.divider = { common.color "#0a1212" }
style.selection = { common.color "#b9b5b020" }
style.line_number = { common.color "#b9b5b060" }
style.line_number2 = { common.color "#b9b5b0d0" }
style.line_highlight = { common.color "#0a1212" }
style.scrollbar = { common.color "#b9b5b060" }
style.scrollbar2 = { common.color "#b9b5b000" }
style.scrollbar_track = { common.color "#0a1212" }

style.nagbar = { common.color "#d8726f80" }
style.nagbar_text = { common.color "#b9b5b0" }
style.nagbar_dim = { common.color "#b9b5b0c0" }

style.good = { common.color "#71d26f" }
style.warn = { common.color "#aeab5c" }
style.error = { common.color "#d8726f" }
style.modified = { common.color "#7172cc" }

style.drag_overlay = { common.color "#0a1212" }
style.drag_overlay_tab = { common.color "#0a1212" }

style.syntax["normal"] = { common.color "#b9b5b0" }
style.syntax["symbol"] = { common.color "#b9b5b0" }
style.syntax["comment"] = { common.color "#b9b5b080" }
style.syntax["keyword"] = { common.color "#b9b5b0b0" }
style.syntax["keyword2"] = { common.color "#71d26f" }
style.syntax["number"] = { common.color "#ae5ea6" }
style.syntax["literal"] = { common.color "#d8726f" }
style.syntax["string"] = { common.color "#aeab5c" }
style.syntax["operator"] = { common.color "#b9b5b0" }
style.syntax["function"] = { common.color "#5caba6" }

config.highlight_current_line = "no_selection"

style.guide = { common.color "#b9b5b080" }
style.bracketmatch_color = { common.color "#b9b5b080" }

style.log["INFO"]  = { icon = "i", color = style.text }
style.log["WARN"]  = { icon = "!", color = style.warn }
style.log["ERROR"] = { icon = "!", color = style.error }

--------------------------- Key bindings -------------------------------------

-- key binding:
-- keymap.add { ["ctrl+escape"] = "core:quit" }

-- pass 'true' for second parameter to overwrite an existing binding
-- keymap.add({ ["ctrl+pageup"] = "root:switch-to-previous-tab" }, true)
-- keymap.add({ ["ctrl+pagedown"] = "root:switch-to-next-tab" }, true)

------------------------------- Fonts ----------------------------------------

-- customize fonts:
-- style.font = renderer.font.load(DATADIR .. "/fonts/FiraSans-Regular.ttf", 14 * SCALE)
-- style.code_font = renderer.font.load(DATADIR .. "/fonts/JetBrainsMono-Regular.ttf", 14 * SCALE)
--
-- DATADIR is the location of the installed Lite XL Lua code, default color
-- schemes and fonts.
-- USERDIR is the location of the Lite XL configuration directory.
--
-- font names used by lite:
-- style.font          : user interface
-- style.big_font      : big text in welcome screen
-- style.icon_font     : icons
-- style.icon_big_font : toolbar icons
-- style.code_font     : code
--
-- the function to load the font accept a 3rd optional argument like:
--
-- {antialiasing="grayscale", hinting="full", bold=true, italic=true, underline=true, smoothing=true, strikethrough=true}
--
-- possible values are:
-- antialiasing: grayscale, subpixel
-- hinting: none, slight, full
-- bold: true, false
-- italic: true, false
-- underline: true, false
-- smoothing: true, false
-- strikethrough: true, false

config.line_height = 1.7
style.font = renderer.font.load("/usr/share/fonts/JetBrainsMono/JetBrainsMonoNerdFont-Medium.ttf", 13.5 * SCALE)
style.code_font = renderer.font.load("/usr/share/fonts/JetBrainsMono/JetBrainsMonoNerdFont-Medium.ttf", 14.5 * SCALE)

------------------------------ Plugins ----------------------------------------

-- disable plugin loading setting config entries:

-- disable plugin detectindent, otherwise it is enabled by default:
-- config.plugins.detectindent = false

---------------------------- Miscellaneous -------------------------------------

core.status_view:hide()
core.status_view:display_messages(false)

-- modify list of files to ignore when indexing the project:
config.ignore_files = {
  -- folders
  "^%.svn/",        "^%.git/",   "^%.hg/",        "^CVS/", "^%.Trash/", "^%.Trash%-.*/",
  "^node_modules/", "^%.cache/", "^__pycache__/",
  -- files
  "%.pyc$",         "%.pyo$",       "%.exe$",        "%.dll$",   "%.obj$", "%.o$",
  "%.a$",           "%.lib$",       "%.so$",         "%.dylib$", "%.ncb$", "%.sdf$",
  "%.suo$",         "%.pdb$",       "%.idb$",        "%.class$", "%.psd$", "%.db$",
  "^desktop%.ini$", "^%.DS_Store$", "^%.directory$",
}

