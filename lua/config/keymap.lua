local function map(mode, lhs, rhs, desc)
	vim.keymap.set(mode, lhs, rhs, { silent = true, noremap = true, desc = desc })
end

map("n", "<leader>A", "<cmd>WhichKey<CR>", "Which-Key Pop-Up Menu Interface")

map("n", "<leader>T", "<cmd>BabelWord<CR>", "translate word")
map("v", "<leader>T", "<cmd>Babel<CR>", "translate selection")

-- a: Actions / AI
map("n", "<leader>aa", "<cmd>lua require('tiny-code-action').code_action()<CR>", "LSP [a]ctions")

-- b: Buffers
map("n", "<leader>bb", "<C-^>", "switch [b]uffers")
map("n", "<leader>bd", "<cmd>bdelete<CR>", "[d]elete buffer")
map("n", "<leader>bo", "<cmd>%bd|e#|bd#<CR>", "delete [o]ther buffers")
map("n", "<leader>bs", "<cmd>Telescope buffers<CR>", "[s]how all buffers")

-- c: Code / Compiler
map("n", "<leader>cc", require("config.functions").generate_doc_comment, "generate [c]omment")
map("n", "<leader>cd", "<cmd>lua require('hover').open()<CR>", "code [d]efinition")
map("n", "<leader>ce", require("config.functions").execute_current_file, "[e]xecute code")
map("n", "<leader>cf", "<cmd>lua require('conform').format()<CR>", "[f]ormat code")
map("n", "<leader>cr", "<cmd>Trouble lsp toggle<CR>", "code [r]eferences/definitions")
map("n", "<leader>cs", "<cmd>Trouble symbols toggle <CR>", "code [s]ymbols")

-- d: Debug
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", "toggle debug [b]reakpoint")
map("n", "<leader>dc", "<cmd>DapContinue<CR>", "[c]ontinue debug execution")
map("n", "<leader>de", "<cmd>lua require('dapui').eval()<CR>", "[e]val under cursor")
map("n", "<leader>df", "<cmd>DapShowLog<CR>", "show [f]ile log")
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
map("n", "<leader>dt", "<cmd>DapTerminate<CR>", "debug [t]erminate")
map("n", "<leader>du", "<cmd>lua require('dapui').toggle()<CR>", "[u]i interface")
map("n", "<leader>dw", "<cmd>lua require('dap.ui.widgets').hover()<CR>", "debug [w]idgets")

-- e: Explorer
map("n", "<leader>e", "<cmd>Yazi<CR>", "yazi [e]xplorer")

-- f: Find / File
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", "[f]ind")
map("n", "<leader>fn", require("config.functions").new_file, "[n]ew archive in actual dir")
map("n", "<leader>ft", "<cmd>Telescope<CR>", "[t]elescope")
map("n", "<leader>fz", "<cmd>FzfLua<CR>", "f[z]f")

-- g: Git / GitHub / GitLab
map("n", "<leader>gc", "<cmd>GistCreate<CR>", "[c]reate gist")
map("n", "<leader>gd", "<cmd>CodeDiff<CR>", "toggle [d]iff view")
map("n", "<leader>gf", "<cmd>GistCreateFromFile<CR>", "create gist from [f]ile")
map("n", "<leader>gg", "<cmd>LazyGit<CR>", "open [g]it")
map("n", "<leader>gi", "<cmd>Octo issue list<CR>", "GitHub [i]ssues")
map("n", "<leader>gl", "<cmd>GistsList<CR>", "open gist [l]ist")
map("n", "<leader>gn", "<cmd>Octo notification list<CR>", "GitHub [n]otifications")
map("n", "<leader>gp", "<cmd>Octo pr list<CR>", "GitHub [p]ull requests")
map("n", "<leader>gr", "<cmd>Octohub<CR>", "GitHub [r]epositories")
map("n", "<leader>gw", "<cmd>Pipeline<cr>", "GitHub [w]orkflows")

-- h: Hardtime / Help
map("n", "<leader>hh", "<cmd>Hardtime toggle<CR>", "toggle [h]ard navigation")

-- i: Insert / Image
map("n", "<leader>ip", "<cmd>PasteImage<CR>", "[p]aste image")
map("n", "<leader>ia", "<cmd>lua require('nvim-autopairs').toggle()<CR>", "toggle [a]uto-pairs")
map("n", "<leader>jp", require("config.functions").generate_maven_project, "create maven [p]roject")

-- l: LSP / Lazy
map("n", "<leader>lc", "<cmd>checkhealth vim.lsp<CR>", "run LSP [c]heckhealth")
map("n", "<leader>ld", "<cmd>TinyInlineDiag toggle<CR>", "toggle inline [d]iagnostics")
map("n", "<leader>lh", "<cmd>Telescope fidget<CR>", "LSP [h]istory")
map("n", "<leader>ll", "<cmd>Lazy<CR>", "[l]azy")
map("n", "<leader>lm", "<cmd>Mason<CR>", "[m]ason")
map("n", "<leader>lu", "<cmd>MasonUpdate<CR>", "mason [u]pdate")

-- n: Notes / Notifications
map("n", "<leader>nh", "<cmd>Telescope notify<CR>", "notifications [h]istory")
map("n", "<leader>nt", "<cmd>TodoTelescope<CR>", "[t]odo's")

-- o: Others / Org
map("n", "<leader>ou", "<cmd>URLOpenUnderCursor<CR>", "open [u]rl link under cursor")

-- p: Project
map("n", "<leader>pa", "<cmd>Project add<CR>", "[a]dd project to list")
map("n", "<leader>pd", "<cmd>Project delete<CR>", "[d]elete project from list")
map("n", "<leader>pl", "<cmd>Telescope projects<CR>", "open project [l]ist")
map("n", "<leader>po", "<cmd>Project<CR>", "open project [o]ptions")

-- q: Quit / Session
map("n", "<leader>qf", "<cmd>qall!<CR>", "quit [f]orce")
map("n", "<leader>qs", "<cmd>confirm qall<CR>", "quit [s]aving")

-- r: Refactor
map("n", "<leader>rr", vim.lsp.buf.rename, "[r]ename symbol")

-- s: Search / SQL / Store
map("n", "<leader>sc", "<cmd>DBConnect<CR>", "[c]onnect database (with credentials)")
map("n", "<leader>sp", "<cmd>Store<CR>", "search [p]lugins")
map("n", "<leader>st", "<cmd>Telescope live_grep<CR>", "search [t]ext")
map("n", "<leader>su", "<cmd>DBUI<CR>", "database [u]i")

-- t: Test
map("n", "<leader>tc", "<cmd>lua require('neotest').run.run(vim.uv.cwd())<CR>", "run tests in [c]wd")
map("n", "<leader>tl", "<cmd>lua require('neotest').run.run_last()<CR>", "run [l]ast test")
map("n", "<leader>tn", "<cmd>lua require('neotest').run.run()<CR>", "run [n]earest test")
map("n", "<leader>to", "<cmd>lua require('neotest').summary.toggle()<CR>", "toggle test [o]verview")
map("n", "<leader>tp", "<cmd>lua require('neotest').output_panel.toggle()<CR>", "toggle output [p]anel")
map("n", "<leader>ts", "<cmd>lua require('neotest').run.stop()<CR>", "[s]top tests")
map("n", "<leader>tt", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>", "run [t]ests")

-- u: UI / Appearance
map("n", "<leader>uc", require("config.functions").toggle_cursor_animation, "toggle [c]ursor animation")
map("n", "<leader>ud", require("config.functions").toggle_diagnostics, "toggle [d]iagnostics")
map("n", "<leader>uf", require("config.functions").toggle_autoformat, "toggle auto[f]ormat")
map("n", "<leader>uh", require("config.functions").toggle_inlay_hints, "toggle inlay [h]ints")
map("n", "<leader>um", require("config.functions").toggle_motion_hints, "toggle [m]otion hints")
map("n", "<leader>ut", require("config.functions").toggle_transparency, "toggle [t]ransparent background")
map("n", "<leader>uu", require("config.functions").toggle_ui, "toggle [u]i")
map("n", "<leader>uv", require("config.functions").toggle_csv_view, "toggle cs[v] view")
map("n", "<leader>uz", require("config.functions").toggle_zen_mode, "toggle [z]en mode")

-- w: Windows
map("n", "<leader>ww", "<C-w>w", "next [w]indow")

-- x: Diagnostics
map("n", "<leader>xd", "<cmd>Trouble diagnostics toggle<CR>", "toggle [d]iagnostics")
map("n", "<leader>xf", "<cmd>Trouble qflist toggle<CR>", "toggle [f]ix list")
map("n", "<leader>xh", "<cmd>checkhealth<CR>", "run check[h]ealth")
map("n", "<leader>xl", require("config.functions").lint_file, "run [l]inter in cursor")
map("n", "<leader>xu", "<cmd>Trouble loclist toggle<CR>", "[u]bication list")

-- y: Yank
map("n", "<leader>yh", "<cmd>Telescope neoclip<CR>", "yank [h]istory")

