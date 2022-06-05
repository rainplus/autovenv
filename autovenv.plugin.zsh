# Initialization: activate autovenv or report its absence
() {
  # Complain if "python -m venv" is not installed
	
	if python3 -c "import venv" >/dev/null 2>&1;then
	else
    cat <<END >&2
-------- AUTOVENV ---------
Could not find  python3 moudle venv
Please check if python3 -m venv is correctly installed.
In the meantime the autovenv plugin is DISABLED.
--------------------------
END
  fi 
}

[[ $? != 0 ]] && return $?

# The use_venv call below is a reusable command to execute  "python -m venvi $1"

use_env() {
  local venv
  venv="$1"
  echo -n "Create virtualenv $venv now? (Yn) "
  read answer
  if [[ "$answer" == "Y" || "$answer" == "y" ]]; then
    python3 -m venv "$venv"
  fi
}


jugde-venv() {
   if [ -f "./bin/activate" -a -z  "$VIRTUAL_ENV" ];then
					 source ./bin/activate
	 elif  [ !  -f "./bin/activate"  -a -n "$VIRTUAL_ENV" ];then
		 deactivate
	 fi
}


add-zsh-hook chpwd jugde-venv
