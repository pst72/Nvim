#!/usr/bin/env python3

# must run ` nvim -c "echo v:servername" ` to get the name of the current vim instance
# this makes hello world appear in the statusline of nvim

from pynvim import attach

nvim = attach("socket", path="/tmp/nvimCU5Gvo/0")
nvim.command('echo "hello world!"')
