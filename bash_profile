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

if [[ $(uname) =~ "CYGWIN*" ]]
then
  if [ -d "/cygdrive/c/Program Files/MiKTeX 2.9/miktex/bin/x64" ]; then
    PATH="/cygdrive/c/Program Files/MiKTeX 2.9/miktex/bin/x64:${PATH}"
  fi
  startxwin
  DISPLAY=localhost:0.0
  export DISPLAY
elif [[ $(uname) =~ "LINUX" ]]
then
    echo
fi

if [[ $(hostname) =~ "*iastate*" ]]
then
    #license
    export LM_LICENSE_FILE=1717@io.ece.iastate.edu:27006@io.ece.iastate.edu:6978@io.ece.iastate.edu:27001@io.ece.iastate.edu
    #Xilinx setup
    #The below line can effect gcc. I am not sure of the details.
    source /remote/Xilinx/14.6/settings64.sh
    export PATH=$PATH:/remote/Modelsim/10.1c/modeltech/linux_x86_64/
    #Makes the Xilinx place and route tool try a little harder.
    #export XIL_PAR_ENABLE_LEGALIZER=1

    #Convey setup
    export PATH=$PATH:/opt/convey/bin
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/convey/lib
    export CNY_PDK=/opt/convey/pdk
    export CNY_PDK_REV=2012_03_19
    export CNY_PDK_HDLSIM=Mentor
    export CNY_PDK_SIMMODE=64
    if [ -d "${HOME}/personalitites" ]; then
        export CNY_PERSONALITY_PATH=$HOME/personalities:${CNY_PERSONALITY_PATH}
    fi
    export CNY_RUNTIME_STARTUP_DEBUG=0
    export CNY_CALL_STATS=1
fi

export USERNAME BASH_ENV PATH DISPLAY C_INCLUDE_PATH CPLUS_INCLUDE_PATH LD_LIBRARY_PATH
