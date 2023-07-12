function pyvenv_prompt_info() {
  if [ -n "$VIRTUAL_ENV" ]; then
    local PYTHON_VER="python $(python --version | grep -P '\d+\.\d+\.\d+' -o)"
    local PIP_VER="pip $(pip --version | grep -P '\d+\.\d+\.\d+' -o)"

    echo "venv: ${PYTHON_VER}, ${PIP_VER}"
  fi
}
