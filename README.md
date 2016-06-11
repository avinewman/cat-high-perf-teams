cat-high-perf-teams
===================

Exerpt from the book:

> none yet

Acquiring
-----------
![Build Status](https://travis-ci.org/couragelabs/cat-high-perf-teams.svg?branch=master)
This project is being published automatically using [Travis-CI](https://travis-ci.org/couragelabs/cat-high-perf-teams).

Download here:

  * [PDF](http://cat-high-perf-teams.s3.amazonaws.com/cat-high-perf-teams.pdf)

You will soon be able to purchase a nice bound copy of the latest print-ready version...


Editing
-------
I use [TeXShop](http://pages.uoregon.edu/koch/texshop/).

Building
--------
 * You'll need to have "make" installed as well. Should be preinstalled on a Mac.
 * You'll need to install a LaTeX package. 
   * For Mac: http://www.tug.org/mactex
   * For Debian/Ubuntu:

        apt-get -y install texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra tex4ht chktex

 * Run:

        make

Puts a PDF in

        out

Cleaning up
-----------
The build script generates a lot of stuff. If you'd like to get back to
a pristine environment, run:

        make clean

Publishing
----------
Publishing happens automatically using travis-ci, so doing it manually is not recommended.
However, if there is an urgent need, you can use this manual approach.
You'll need the [AWS CLI](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html) 
installed.

Also, you'll need credentials configured using the "couragelabs" profile. If you are confused about
what this is, drop us a line ([our website](http://www.couragelabs.com) should tell you how).

Run:

        make publish
