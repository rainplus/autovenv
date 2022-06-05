## What is it?

If a directory create by "python -m venv " , it will automatically be activate
venv when you `cd` into it. it will automatically be deactivate when you leave 
it.

This is great for...

- auto-activating virtualenvs
- auto-deactivating virtualenvs

How awesome is that!?

### Installation

```sh
git clone git@github.com:rainplus/autovenv.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/autovenv

```

#### Enabling Plugins

Once you spot a plugin (or several) that you'd like to use with Oh My Zsh, you'll need to enable them in the `.zshrc` file. You'll find the zshrc file in your `$HOME` directory. Open it with your favorite text editor and you'll see a spot to list all the plugins you want to load.

```sh
vi ~/.zshrc
```

For example, this might begin to look like this:

```sh
plugins=(
 ...
 autovenv
 ...
)
```

