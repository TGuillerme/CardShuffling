Coding together is a really good way to get better a coding! Through this exercise we're gonna see tools that help set up "healthy" coding routines that will help your science to be neater, more re-usable and more reproducible by the community.

If you work alone don't worry, you're main and most common collaborator is your future self so it's going to be relevant no matter what!

# Before you start

There are a couple of point I'm not gonna cover in great details here but they will be useful to get you started. If you don't know anything about them, just click on the links and brainlessly click the green buttons.

You'll need to have a version control account so that you can share your code with friends:

 * Install [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) on your machine.
 * Have a version control software account and software that'll help you using git (e.g. [GitHub](https://github.com/) and [GitHub Desktop](https://docs.github.com/en/desktop/installing-and-authenticating-to-github-desktop/installing-github-desktop)). When/if you have time, you might want to have a look at alternatives that are less fascist friendly.
 * If you've never heard about version control, you can check this previous macrofun [here](https://github.com/TGuillermeTeaching/VersionControl).
    - [Quick slides](https://github.com/TGuillermeTeaching/VersionControl/blob/master/VersionControl.pdf)
 
You can also get some extra resources here. If you're already coding, they are probably things you're using already.

 * Use a nice IDE (Integrate Development Environment, e.g. [RStudio](https://posit.co/downloads) or [Sublime Text](https://www.sublimetext.com/)).
 * Have some coding style standard. For example [here is what I use](https://github.com/TGuillerme/Coding/blob/master/Coding_style.Rmd). TL;DR: write your objects one way: `this_is_an_object` and your functions another way `this.is.a.function`.
 * Use markdown (see our [old macrofun on that topic](https://macrofun-sheffield.github.io/session/Markdown/)), or, if you fancy nice reports, you can upgrade to LaTeX (also an [old macrofun here](https://macrofun-sheffield.github.io/session/LaTeX/)).
 * You're organising your folders in some standardised way ([like this](https://github.com/TGuillermeTeaching/OrganiseProjects/tree/master)).

# The question

When you perfectly riffle shuffle a deck of 52 cards ([this is riffle shuffling](https://www.youtube.com/shorts/eFbgCibUCpE)), how many perfect riffle shuffles does it take to get back to the initial deck position?

There's a mathematical answer to this very important question that's kind of cool in itself but first have a go at thinking about it with some pen and paper.

There's also a code way to solve the problem that we can try to find together!
Say you have a deck of just 10 cards numbered 0 to 9:

```
0 1 2 3 4 5 6 7 8 9
```

You can split it in half like this

```
0 1 2 3 4
5 6 7 8 9 
```

If you riffle shuffle it perfectly 1 to 1, you'll end up with this card order:

```
0 5 1 6 2 7 3 8 4 9
```

If you split that again, perfectly riffle shuffle it again you'll end up with a different card order.
How many time to you need to do that to get back to the initial order `0 1 2 3 ...`? If any?

# How to approach it

We're going to work on finding the solution together by coding it all in `R` and getting it to find us the answer.

## Dividing tasks: functionalising your code

To go fast and easy, we're going to design an algorithm together and just split the tasks among us.

Not that we already [previously covered algorithm design together in macrofun](https://macrofun-sheffield.github.io/session/Algorithm_design/) but we can reinvent the wheel here.

What tools would we need to answer this question?

To help focusing the discussion, I suggest that we all agree on the format of the card deck, I suggest we use of cards numbered as characters because:

 1. [Lists are the best thing in `R`](https://macrofun-sheffield.github.io/session/Algorithm_design/)
 2. Numbering the cards as characters like `"1"` allows to record the card initial position easily. If the 18th card is called `"5"` we know it was in the 5th position in the initial deck.

Once we've agreed with the set of functions needed


<details>
  <summary>[Click to expand] my suggested list of functions
</summary>

I got to the solution by using the following functions (but note that there's many other ways!). I got one function for:

 * Creating a deck of 52 cards;
    - INPUT: `n` the number of cards.
    - OUTPUT: a `"list"` of length 1 containing `n` `"characters"`.
 * Splitting the deck in half;
    - INPUT: a `"list"` of length 1 containing `n` `"characters"`.
    - OUTPUT: a `"list"` of length 2, each containing `n/2` `"characters"`.
 * Doing the shuffle;
    - INPUT: a `"list"` of length 2, each containing `n/2` `"characters"`.
    - OUTPUT: a `"list"` of length 2, each containing `n/2` `"characters"`.
 * Comparing the new cards positions to the initial state;
    - INPUT: a `"list"` of length 1 containing `n` `"characters"`.
    - INPUT: a `"list"` of length 2, each containing `n/2` `"characters"`.
    - OUTPUT: a `"logical"` (TRUE/FALSE). 

</details>

## Sharing solid code: version control and unit testing

Once you've worked your function, you can now share it with your friends to find the answer!
To do this, it's quiet simple, we'll just be sharing our code by pushing it to [this repo]().

And that's it, you've now done [version control](https://github.com/TGuillermeTeaching/VersionControl)!

But wait! How to be sure that my collaborators (or past self) didn't push any broken code?
This is also easy, by implementing some unit testing! We already did a session on it [here](https://macrofun-sheffield.github.io/session/unit-testing/) so I'm not going to go in too much details.

## Reporting what you've done: README and task managing

# The answer

The answer is...

<details>
  <summary>[Click to expand]
</summary>

That's it. Just 8. This is a shit shuffling method if you're really good at it.

But why 8? It's actually a fun math problem with a nerdy solution you can find [here]() (thanks to Abigail Pastore for writing it and guiding me through it).

And how does it scale with different number of cards? This again, is a super cool problem you can try to figure out by just using the code you've made! Have fun and learn about modulos and chaos!

</details>
