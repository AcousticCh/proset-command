#!/bin/bash

proset() {
	case $1 in
		"-pw" | "--pyweb")
			echo "Under Construction"
            #build environment here
            case $2 in
            "-f" | "flask")
            echo "ho"
            #check for pip instalation
            #install flask basics
            ;;
            esac
		;;
		"-w" | "--web")
			mkdir $2
            touch ./$2/base.html ./$2/styles.css ./$2/script.js
		;;
		"-r" | "--remove")
			rm -rf $2
		;;
		"-h" | "--help")
			echo "The envctl (environment controller) speeds up and simplifies the creation and use of a python3 venv."
            echo ""
            echo "----------------------------------------------------------------------------------------------------"
            echo ""
			echo "Options: "
            echo ""
			echo "	-c, --create: "
			echo "			Creates a python3 virtual environment in present working directory"
			echo "			ex: envctl -c <env_name>"
            echo ""
			echo "	-a, --activate: "
			echo "			Activates an environment quickly by name"
			echo "			ex: . envctl -a <env_name>"
			echo ""
			echo "deactivation of an environment is a function of the venv module itself,"
			echo "in the directory you activated your environment you deactivate it by simply tyiping deactivate"
			echo "			ex: deactivate"
		;;
		*)
		echo "Type envctl -h or envctl --help for options and examples."
        ;;
	esac
}
proset $1 $2 $3