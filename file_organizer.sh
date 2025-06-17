#!/bin/bash

echo "📁 Enter the directory path to organize:"
read user_input

# תחליף את ~ ב-$HOME אם צריך
if [[ "$user_input" == ~* ]]; then
    dir_path="${user_input/#\~/$HOME}"
else
    dir_path="$user_input"
fi

# בדיקת קיום תיקייה
if [ ! -d "$dir_path" ]; then
    echo "❌ Directory does not exist. Please try again."
    exit 1
fi

organized_dir="$dir_path/organized_files"
mkdir -p "$organized_dir"

for file in "$dir_path"/*; do
    [ -f "$file" ] || continue
    [[ "$file" == "$organized_dir"* ]] && continue

    extension="${file##*.}"
    [ "$extension" = "$file" ] && extension="no_extension"

    target_dir="$organized_dir/$extension"
    mkdir -p "$target_dir"
    mv "$file" "$target_dir/"
done

echo "✅ Files organized successfully in: $organized_dir"

