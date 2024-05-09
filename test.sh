cat README.md
# Define the pattern to search for
pattern="\!\[npm audit\].*"

# Use sed to delete lines matching the pattern in README.md
sed -i '' "s/${pattern}/DELETEME/g" README.md

# remove the empty lines at the beginning of the file
sed -i '' '/^DELETEME$/d' README.md

cat README.md

ls

# Path: README.md
# ![npm audit](
# DELETEME

