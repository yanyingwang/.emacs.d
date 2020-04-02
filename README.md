
# My Emacs configration file - .emacs.d
![icon](https://raw.githubusercontent.com/yanyingwang/.emacs.d/master/favicon.jpg?token=ABABACHC63YE2OEWE5MRSSS6QVHUW =64x)

this configure files only tested for this [specific version](https://emacsformacosx.com/)

# How to use
1. clone git repo to your home dir:
~~~shell
cd ~ && git clone git@gitlab.com:yanyingwang/.emacs.d.git
~~~

2. start your emacs and wait for everything settled.


# Reference
1. package manager: [use-package](https://github.com/jwiegley/use-package)
2. Helm: more Helm keybinding and usage please check [this link](http://tuhdo.github.io/helm-intro.html).
3. modified keybinding for MacOS system:
   `C-M-q` => `s-M-q`
   `M-space` => `s-space`

4. global custom keybinding:
   `C-c g l` (`C-c k`) => copy line, `g` standards for `global`
   `C-c g l` (`C-c l` `s-l`) => select line and move cursor to the beginning postion
   `C-c g n` (`C-c n` `s-n`) => select line and move cursor to the beginning postion of next line
   `C-c g p` (`s-n`) => this is binded to `racket-cycle-paren-shapes`
   [more](https://github.com/yanyingwang/.emacs.d/blob/master/init/self/keybinding.el)
 5. You can check out my emacs memo if you like: https://github.com/yanyingwang/memo/blob/master/emacs.md
 6. geiser with scheme(racket/chez/gosh)
 ......


# screenshots
![list](https://gitlab.com/yanyingwang/.emacs.d/raw/master/screenshots/dim-golden-ratio.png)
![list](https://gitlab.com/yanyingwang/.emacs.d/raw/master/screenshots/racket-in-geiser.png)


# flymake
npm install -g jslint


