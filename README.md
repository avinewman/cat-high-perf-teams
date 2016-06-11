feedforward
===========

Peer-based Feedforward Protocol.

Exerpt from the article:

> In this document, we will discuss a protocol designed to
> help people come to their own insights, while also receiving
> helpful information from their own team. This has the effect
> of not only amplifying each person’s own learning, but
> creating a bonding experience with teammates that is
> meaningful and connected to their actual work experience.

Acquiring
-----------
This project is being published automatically using [Travis-CI](https://travis-ci.org/couragelabs/feedforward).

Download in any of these formats:

  * [PDF](http://s3.amazonaws.com/cl-feedforward/feedforward.pdf)
  * [HTML](http://s3.amazonaws.com/cl-feedforward/feedforward.html)

You can purchase a nice bound copy of the latest print-ready version here:

 * [Peer-Based Feedforward Protocol](http://www.lulu.com/shop/stephen-starkey/peer-based-feedforward-protocol/paperback/product-22732787.html)

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
