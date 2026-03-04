# -------------------
# COMMON DEPENDENCIES
# -------------------

# Aliases
source $HELPERS_DIR/aliases.sh
source $HELPERS_DIR/aliases_osx.sh

# Custom helper functions
source $HELPERS_DIR/functions.sh

export EDITOR=vim

# ---------------
# Local overrides
# ---------------
OVERRIDES_SH="${HOME}/.zshrc.local.sh"
touch "${OVERRIDES_SH}" && source "${OVERRIDES_SH}"
alias work="vim ${OVERRIDES_SH}"
