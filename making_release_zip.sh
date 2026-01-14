
# The Xubuntu Minimal Os need some basic apps which i pack here and want to publish as a zip so that i can use this zip easily to transfer to offline laptop and use it easily effictively. So i Think to make this whole as a zip and share.


My_VERSION="v1.1.0"


# Get repo name from current directory
repo_name=$(basename "$(pwd)")

# Construct zip file name
zip_name="${repo_name}_${My_VERSION}.zip"

# Create the zip file, excluding .git directory and its contents
zip -r "$zip_name" . -x "*.git*" ".git/*"

# Final message

echo "Created zip: $zip_name"
