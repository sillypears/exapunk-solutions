echo "Input #"
read V_NUMBER
echo "Input Name"
read V_NAME

TMP=$(echo "${V_NUMBER}_${V_NAME}" | tr '[:upper:]' '[:lower:]')
FOLDER=$(echo ${TMP} | sed 's/ /_/g')
mkdir ${FOLDER}
echo -e "# ${V_NAME}\nCYCLES | SIZE  | ACTIVITY\n:---   | :---: | ---:\n      |      |" > ${FOLDER}/README.md
touch ${FOLDER}/XA.bot