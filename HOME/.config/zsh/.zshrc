#!/bin/zsh

# TODO:
#       Improve completions.
#       Improve highlightings.
#       Fix cursor bug when in visual mode.

# Decide which prompt and cursor shapes will be used, based on terminal emulator.
if [[ "${TERM}" == 'linux' ]]; then
    PROMPT_GENERATOR="${ZDOTDIR}/prompts/simple_tty_prompt"
    INSERT_CURSOR='[?2;12;224;c'
    NORMAL_CURSOR='[?16;12;224;c'
else
    PROMPT_GENERATOR="${ZDOTDIR}/prompts/fancy_prompt"
    INSERT_CURSOR='[6 q'
    NORMAL_CURSOR='[2 q'
fi

# Configure settings.
source "${ZDOTDIR}/settings"

# Configure keybindings.
source "${ZDOTDIR}/keybindings"

# Configure hooks.
source "${ZDOTDIR}/hooks"

# Configure completions.
source "${ZDOTDIR}/completions"

# Configure aliases.
source "${ZDOTDIR}/aliases"

# Configure syntax highlightings.
source "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
