USERNAME=""
read -e -p "MySQL User: " -i "root" USERNAME
PASSWORD=""
read -s -p "MySQL Password: " PASSWORD
export MYSQL_PWD="$PASSWORD"
echo ""
echo ""
read -e -p "mangos database name: " -i "tbcmangos" DB
MYSQL_COMMAND="mysql -u$USERNAME $DB"

echo 'original_data:'
cat original_data/*.sql | $MYSQL_COMMAND
echo "Completed!"

echo 'cmangos_fixes:'
cat cmangos_fixes/*.sql | $MYSQL_COMMAND
echo "Completed!"