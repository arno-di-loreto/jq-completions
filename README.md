
- Clone the repository inside your oh-my-zsh repo:

```
git clone https://github.com/arno-di-loreto/jq-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/jq-completions
```

- Enable it in your .zshrc by adding it to your plugin list and reloading the completion:

```
  plugins=(… jq-completions)
  autoload -U compinit && compinit
```