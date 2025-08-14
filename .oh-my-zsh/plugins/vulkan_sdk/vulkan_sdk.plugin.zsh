VULKAN_SDK_PREFIX=${VULKAN_SDK_PREFIX:='('}
VULKAN_SDK_SUFFIX=${VULKAN_SDK_SUFFIX:=')'}
VULKAN_SDK_NOVENV=${VULKAN_SDK_NOVENV:=''}

function vulkan_sdk_prompt_info() {
  if [ -n "$VULKAN_SDK" ]; then
    local SDK_DIRS=(${(@s:/:)VULKAN_SDK})
    local SDK_VERSION=${SDK_DIRS[-2]}
    local SDK_ARCH=${SDK_DIRS[-1]}
    echo "${VULKAN_SDK_PREFIX}vulkan ${SDK_VERSION}:${SDK_ARCH}${VULKAN_SDK_SUFFIX}"
  else
    echo "${VULKAN_SDK_NOVENV}"
  fi
}
