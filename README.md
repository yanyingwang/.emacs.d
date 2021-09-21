<img src="https://raw.githubusercontent.com/yanyingwang/.emacs.d/master/favicon.png" alt="favicon" width="200"/>

**.emacs.d** - My Emacs configration file, you can go to download a [macos version](https://emacsformacosx.com/) for this.

---

## how to use
1. clone git repo to your home dir:
~~~shell
cd ~ && git clone git@gitlab.com:yanyingwang/.emacs.d.git
~~~

2. start your emacs and wait for everything to be settled or you can change to the `build` branch and execute `tar -xvf elpa.tar`.


## reference
1. package manager: [use-package](https://github.com/jwiegley/use-package)
2. Helm: more Helm keybinding and usage please check [this link](http://tuhdo.github.io/helm-intro.html).
3. modified keybinding for MacOS system:
   `C-M-q` => `s-M-q`
   `M-space` => `s-space`

4. global custom keybinding:
   `C-c 2 c` => hs-toggle-hiding, fold code block as one line or unfold it.
   `C-c 2 a` => hs-show-all, show all folded code block.
   `C-c g l` (`C-c k`) => copy line, `g` standards for `global`
   `C-c g l` (`C-c l` `s-l`) => select line and move cursor to the beginning postion
   `C-c g n` (`C-c n` `s-n`) => select line and move cursor to the beginning postion of next line
   `C-c g p` (`s-n`) => this is binded to `racket-cycle-paren-shapes`
   [more](https://github.com/yanyingwang/.emacs.d/blob/master/init/self/keybinding.el)
5. You can check out my emacs memo if you like: https://github.com/yanyingwang/memo/blob/master/emacs.md
6. geiser with scheme(racket/chez/gosh)
7. flymake for ruby racket js: `npm install -g jslint`
8. racketrc: `ln -sf ~/.emacs.d/init/scheme/dotracketrc ~/.racketrc`
9. enable us to use emacs to edit macos's plist files.
10. customized [yasnippet](https://github.com/joaotavora/yasnippet) working with company.

## screenshot
![scsh1](https://raw.githubusercontent.com/yanyingwang/.emacs.d/master/screenshots/dim-golden-ratio.png)
![scsh2](https://raw.githubusercontent.com/yanyingwang/.emacs.d/master/screenshots/racket-in-geiser.png)
![scsh3](https://raw.githubusercontent.com/yanyingwang/.emacs.d/master/screenshots/macos-plist.png)
![scsh4](https://raw.githubusercontent.com/yanyingwang/.emacs.d/master/screenshots/yasnippet-racket-repl.png)



## tar elpa
~~~shell
gco build
tar -cvf elpa.tar elpa
gco master
~~~
