vim-rpal
========

Syntax highlighting support in vim for RPAL.

Screenshot
----------

![](http://i.imgur.com/0FKzbHf.png)

What is RPAL?
-------------

> **R**ight-reference **P**edagogic **A**lgorithmic **L**anguage

RPAL is a functional programming language derived from ML. It's pretty much just
esoteric at this point, but it makes for a good academic exercise. It is taught
at the University of Florida in COP5555: Programming Language Principles.

Enabling It
-----------

If a file is given an extension of `.rpal`, vim should automatically enable
highlighting (assuming `:syntax on`). If a file does not have the extension,
highlighting can be enabled manually with `:set ft=rpal`.

Installing
----------

Assuming you have [pathogen](https://github.com/tpope/vim-pathogen), you can use
that. If you don't, you should just be able to merge in the contents of `syntax`
and `ftdetect` into your `~/.vim` directory.
