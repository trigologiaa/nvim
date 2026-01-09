function map(mode, lhs, rhs, desc)
	vim.keymap.set(mode, lhs, rhs, { silent = true, noremap = true, desc = desc })
end

map("n", "<leader>A", "", "Which-Key Pop-Up Menu Interface")
map("n", "<leader>L", "<cmd>Lazy<CR>", "Lazy")
map("n", "<leader>M", "<cmd>Mason<CR>", "Mason")
map("n", "<leader>S", "<cmd>Store<CR>", "Store")
map("n", "<leader>T", "<cmd>BabelWord<CR>", "translate word")
map("v", "<leader>T", "<cmd>Babel<CR>", "translate selection")

-- a: Actions / AI
map("n", "<leader>a", "", "Actions / AI")
map("n", "<leader>aa", "<cmd>lua require('tiny-code-action').code_action()<CR>", "LSP [a]ctions")
map("n", "<leader>al", "<cmd>GoCodeLenAct<CR>", "Code[l]ens action")

-- b: Buffers
map("n", "<leader>b", "", "Buffers")
map("n", "<leader>ba", "<cmd>GoAltV<CR>", "[a]lternate source buffer")
map("n", "<leader>bb", "<C-^>", "switch [b]uffers")
map("n", "<leader>bd", "<cmd>bdelete<CR>", "[d]elete buffer")
map("n", "<leader>bo", "<cmd>%bd|e#|bd#<CR>", "delete [o]ther buffers")
map("n", "<leader>bs", "<cmd>Telescope buffers<CR>", "[s]how all buffers")

-- c: Code / Compiler
map("n", "<leader>c", "", "Code / Compiler")
map("n", "<leader>cc", "<cmd>GoCmt<CR>", "generate [c]omment")
map("n", "<leader>cd", "<cmd>lua require('hover').open()<CR>", "code [d]efinition")
map("n", "<leader>ce", require("config.functions").execute_go_file, "[e]xecute code")
map("n", "<leader>cf", "<cmd>lua require('conform').format()<CR>", "[f]ormat code")
map("n", "<leader>ci", "<cmd>GoImports<CR>", "organize [i]mports")
map("n", "<leader>cr", "<cmd>Trouble lsp toggle<CR>", "code [r]eferences/definitions")
map("n", "<leader>cs", "<cmd>Trouble symbols toggle <CR>", "code [s]ymbols")
map("n", "<leader>ct", "<cmd>GoModTidy<CR>", "go mod [t]idy")

-- d: Debug
map("n", "<leader>d", "", "Debug")
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", "toggle debug [b]reakpoint")
map("n", "<leader>dc", "<cmd>DapContinue<CR>", "[c]ontinue debug execution")
map("n", "<leader>de", "<cmd>lua require('dapui').eval()<CR>", "[e]val under cursor")
map("n", "<leader>df", "<cmd>DapShowLog<CR>", "show [f]ile log")
map("n", "<leader>dg", "<cmd>lua require('dap.ui.widgets').hover()<CR>", "[g]et widget info")
map("n", "<leader>dh", "<cmd>lua require('dap').run_to_cursor()<CR>", "debug [h]ere")
map("n", "<leader>di", "<cmd>DapStepInto<CR>", "debug [i]nto")
map("n", "<leader>dj", "<cmd>lua require('dap').down()<CR>", "debug jump [j]")
map("n", "<leader>dk", "<cmd>lua require('dap').up()<CR>", "debug jump [k]")
map("n", "<leader>dl", "<cmd>lua require('dap').run_last()<CR>", "debug [l]ast")
map("n", "<leader>dm", "<cmd>lua require('dap').repl.toggle()<CR>", "[m]essage repl")
map("n", "<leader>dn", "<cmd>DapNew<CR>", "debug [n]ew session")
map("n", "<leader>do", "<cmd>DapStepOver<CR>", "debug step [o]ver")
map("n", "<leader>dp", "<cmd>DapPause<CR>", "debug [p]ause")
map("n", "<leader>dr", "<cmd>DapRestartFrame<CR>", "[r]estart frame")
map("n", "<leader>ds", "<cmd>DapNew<CR>", "new [s]ession")
map("n", "<leader>dt", "<cmd>DapTerminate<CR>", "debug [t]erminate")
map("n", "<leader>du", "<cmd>lua require('dapui').toggle()<CR>", "[u]i interface")
map("n", "<leader>dw", "<cmd>lua require('dap.ui.widgets').hover()<CR>", "debug [w]idgets")

-- e: Explorer
map("n", "<leader>e", "<cmd>Yazi<CR>", "yazi [e]xplorer")

-- f: Find / File
map("n", "<leader>f", "", "Find / File")
map("n", "<leader>fe", "<cmd>GoEnv<CR>", "load [e]nvironment variables")
map("n", "<leader>ff", "<cmd>FzfLua<CR>", "[f]zf")
map("n", "<leader>fn", "<cmd>GoNew<CR>", "[n]ew Go archive")
map("n", "<leader>ft", "<cmd>Telescope<CR>", "[t]elescope")

-- g: Git / GitHub / GitLab
map("n", "<leader>g", "", "Git / GitHub / GitLab")
map("n", "<leader>gc", "<cmd>GistCreate<CR>", "[c]reate gist")
map("n", "<leader>gd", "<cmd>CodeDiff<CR>", "toggle [d]iff view")
map("n", "<leader>gf", "<cmd>GistCreateFromFile<CR>", "create gist from [f]ile")
map("n", "<leader>gg", "<cmd>LazyGit<CR>", "open [g]it")
map("n", "<leader>gi", "<cmd>Octo issue list>CR>", "GitHub [i]ssues")
map("n", "<leader>gl", "<cmd>GistsList<CR>", "open gist [l]ist")
map("n", "<leader>gn", "<cmd>Octo notification list<CR>", "GitHub [n]otifications")
map("n", "<leader>gp", "<cmd>Octo pr list<CR>", "GitHub [p]ull requests")
map("n", "<leader>gr", "<cmd>Octohub<CR>", "GitHub [r]epositories")
map("n", "<leader>gw", "<cmd>Pipeline<cr>", "GitHub [w]orkflows")

-- h: Hardtime / Help
map("n", "<leader>h", "", "Hardtime / Help")
map("n", "<leader>hh", "<cmd>Hardtime toggle<CR>", "toggle [h]ard navigation")

-- i: Insert / Image
map("n", "<leader>i", "", "Insert / Image")
map("n", "<leader>ip", "<cmd>PasteImage<CR>", "[p]aste image")
map("n", "<leader>ia", "<cmd>lua require('nvim-autopairs').toggle()<CR>", "toggle [a]uto-pairs")

-- l: LSP / Lazy
map("n", "<leader>l", "", "LSP / Lazy")
map("n", "<leader>lc", "<cmd>checkhealth vim.lsp<CR>", "run LSP [c]heckhealth")
map("n", "<leader>ld", "<cmd>TinyInlineDiag toggle<CR>", "toggle inline [d]iagnostics")
map("n", "<leader>lh", "<cmd>Telescope fidget<CR>", "LSP [h]istory")
map("n", "<leader>ll", "<cmd>Lazy<CR>", "[l]azy")
map("n", "<leader>lm", "<cmd>Mason<CR>", "[m]ason")
map("n", "<leader>lu", "<cmd>MasonUpdate<CR>", "mason [u]pdate")

-- m: Markdown
map("n", "<leader>m", "", "Markdown")
map("n", "<leader>mb", "<cmd>Obsidian backlinks<CR>", "show [b]acklinks")
map("n", "<leader>me", "<cmd>Obsidian extract_note<<S-Del>CRr>", "[e]xtract to new note")
map("n", "<leader>mi", "<cmd>Obsidian template<CR>", "[i]nsert template")
map("n", "<leader>ml", "<cmd>Obsidian links<CR>", "[l]ist all links in note")
map("n", "<leader>mn", "<cmd>Obsidian new<CR>", "[n]ew note")
map("n", "<leader>mo", "<cmd>Obsidian open<CR>", "[o]pen in Obsidian App")
map("n", "<leader>mp", "<cmd>Obsidian today<CR>", "[p]resent's note")
map("n", "<leader>mr", "<cmd>Obsidian rename<CR>", "[r]ename note/reference")
map("n", "<leader>ms", "<cmd>Obsidian search<CR>", "[s]earch notes")
map("n", "<leader>mt", "<cmd>Obsidian tags<CR>", "[t]ags")
map("n", "<leader>mu", "<cmd>Obsidian tomorrow<CR>", "[u]pcoming's note")
map("n", "<leader>mw", "<cmd>Obsidian quick_switch<CR>", "s[w]itch note")
map("n", "<leader>my", "<cmd>Obsidian yesterday<CR>", "[y]esterday's note")

-- n: Notes / Notifications
map("n", "<leader>n", "", "Notes / Notifications")
map("n", "<leader>nh", "<cmd>Telescope notify<CR>", "notifications [h]istory")
map("n", "<leader>nt", "<cmd>TodoTelescope<CR>", "[t]odo's")

-- o: Others / Org
map("n", "<leader>o", "", "Others / Org")
map("n", "<leader>oe", "<cmd>Exercism list go<CR>", "open [e]xercism list")
map("n", "<leader>ol", "<cmd>Leet<CR>", "open [l]eet menu")
map("n", "<leader>ot", "<cmd>Exercism test<CR>", "run exercism [t]est")
map("n", "<leader>ou", "<cmd>URLOpenUnderCursor", "open [u]rl link under cursor")

-- p: Project
map("n", "<leader>p", "", "Project")
map("n", "<leader>pa", "<cmd>ProjectAdd<CR>", "[a]dd project to list")
map("n", "<leader>pd", "<cmd>ProjectDelete<CR>", "[d]elete project from list")
map("n", "<leader>pl", "<cmd>Telescope projects<CR>", "open project [l]ist")
map("n", "<leader>po", "<cmd>Project<CR>", "open project [o]ptions")

-- q: Quit / Session
map("n", "<leader>q", "", "Quit / Session")
map("n", "<leader>qf", "<cmd>qall!<CR>", "quit [f]orce")
map("n", "<leader>qs", "<cmd>confirm qall<CR>", "quit [s]aving")

-- r: Refactor
map("n", "<leader>r", "", "Refactor")
map("n", "<leader>ra", "<cmd>GoAddTag<CR>", "[a]dd struct tags")
map("n", "<leader>rc", "<cmd>GoClearTag<CR>", "[c]lear all tags")
map("n", "<leader>re", "<cmd>GoRmTag<CR>", "[e]liminate struct tags")
map("n", "<leader>rf", "<cmd>GoFixPlurals<CR>", "[f]ix plurals")
map("n", "<leader>rm", "<cmd>Gomvp<CR>", "[m]ove package/rename module")
map("n", "<leader>rr", vim.lsp.buf.rename, "[r]ename symbol")

-- s: Search / Store
map("n", "<leader>s", "", "Search / Store")
map("n", "<leader>sb", "<cmd>GoDocBrowser<CR>", "search [b]rowser documentation")
map("n", "<leader>sc", "<cmd>GoCheat<CR>", "search [c]heatsheet")
map("n", "<leader>sp", "<cmd>Store<CR>", "search [p]lugins")
map("n", "<leader>st", "<cmd>Telescope live_grep<CR>", "search [t]ext")

-- t: Test
map("n", "<leader>t", "", "Test")
map("n", "<leader>ta", "<cmd>GoAddTest<CR>", "[a]dd test for function")
map("n", "<leader>tc", "<cmd>lua require('neotest').run.run(vim.uv.cwd())<CR>", "run tests in [c]wd")
map("n", "<leader>te", "<cmd>GoAddExpTest<CR>", "add test for [e]xported functions")
map("n", "<leader>tl", "<cmd>lua require('neotest').run.run_last()<CR>", "run [l]ast test")
map("n", "<leader>tn", "<cmd>lua require('neotest').run.run()<CR>", "run [n]earest test")
map("n", "<leader>to", "<cmd>lua require('neotest').summary.toggle()<CR>", "toggle test [o]verview")
map("n", "<leader>tp", "<cmd>lua require('neotest').output_panel.toggle()<CR>", "toggle output [p]anel")
map("n", "<leader>ts", "<cmd>lua require('neotest').run.stop()<CR>", "[s]top tests")
map("n", "<leader>tt", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>", "run [t]ests")

-- u: UI / Appearance
map("n", "<leader>u", "", "UI / Appearance")
map("n", "<leader>uc", "<cmd>SmearCursorToggle<CR>", "toggle [c]ursor animation")
map("n", "<leader>uh", "<cmd>GoToggleInlay<CR>", "toggle inlay [h]ints")
map("n", "<leader>um", "<cmd>Precognition toggle<CR>", "toggle [m]otion hints")
map("n", "<leader>ut", require("config.functions").toggle_transparency, "toggle [t]ransparent background")
map("n", "<leader>uu", require("config.functions").toggle_ui, "toggle [u]i")
map("n", "<leader>uv", "<cmd>CsvViewToggle<CR>", "toggle cs[v] view")
map("n", "<leader>uz", "<cmd>ZenMode<CR>", "toggle [z]en mode")
map("n", "<leader>uf", require("config.functions").toggle_autoformat, "toggle auto[f]ormat")

-- w: Windows
map("n", "<leader>w", "", "Windows")
map("n", "<Tab>", "<C-w>w", "next window")

-- x: Diagnostics
map("n", "<leader>x", "", "Diagnostics")
map("n", "<leader>xc", "<cmd>GoVulnCheck<CR>", "run vuln [c]heck")
map("n", "<leader>xd", "<cmd>Trouble diagnostics toggle<CR>", "toggle [d]iagnostics")
map("n", "<leader>xe", "<cmd>GoIfErr<CR>", "generate if [e]rr")
map("n", "<leader>xf", "<cmd>Trouble qflist toggle<CR>", "toggle [f]ix list")
map("n", "<leader>xh", "<cmd>checkhealth<CR>", "run check[h]ealth")
map("n", "<leader>xl", require("config.functions").lint_go_project, "run [l]inter in terminal")
map("n", "<leader>xu", "<cmd>Trouble loclist toggle<CR>", "[u]bication list")
map("n", "<leader>xv", "<cmd>GoVet<CR>", "run [v]et")

-- y: Yank
map("n", "<leader>y", "", "Yank")
map("n", "<leader>yh", "<cmd>Telescope neoclip<CR>", "yank [h]istory")

-- z: Zen / Zoom
map("n", "<leader>z", "", "Zen / Zoom")
map("n", "<leader>zm", "<cmd>ZenMode<CR>", "toggle [z]en mode")

-- |: tabs
map("n", "<leader>|", "", "tabs")
