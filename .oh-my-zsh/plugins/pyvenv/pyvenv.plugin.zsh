PYVENV_PREFIX='('
PYVENV_SUFFIX=')'
PYVENV_NOVENV=''

function pyvenv_prompt_info() {
  if [ -n "$VIRTUAL_ENV" ]; then
    local PYTHON_VER="$(python --version | grep -P '\d+\.\d+\.\d+' -o)"
    echo "${PYVENV_PREFIX}venv ${PYTHON_VER}${PYVENV_SUFFIX}"
  else
    echo "${PYVENV_NOVENV}"
  fi
}

