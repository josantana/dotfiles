# Load .custom, .prompt, .exports, .aliases and .functions
# .custom should be used for user custom settings

for file in ~/.dotfiles/.{custom,prompt,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file
