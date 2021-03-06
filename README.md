
# Learning Emacs Lisp

I used Emacs for years before I actually sat down and tried to "learn"
Emacs Lisp.

In hindsight, this was a mistake.

The time it takes to go through the Emacs Lisp Intro is something like
20 hours.

Yet, if you've been using Emacs only as an "editor" or if your
knowledge of elisp is limited to "the stuff I find on the internet
that I copy-and-paste into a file somewhere underneath my
```~/.emacs.d``` and sometimes it works and sometimes it doesn't,"
then the 20 hours will be well spent.

## Why?

I don't know any other emacs users and I don't participate in the
community around emacs.

With that said, a whole new world of emacs opens up once you've gained
basic "reading knowledge" of elisp and an understanding of the customs
around it.

## Motivation

Even though I always knew it would be a good idea if I could "program
emacs," I never got around to it. Instead, I'd get mixed up in whatever
I was immediately working on ignore any pains.

This wasn't just emacs: I'd get "good enough" at most everything and,
with just a few exceptions, never spend the time to customize or dig
deeper than was immediately necessary. After all, there was a lot
going on and so many other things were interesting as well.

Additionally, I never met anyone that really used emacs, so there
wasn't anyone to really talk to about this stuff. One day, while on
vacation in the summer of 2012, I saw a [video][emacs-in-a-bar] made
by Magnar Sveen and it was *so* cool.

Yet, other things were going on, I was 6 months into a new job, I was
learning about Cucumber and RSpec and testing and Ruby and there still
wasn't time.

Until now-- about 6 months after I first saw that video-- in March of
2013.

## The Beginning

I started off by googling 'learn elisp' and ended up on the emacs
wiki. The wiki entry [EmacsLispIntro][emacs-lisp-intro] was my first
stop.

From there, I decided to try the tutorial on emacs lisp built into
emacs itself. According to the wiki page,

> The way to read the intro is to type 'C-h i' to start Info, and then
> 'm Emacs Lisp Intro RET'

## The Emacs Lisp Intro

It may sound silly now, but I didn't realize emacs had documentation
about emacs within emacs.

I had to slow down and re-read the introductory paragraph twice before
I could understand what the wiki entry meant when it told me to 'm
Emacs Lisp Intro RET'

And this was the beginning of a theme that I'd revisit again and
again: **slow down**.

And another central theme: **pay attention**.

Specifically, *slow down* and *pay attention* to what was written and
sitting before my eyes:

> This (the Directory node) gives a menu of major topics. Typing "q"
> exits, "?" lists all Info commands, "d" returns here, "h" gives a
> primer for first-timers, "mEmacs<Return>" visits the Emacs manual,
> etc.

I typed 'h' and spent the next 25 minutes going through the primer.
I'd been using emacs for years and had always dismissed *Info* mode
whenever it came up, searching instead through web pages and forums.

There I was-- two pomodoros into "learning emacs lisp" and I hadn't
typed a single character of lisp yet.

### Thoughts after learning about Info

Before I go any further, I want to capture that I recalled a paragraph
from an article in the NY Times called
[The Brilliance of Dwarf Fortress][dwarf-fortress-brilliance] at this
point.

I've never played [Dwarf Fortress][dwarf-fortress], but I've
apparently been carrying around this quote for the past two years:

> Meanwhile, the smash success of the world-building game Minecraft,
> which is in many ways a more user-friendly version of Dwarf Fortress
> (and which has earned its Dwarf Fortress-loving creator millions of
> dollars), has only been good for Tarn, driving curious new players
> his way. Still, in the only moment I heard him speak with anything
> like bitterness, Tarn called Minecraft a "depressing distillation of
> our own stuff." He paused, adding more magnanimously that the game
> "has its own things going for it." The problem, he concluded, "isn't
> with Minecraft so much as it's with society."

### Process

I'm going to read this 25 minutes at a time, counting up how many 25
minute chunks it takes me to get through this. I'm a busy dad with a
day job, and scanning through the Intro indicates there are dozens of
chapters. This will take some time.

My plan will likely be to save any code I experiment with as I go
through the introduction. Hopefully it'll be straight forward to link
to that code from this document.

### Preface

1 pomodoro

### List Processing

3 pomodoros

### Practicing Evaluation

1 pomodoro

### How To Write Function Definitions

3 pomodoros

[Review][emacs-lisp-intro-function-review]

### Buffer Walk Through

2 pomodoros

### Narrowing and Widening

0.5 pomodoros

### car, cdr, and cons

0.5 pomodoros

### Cutting and Storing Text

4 pomodoros

There's substantial stuff here. Definitely revisit before/when writing
elisp that cuts and stores text.

The exercises were the first part of this introduction where I got
reasonably frustrated. The fact that the kill-ring is made up of
TextProperties eluded me.. maybe I missed it? Either way,
```substring-no-properties``` seemed necessary and wasn't present.

### List Implementation

0.5 pomodoros

### Yanking

1 pomodoro

### Looping and Recursion

5 pomodoros

### Regexp Search

2 pomodoros

This is some dense stuff.

### Counting Words

2 pomodoros

### Words in a defun

2 pomodoros

The project within is pretty neat, but dense.

Skimmed, but focused on the defuns used to support stuff.

### Readying a Graph

2 pomodoros

### Emacs Initialization

1 pomodoros

### Debugging

1 pomodoros

## Resources

* http://emacswiki.org/emacs/LearnEmacsLisp

[emacs-wiki]: http://emacswiki.org/
[what-the-emacs-d]: http://whattheemacsd.com/
[emacs-lisp-intro]: http://www.emacswiki.org/emacs/EmacsLispIntro
[emacs-in-a-bar]: http://www.youtube.com/watch?v=p3Te_a-AGqM
[dwarf-fortress]: http://www.bay12games.com/dwarves/
[dwarf-fortress-brilliance]: http://www.nytimes.com/2011/07/24/magazine/the-brilliance-of-dwarf-fortress.html
[emacs-lisp-intro-function-review]: http://www.gnu.org/software/emacs/emacs-lisp-intro/html_mono/emacs-lisp-intro.html#Review
