#!/usr/local/bin/bash 

flashred="\033[5;31;40m"
none="\033[0m"

#Read function demonstration
printf "What is your name?: "
read name

printf "What is your password?: "
read -s pass
printf "\n"
echo -e "Checkout $name's password, everybody:$flashred $pass $none"

#Select function demonstration
printf "\nPlease choose a language:\n"
select animal in 'Python' 'Apache' 'Perl' 'Java'
do
	if [[ $animal != '' ]]; then
		echo "You selected $animal! I like that too."
		break
	else
		echo "That is not an option, dimwit."
	fi
done

printf "\nWhat is your favorite animal?:\n"
select option in 'cat' 'dog' 'I feel strong negative emotions towards animals.'
do
	case $option in
		cat) echo 'Cats are boring.';;
		dog) echo "Dogs rule, cats drool.";;
		'I feel strong negative emotions towards animals.') echo 'Fine';;
		*) echo "That is not an options, numbskull.";;
	esac
	if [[ $option == 'I feel strong negative emotions towards animals.' ]]; then
		break
	fi
done