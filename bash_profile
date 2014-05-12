#general

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ]; then
  source "${HOME}/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/bin" ]; then
  PATH="${HOME}/bin:${PATH}"
fi

# Set MANPATH so it includes users' private man if it exists
if [ -d "${HOME}/man" ]; then
  MANPATH="${HOME}/man:${MANPATH}"
fi

# Set INFOPATH so it includes users' private info if it exists
if [ -d "${HOME}/info" ]; then
  INFOPATH="${HOME}/info:${INFOPATH}"
fi

if [ -d "${HOME}/lib" ]; then
    LD_LIBRARY_PATH="${HOME}/lib:${LD_LIBRARY_PATH}"
fi

USERNAME=""
PATH=".:${PATH}"

C_INCLUDE_PATH="${HOME}/include:${C_INCLUDE_PATH}"
CPLUS_INCLUDE_PATH="${HOME}/include:${CPLUS_INCLUDE_PATH}"


export USERNAME BASH_ENV PATH DISPLAY C_INCLUDE_PATH CPLUS_INCLUDE_PATH
