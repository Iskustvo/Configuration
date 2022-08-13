#!/bin/zsh

# Decide which prompt and cursor shapes will be used, based on terminal emulator.
if [[ "${TERM}" == 'linux' ]]; then
    PROMPT_GENERATOR="${ZDOTDIR}/prompts/simple_tty_prompt"
    INSERT_CURSOR=$'\e[?2;12;224;c'
    NORMAL_CURSOR=$'\e[?16;12;224;c'
else
    PROMPT_GENERATOR="${ZDOTDIR}/prompts/fancy_prompt"
    INSERT_CURSOR=$'\e[6 q'
    NORMAL_CURSOR=$'\e[2 q'
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

# Configure highlighting - Must be last to work correctly.
source "${ZDOTDIR}/highlights"
