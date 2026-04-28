local M = {}

-- Marinette's palette
local p = {
	-- Core Ladybug colors (kept for errors/diagnostics)
	ladybug_red = "#E5383B", -- her suit — reserved for errors
	spot_black = "#181616", -- ladybug spots, deep night
	midnight = "#1D1A1B", -- Paris rooftops at midnight

	-- Marinette's pinks (her room, her style, her keywords~)
	blush = "#F2ACB9", -- soft blush pink
	rose = "#E76F8B", -- her signature pink
	keyword = "#FF99BA", -- bold keyword pink
	deep_pink = "#C2185B", -- deep magenta-pink accent
	light_pink = "#F8D7E0", -- gentle highlight

	-- Tikki & magic
	tikki_pink = "#FF80AB", -- Tikki's warm pink glow
	miraculous_gold = "#FFD166", -- the Miraculous jewels
	lucky_charm = "#FF9F1C", -- Lucky Charm shimmer

	-- More pinks (because cute)
	petal_pink = "#F48FB1", -- warm medium pink
	sakura = "#F8BBD0", -- soft cherry blossom
	info_blue = "#7EC8E3", -- kept for diagnostics
	eiffel_grey = "#8D99AE", -- steel of the Eiffel Tower
	soft_lilac = "#CDB4DB", -- twilight over Montmartre

	-- Fashion & design
	fabric_white = "#EDF2F4", -- clean canvas
	cream = "#FFF1E6", -- sketchbook paper
	stitch_green = "#95D5B2", -- thread & accents
	ribbon_purple = "#9B5DE5", -- ribbon accents

	-- Foundations (don't touch the bg~)
	bg = "#000000", -- Marinette's S6 near-black blazer, deepest shadow
	bg_lighter = "#0E0D0D", -- slightly lifted charcoal
	bg_float = "#181616", -- floating windows
	fg = "#EDF2F4", -- clean text
	fg_dim = "#8D99AE", -- dimmed text
	comment = "#6C7A96", -- subtle commentary
	selection = "#2D2A2A", -- selected text bg
	line = "#131111", -- cursor line
	none = "NONE",
}

function M.setup()
	local hi = function(group, opts)
		vim.api.nvim_set_hl(0, group, opts)
	end

	---------------------------------------------------------------------------
	-- Editor UI
	---------------------------------------------------------------------------
	hi("Normal", { fg = p.fg, bg = p.bg })
	hi("NormalFloat", { fg = p.fg, bg = p.bg_float })
	hi("FloatBorder", { fg = p.rose, bg = p.bg_float })
	hi("Cursor", { fg = p.bg, bg = p.keyword })
	hi("CursorLine", { bg = p.line })
	hi("CursorColumn", { bg = p.line })
	hi("ColorColumn", { bg = p.line })
	hi("LineNr", { fg = p.comment })
	hi("CursorLineNr", { fg = p.miraculous_gold, bold = true })
	hi("SignColumn", { fg = p.comment, bg = p.bg })
	hi("VertSplit", { fg = p.selection })
	hi("WinSeparator", { fg = p.selection })
	hi("StatusLine", { fg = p.fg, bg = p.bg_lighter })
	hi("StatusLineNC", { fg = p.fg_dim, bg = p.bg })
	hi("TabLine", { fg = p.fg_dim, bg = p.bg_lighter })
	hi("TabLineFill", { bg = p.bg })
	hi("TabLineSel", { fg = p.fg, bg = p.rose, bold = true })
	hi("Pmenu", { fg = p.fg, bg = p.bg_float })
	hi("PmenuSel", { fg = p.fg, bg = p.selection })
	hi("PmenuSbar", { bg = p.bg_lighter })
	hi("PmenuThumb", { bg = p.rose })
	hi("Visual", { bg = p.selection })
	hi("VisualNOS", { bg = p.selection })
	hi("Search", { fg = p.bg, bg = p.miraculous_gold })
	hi("IncSearch", { fg = p.bg, bg = p.lucky_charm })
	hi("CurSearch", { fg = p.bg, bg = p.keyword })
	hi("MatchParen", { fg = p.miraculous_gold, bold = true, underline = true })
	hi("Folded", { fg = p.comment, bg = p.bg_lighter })
	hi("FoldColumn", { fg = p.comment, bg = p.bg })
	hi("NonText", { fg = p.selection })
	hi("SpecialKey", { fg = p.selection })
	hi("Whitespace", { fg = p.selection })
	hi("EndOfBuffer", { fg = p.bg })
	hi("Directory", { fg = p.petal_pink })
	hi("Title", { fg = p.rose, bold = true })
	hi("ErrorMsg", { fg = p.ladybug_red, bold = true })
	hi("WarningMsg", { fg = p.lucky_charm })
	hi("ModeMsg", { fg = p.blush, bold = true })
	hi("MoreMsg", { fg = p.stitch_green })
	hi("Question", { fg = p.petal_pink })
	hi("WildMenu", { fg = p.bg, bg = p.rose })

	---------------------------------------------------------------------------
	-- Diff
	---------------------------------------------------------------------------
	hi("DiffAdd", { bg = "#1a2e1a" })
	hi("DiffChange", { bg = "#2e2e1a" })
	hi("DiffDelete", { fg = p.deep_pink, bg = "#2e1a1a" })
	hi("DiffText", { bg = "#3e3e2a" })

	---------------------------------------------------------------------------
	-- Syntax (where the magic happens~)
	---------------------------------------------------------------------------
	-- Keywords glow pink — bold and cute, like Marinette herself
	hi("Keyword", { fg = p.keyword, bold = true })
	hi("Statement", { fg = p.keyword })
	hi("Conditional", { fg = p.keyword })
	hi("Repeat", { fg = p.keyword })
	hi("Exception", { fg = p.deep_pink })
	hi("Operator", { fg = p.blush })
	hi("Label", { fg = p.rose })

	-- Functions are her signature pink — creative and elegant
	hi("Function", { fg = p.fg, bold = true })
	hi("Identifier", { fg = p.fg })

	-- Strings are petal pink — soft and sweet
	hi("String", { fg = p.miraculous_gold })
	hi("Character", { fg = p.miraculous_gold })

	-- Types are soft lilac — structured yet beautiful
	hi("Type", { fg = p.fg })
	hi("StorageClass", { fg = p.fg })
	hi("Structure", { fg = p.fg })
	hi("Typedef", { fg = p.fg })

	-- Numbers & booleans shimmer gold — like the Miraculous
	hi("Number", { fg = p.miraculous_gold })
	hi("Float", { fg = p.miraculous_gold })
	hi("Boolean", { fg = p.lucky_charm })

	-- Constants carry Tikki's warm pink glow
	hi("Constant", { fg = p.fg })
	hi("Define", { fg = p.fg })
	hi("Macro", { fg = p.fg })
	hi("PreProc", { fg = p.fg })
	hi("Include", { fg = p.fg })
	hi("PreCondit", { fg = p.fg })

	-- Comments are Eiffel Tower grey — sturdy and quiet
	hi("Comment", { fg = p.comment, italic = true })
	hi("SpecialComment", { fg = p.eiffel_grey, italic = true })
	hi("Todo", { fg = p.miraculous_gold, bg = p.bg_lighter, bold = true })

	-- Special / decorators get ribbon purple
	hi("Special", { fg = p.ribbon_purple })
	hi("SpecialChar", { fg = p.ribbon_purple })
	hi("Tag", { fg = p.rose })
	hi("Delimiter", { fg = p.fg_dim })

	-- Errors are unmissable
	hi("Error", { fg = p.ladybug_red, undercurl = true })
	hi("Underlined", { fg = p.petal_pink, underline = true })

	---------------------------------------------------------------------------
	-- Treesitter
	---------------------------------------------------------------------------
	hi("@variable", { fg = p.fg })
	hi("@variable.builtin", { fg = p.fg, italic = true })
	hi("@variable.parameter", { fg = p.fg })
	hi("@variable.member", { fg = p.fg })
	hi("@constant", { fg = p.tikki_pink })
	hi("@constant.builtin", { fg = p.lucky_charm })
	hi("@module", { fg = p.soft_lilac })
	hi("@string", { fg = p.petal_pink })
	hi("@string.escape", { fg = p.sakura })
	hi("@string.regex", { fg = p.sakura })
	hi("@character", { fg = p.sakura })
	hi("@number", { fg = p.miraculous_gold })
	hi("@boolean", { fg = p.lucky_charm })
	hi("@float", { fg = p.miraculous_gold })
	hi("@function", { fg = p.fg, bold = true })
	hi("@function.builtin", { fg = p.keyword })
	hi("@function.macro", { fg = p.keyword })
	hi("@method", { fg = p.fg })
	hi("@constructor", { fg = p.soft_lilac, bold = true })
	hi("@keyword", { fg = p.keyword, bold = true })
	hi("@keyword.function", { fg = p.keyword })
	hi("@keyword.return", { fg = p.deep_pink, bold = true })
	hi("@keyword.operator", { fg = p.blush })
	hi("@conditional", { fg = p.keyword })
	hi("@repeat", { fg = p.keyword })
	hi("@exception", { fg = p.deep_pink })
	hi("@type", { fg = p.fg })
	hi("@type.builtin", { fg = p.fg, italic = true })
	hi("@property", { fg = p.blush })
	hi("@attribute", { fg = p.ribbon_purple })
	hi("@punctuation.bracket", { fg = p.fg_dim })
	hi("@punctuation.delimiter", { fg = p.fg_dim })
	hi("@punctuation.special", { fg = p.ribbon_purple })
	hi("@comment", { fg = p.comment, italic = true })
	hi("@tag", { fg = p.rose })
	hi("@tag.attribute", { fg = p.blush, italic = true })
	hi("@tag.delimiter", { fg = p.fg_dim })
	hi("@text.title", { fg = p.rose, bold = true })
	hi("@text.strong", { bold = true })
	hi("@text.emphasis", { italic = true })
	hi("@text.uri", { fg = p.petal_pink, underline = true })

	---------------------------------------------------------------------------
	-- LSP Diagnostics
	---------------------------------------------------------------------------
	hi("DiagnosticError", { fg = p.ladybug_red })
	hi("DiagnosticWarn", { fg = p.lucky_charm })
	hi("DiagnosticInfo", { fg = p.info_blue })
	hi("DiagnosticHint", { fg = p.stitch_green })
	hi("DiagnosticUnderlineError", { undercurl = true, sp = p.ladybug_red })
	hi("DiagnosticUnderlineWarn", { undercurl = true, sp = p.lucky_charm })
	hi("DiagnosticUnderlineInfo", { undercurl = true, sp = p.info_blue })
	hi("DiagnosticUnderlineHint", { undercurl = true, sp = p.stitch_green })

	---------------------------------------------------------------------------
	-- LSP Inlay Hints
	---------------------------------------------------------------------------
	hi("LspInlayHint", { fg = "#6C7A96", bg = "#131111", italic = true })

	---------------------------------------------------------------------------
	-- Git Signs
	---------------------------------------------------------------------------
	hi("GitSignsAdd", { fg = p.stitch_green })
	hi("GitSignsChange", { fg = p.petal_pink })
	hi("GitSignsDelete", { fg = p.deep_pink })

	---------------------------------------------------------------------------
	-- Telescope
	---------------------------------------------------------------------------
	hi("TelescopeBorder", { fg = p.rose })
	hi("TelescopePromptBorder", { fg = p.rose })
	hi("TelescopePromptTitle", { fg = p.keyword, bold = true })
	hi("TelescopePreviewTitle", { fg = p.stitch_green, bold = true })
	hi("TelescopeResultsTitle", { fg = p.petal_pink, bold = true })
	hi("TelescopeSelection", { bg = p.selection })
	hi("TelescopeMatching", { fg = p.miraculous_gold, bold = true })

	---------------------------------------------------------------------------
	-- Indent Blankline
	---------------------------------------------------------------------------
	hi("IndentBlanklineChar", { fg = p.selection })
	hi("IndentBlanklineContextChar", { fg = p.rose })

	---------------------------------------------------------------------------
	-- Neotree / Nvimtree
	---------------------------------------------------------------------------
	hi("NeoTreeDirectoryIcon", { fg = p.rose })
	hi("NeoTreeDirectoryName", { fg = p.petal_pink })
	hi("NeoTreeRootName", { fg = p.rose, bold = true })
	hi("NeoTreeFileName", { fg = p.fg })
	hi("NeoTreeGitAdded", { fg = p.stitch_green })
	hi("NeoTreeGitModified", { fg = p.petal_pink })
	hi("NeoTreeGitDeleted", { fg = p.deep_pink })
end

return M
