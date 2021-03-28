local pid = vim.fn.getpid()
-- On linux/darwin if using a release build, otherwise under scripts/OmniSharp(.Core)(.cmd)
local omnisharp_bin = "/Users/sebastian/Developer/bin/omnisharp/run"
local util = require 'lspconfig/util'


require'lspconfig'.omnisharp.setup{
    cmd = { omnisharp_bin, "--languageserver"},
        -- "--hostPID", tostring(pid) },
    filetypes = {'cs'},
    root_dir = util.root_pattern("*.csproj", "*.sln");
}
