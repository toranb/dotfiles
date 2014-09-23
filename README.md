dotfiles for the javascript and python developer
===========

Install instructions
--------------------
1. Clone this repo into ~/dotfiles
2. Run the symlink.sh script which will create the required symlinks in your home folder
3. Pip install jedi globally
4. After installation the first time you open vim run :NeoBundleInstall wait for it to complete and exit vim

What I find helpful about this configuration
--------------------------------------------

**The prompt**

    activates any python virtualenv matching the name of your directory
    activates any rvm gemset matching the name of your directory
    adds any local node_modules to your path so you can execute them
    move to the beginning of the line = control a
    move to the end of the line = control e
    move forward a word = control f
    move backward a word = control b
    delete a letter (the one under the cursor) = control d

**TMUX integration (to start a new session type tmux/ to join tmux attach)**

*the tmux leader key is control plus spacebar*

    create a new "tab" in tmux = leader c
    rename a tab in tmux = leader ,
    switch tabs in tmux = leader # (meaning the number of the tab)
    create split virtical split in tmux = leader -
    create split horizontal split in tmux = leader |
    move between all panes /tabs using tmux = vim keybindings (j/k/h/l)
    move up to read a stack trace in tmux = leader spacebar then vim keybindings
    copy to tmux buffer = leader spacebar then go into visual mode and y to copy
    paste from tmux buffer = leader spacebar then go into visual mode and p to paste
    resize a split in tmux = leader option arrow (left / right / up / down)

**VIM project navigation (always open vim from the project root)**

*the vim leader key is spacebar*

    basic movement in vim (j/k/h/l)
    sneak plugin = f (followed by 2 chars you want to search for)
    W = if you use capital W it will move like word but between words-with-hyphens_or_underscores
    find by file = leader ff
    find in buffer = leader fb
    switch between 2 buffers = leader spacebar
    ack across the project = leader a
    grep -v that ack search results window = leader v
    to keep that quick window open select an item with o (not enter)

    nerd tree (2 different ways to open it)
    leader d will open the directory tree (no context)
    leader nt will open the directory and navigate to the active file
    search for a word in a specific directory = ms (within nerd tree)
    create new directory/file in nerd tree = ma (within nerd tree)
    delete a file in nerd tree = md (within nerd tree)
    move/rename a file in nerd tree = mm (within nerd tree)
    copy file = leader cf (give the new file a name and hit enter)

    jump to definition = leader j
    if you jump to def in a non python file ctags are required
    generate a ctags file for the above (think reindex) = leader ri

    visual find/replace = leader fr
    copy/paste will use your system clipboard from vim
    to clear your search in vim = esc esc
    jj and jk are both remapped to escape to stay on home row

    test method = leader tm
    test class/module = leader tc
    test file = leader tf

    to run the python tests for django web apps the .vim-django file is required
    https://github.com/JarrodCTaylor/vim-python-test-runner

    to run the javascript tests out of the box it's setup for mocha and npm test
    https://github.com/toranb/vim-mocha-special-blend

    to run qunit tests just modify the command invoked to be qunit instead
    https://github.com/JarrodCTaylor/vim-qunit-special-blend
