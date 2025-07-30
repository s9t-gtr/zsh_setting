# Blue Elegance — Powerlevel10k configuration
# Palette reference
#   deep_blue   : #5f7585 (background)
#   medium_blue : #7d9aae (secondary background)
#   accent_gold : #d5ac3b (accents / warnings)
#   light_silver: #e1e6eb (primary foreground)

# --- Basic prompt layout -----------------------------------------------------

# Two-line prompt: directory + git on first line, status/time on right; minimal
# prompt symbol on second line.
typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs newline prompt_char)
typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time time)

# --- Colors ------------------------------------------------------------------
# Gap filler & multiline ornaments
typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_FOREGROUND="#d5ac3b"

# OS icon (first segment) — gold on silver
typeset -g POWERLEVEL9K_OS_ICON_FOREGROUND="#e1e6eb"
typeset -g POWERLEVEL9K_OS_ICON_BACKGROUND="#d5ac3b"
# Nice unicode chess knight to match elegance vibe
typeset -g POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION='♞'

# Directory segment — silver text on medium blue
typeset -g POWERLEVEL9K_DIR_BACKGROUND="#7d9aae"
typeset -g POWERLEVEL9K_DIR_FOREGROUND="#e1e6eb"

# Git status segment inherits directory colors for visual grouping
# Clean → medium blue, dirty → gold
typeset -g POWERLEVEL9K_VCS_CLEAN_BACKGROUND="#7d9aae"
typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND="#e1e6eb"
typeset -g POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="#d5ac3b"
typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="#e1e6eb"

# Prompt character — shows result of previous command
# OK ⇒ silver, Error ⇒ gold
typeset -g POWERLEVEL9K_PROMPT_CHAR_BACKGROUND=
# Success
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND="#e1e6eb"
# Error
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND="#d5ac3b"
# Symbols
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_VIINS_CONTENT_EXPANSION='❯'
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_VIINS_CONTENT_EXPANSION='❯'

# Status segment (right)
typeset -g POWERLEVEL9K_STATUS_OK_BACKGROUND="#7d9aae"
typeset -g POWERLEVEL9K_STATUS_OK_FOREGROUND="#e1e6eb"
typeset -g POWERLEVEL9K_STATUS_ERROR_BACKGROUND="#d5ac3b"
typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND="#e1e6eb"

# Command execution time & clock for long-running commands — neutral silver on deep blue
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="#e1e6eb"
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="#5f7585"
typeset -g POWERLEVEL9K_TIME_FOREGROUND="#e1e6eb"
typeset -g POWERLEVEL9K_TIME_BACKGROUND="#5f7585"

# --- Stylistic tweaks --------------------------------------------------------
# Show a subtle dotted gap (Japanese dot) between left/right parts
typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_GAP_CHAR='･'
typeset -g POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='\u2502'
typeset -g POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR='\u2502'
typeset -g POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
typeset -g POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
# Remove visible end symbols for cleaner look
typeset -g POWERLEVEL9K_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL=''
typeset -g POWERLEVEL9K_RIGHT_PROMPT_FIRST_SEGMENT_START_SYMBOL=''

# --- Misc --------------------------------------------------------------------
# Add an empty line before each prompt for readability
typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# Use Nerd Font icons
typeset -g POWERLEVEL9K_MODE=nerdfont-complete 