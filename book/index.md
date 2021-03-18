<!-- Bayes Theorem - The Missing Manual is licensed under a creative commons licence (CC BY-NC-SA 4.0). -->
(intro)=
# Introduction

Welcome to the missing manual for Bayes theorem users. This manual is designed to provide documentation for people who use - or want to use - Bayes theorem on a day-to-day basis. It covers a small subset of Bayesian statistics that the author feels are disproportionately helpful for solving real world problems quickly with mental math in your head. This manual only covers the absolute [simplest formulation](process) of Bayes theorem and then uses a large number of [examples](examples) to help solidify your understanding and intuition of the topic. [References](additional-refs) to more sophisticated and rigorous textbooks are available for readers who have other use cases or need more details.


## Who this manual is for

This manual is intended for use by:

*   Individuals who want to use Bayes theorem in their day-to-day lives 
*   Mathematical street fighters - anyone who recognizes the benefit of a rapid estimate to otherwise seemingly intractable problems
*   Anyone who has to make decisions in the presence of uncertainty in a limited amount of time
*   Students who want to get an intuitive understanding of Bayesian inference by working example problems before using more theoretical texts

## What is Bayes theorem

In general Bayes theorem is a mathematical formula that allows you to incrementally update your existing beliefs as new evidence or information is observed. While very rigorous, the usual presentation of Bayes theorem is very theoretical and complex. It is left to the reader to tailor Bayes theorem to their specific use case, which can be very challenging. 

This manual covers only one potential application of Bayes theorem. So within this manual Bayes theorem is a mathematical formula that allows you to incrementally calculate the relative odds that a hypothesis explains the evidence that you are observing. Luckily this easy to use version covers a wide range of practical problems that you might encounter while walking around on the street.

## How does Bayes theorem fit into the mathematical landscape 

Bayes theorem is a result of probability theory and statistics. Probability and statistics are two closely related mathematical fields. Probability is a quantitative description of how likely an event is to occur. Statistics can be split into two branches. The first is descriptive statistics. Descriptive statistics summarize data and aim to present them in a manner that is useful for interpretation. The second branch is inferential statistics. Inferential statistics  allows you to make predictions (inferences) based on data. Bayes theorem is a type of statistical inference. I like [Kruschke’s](https://www.amazon.com/Doing-Bayesian-Data-Analysis-Tutorial-dp-0124058884/dp/0124058884) description that *the goal of statistical inference is to help you decide what to believe in*. All three domains - probability, descriptive statistics, and statistical inference - are useful when applying Bayes theorem so it is good not to casually refer to them as the same thing.

In common language usage probability and statistics are used interchangeably. Furthermore there are multiple interpretations of probability and the version being used is often assumed to be implicitly understood. The same notation is used across different fields and interpreted to mean different things, so concise communication is very difficult to achieve. This confusion motivated the creation of this manual.

Bayesian probability - the sole focus of this manual - is simply a belief. Contrast this to the more popular definition of probability as a frequency of occurrence. The ‘frequentist’ definition is more popular and represents a more concrete situation where it is possible to count all the possible outcomes. Typical frequentist probability examples include dice, coins, and cards. The Bayesian definition is more abstract, but potentially very useful.

Bayesian inference uses Bayes theorem to revise your beliefs based on observed data. Bayes theorem may also be known as Bayes Rule and Bayes Law. Technically Bayes theorem should be written as Bayes' theorem. It is common practice to omit the apostrophe for the sake a brevity. 

There are really only two things that can make Bayes theorem difficult to use in practice:

1. How to convert circumstances in the real world into the language of probability and statistics
2. When to deploy each tool - probability, descriptive statistics, inference - in the solution process.

This manual hopes to standardize and simplify the choices that make Bayes theorem difficult to use for everyday problems.

## What types of problems can be solved with Bayes theorem

You wouldn’t pick up your TV manual to learn how to operate your lawn mower, so it is helpful to understand what ‘product’ this manual was actually written for.

The use of Bayes theorem can be applied to multiple situations, in various forms, using a variety of analytical and numerical techniques. In short, there are a lot of ways to use Bayes theorem. As a rough guideline I divide the possible methods into model comparison and parameter estimation. This manual covers a simple method for model comparison that only requires simple mental math. Each formulation is briefly described below so you can identify if your use case fits with what is described in this manual.

(model-comparison)=
### Model comparison (the main focus of this manual)

A model is a simplified representation of reality. Bayes theorem can be used to compare the relative likelihood of two or more models and identify the model that is *best*. In this manual we cast model comparison in this way: Which hypothesis (aka: model of the world) best describes the evidence (data) that we are observing? There are multiple ways to develop a model, the evidence/hypothesis method shown here is simplistic and applicable to on your feet reasoning.  

Typically a hypothesis will be binary in nature, for example true/false, fake/real, success/failure, win/lose, honest/corrupt, etc. It will also be shown how to compare a finite number of hypotheses greater than two, such as who is the most likely murder suspect among a group of three people, by repeatedly applying the [standard solution process](process). 

A very real limitation is that each hypothesis must be explicitly defined. In practice it can be hard to generate hypotheses because you may be at one of the extremes - either it seems obvious what happened or there is very little information to build a hypothesis from. Human biases can dominate the hypothesis generation step as well, for example stereotypes, preconceived notions, racism, and bigotry will all color how hypotheses are generated by an individual. Bayes theorem can help overcome some, but not all, human biases.

Using the methods in this manual you can evaluate which hypothesis best explains the evidence you are observing. *Best* is a relative term in this context. If you generate two rather bad hypotheses one will always be identified as the best at explaining the evidence. In absolute terms both hypotheses might be bad and the real reason you are observing the evidence will be a hypothesis you have not considered. For example, say your friend claims to be able to identify if a coin will land heads or tails using psychic powers (which you don’t believe in). After calling 14 coin tosses in a row correctly there would seem to be substantial evidence that your friend is a coin toss psychic. The odds of randomly guessing the outcome of 14 coin tosses in a row is very low - approximately odds of 1 to 100,000. You can either admit you have been wrong your whole life about psychic powers in the presence of this evidence, or you can consider an alternate hypothesis that better describes the situation you are seeing - that your friend is cheating somehow. 

Despite its limitations, this manual will demonstrate how to apply the model comparison formulation of Bayes theorem to a wide array of problems.

(parameter-estimation)=
### Parameter estimation (not covered in this manual)

Parameter estimation is the other major use for Bayes theorem and is not covered in this manual in any significant detail [^detail]. Parameter estimation is a very cool technique, but I don’t know a way of easily applying the methods without writing at least a little computer code.    

[^detail]: The few words that are dedicated to parameter estimation are intentionally buried deep in the [optional theory section](theory) about the [Beta](beta) distribution. If you need substantial detail about how to perform parameter estimation please see the [additional references](additional-refs).

Examples of parameter estimation might include making measurements with uncertainty and then reasoning about the true state of the measured object. The U.S. Coast Guard uses a variation of parameter estimation to [search for Sailors](https://www.nytimes.com/2014/01/05/magazine/a-speck-in-the-sea.html) that fall overboard into the sea. A similar technique is used to [search for airplanes](https://www.nps.edu/documents/103424533/106018074/Bayes+Search+for+Missing+Aircraft+NPS+20+Apr+2017.pdf/051a76bc-18cc-47a7-b8b8-52d92d618dfe) that crash into the ocean. A classic example of parameter estimation (and other complex calculations) is intercepting a ballistic missile. Imagine that a rogue state fires a ballistic nuclear missile in your general direction. The weapon is of unknown manufacturer and is going Mach 3 in the upper atmosphere. Radar measurements for objects at high altitudes and fast speeds are far from perfect. Use Bayes theorem(!) to identify the most likely position of the weapon based on the noisy radar measurements and shoot an interceptor missile to down the rogue states weapon. 

Another less dramatic example is estimating the probability of a probability. Say you are playing a game of chance with your friend. You each put a dollar down every time you flip a coin. If the coin comes up heads he wins the money. If the coin comes up tails you win the money. You flip ten times and observe 8 heads and 2 tails. So far you have lost $6. You begin to wonder if you are flipping a fair coin. Bayes theorem and parameter estimation would help you reason about the fairness of your coin. The data you have collected so far showed heads occurring in 80% of the tosses. You want to know the *probability that the probability* of the coin landing heads is 0.5 (e.g. a fair coin). With parameter estimation you could develop a probability distribution describing your belief about the fairness of the coin and make statements about confidence intervals - all very useful, but relatively [more complex calculations](grid) that are mostly beyond the scope of this manual. If you have a parameter estimation problem check out the [references](additional-refs) for some books that are more general than this manual.

(real-world-problems)=
### Real world problems

The objective of this manual is to help you solve real world problems using Bayes theorem. In this manual a real world problem will have some of the following characteristics.

*   Internal probabilities - Real world problems are usually unlike card games, dice, and coins. These problems are best solved with internal probabilities. Who will win a future election, will your actions hurt your spouses feelings, will customers like the fresh mint scent, are all examples of problems where your internal probabilities (aka your subjective opinion) is the best - or only - way to quantify your beliefs.
*   Not well studied - Most real world problems are your personal problems and not great mysteries of mankind. As such there is likely nobody tracking historical data about your problem. There are certainly ways to apply Bayes theorem to deep scientific mysteries, but they are not directly discussed in this manual. 
*   Hard problems - From your perspective your problems are hard. Otherwise you would have solved the problem already. If you can figure out even a rough hacky solution to your problem in a few seconds of thought then you will have made good progress. You can always pile on time and resources later if your initial assessment shows that there will possibly be a good return on investment. 

In summary this manual aims to help you solve hard problems that we know little about initially and even a rough solution will be of benefit.  

## What features are not supported by this manual

This manual makes no attempt to cover the wide array of topics in Bayesian statistics. This manual will build intuition around Bayes theorem, but if your problem involves any aspect of parameter estimation, numerical methods (Markov chain monte carlo, grid methods), probability distributions (and their functions like the bernoulli/beta/normal distributions [^distributions]), cumulative distributions, confidence intervals, regions of practical interest, maximum likelihoods, conjugate priors, combinatorics/permutations, calculus, or any other fancy pants concepts you will not find much about them in this manual.  

[^distributions]: The beta distribution is briefly discussed in the [theory section](beta). If you need substantial detail on probability distributions please see the [additional references](additional-refs).

(additional-refs)=
## Additional references

If you have a use case that this book does not cover there are some very good books on Bayesian statistics and Bayes theorem that are available. My only warning is to make sure you understand what you hope to achieve from your analysis before you use an advanced technique. These textbooks will be less opinionated than this manual about which particular Bayesian method will solve your needs - which may or may not be a good thing. 

*   [Bayesian Statistics the Fun Way: Understanding Statistics and Probability with Star Wars, LEGO, and Rubber Ducks (Kurt)](https://www.amazon.com/Bayesian-Statistics-Fun-Will-Kurt/dp/1593279566) - is a fun introduction to Bayesian statistics. If this manaual was appropriate for your skill level then this is a good next book to pick up.

*   [Doing Bayesian Analysis, a tutorial with R and BUGS (Kruschke, 2nd Ed.)](https://www.amazon.com/Doing-Bayesian-Data-Analysis-Tutorial-dp-0124058884/dp/0124058884) - is a formal textbook on Bayesian statistics, but the pictures of puppies on the cover gives a good indication that the author doesn't believe in making the reader suffer. Knowledge of the [R-project](https://www.r-project.org/) [^R] and [BUGS](https://www.mrc-bsu.cam.ac.uk/software/bugs/) will certainly help you use this book, but is not required. I used an equivalent Python [^python] library (see pyMC below) to follow along with the code examples. After I read this book a [community provided port](https://github.com/JWarmenhoven/DBDA-python) of Kruschke's code examples in Python was made available to the public. 

[^R]: A new user should start with the instructions for installing the free [RStudio](https://rstudio.com/products/rstudio/download/) development environment which makes using R much more user friendly.

[^python]: See [winPy](http://winpython.sourceforge.net/) or [anaconda](https://www.anaconda.com/products/individual) for good staring points for new users.

*   [Model Based Machine Learning (Bishop et. al., mbmlbook.com) ](https://mbmlbook.com) - is a free online book. Christopher Bishop is very well known in his field for authoring, [Pattern Recognition and Machine Learning](https://www.amazon.com/Pattern-Recognition-Learning-Information-Statistics/dp/0387310738). The first chapter of MBML has a great introduction to probabilistic modeling that requires no machine learning experience. The first chapter of MBML also includes the wonderful Mr. Black murder mystery narrative.

*   [pyMC](https://docs.pymc.io/learn.html) - is an open source Python library that provides a clean and simple interface to many complex computational tools that are useful for Bayesian statistics.

*   [Arbital](https://arbital.com) - is an online resource that covers much of the theoretical content described in this manual in one form or another. Specifically the odds form of Bayes theorem. From a user experience perspective (as of late 2020) the site is slow, and hard - in my opinion - to locate information on. It is also not optimized for Google either. User experience aside, the content it self is best in class.

*   [Lesswrong](https://www.lesswrong.com) - is an online community by some of the same team as [Arbital](https://arbital.com). They are a "community dedicated to improving our reasoning and decision-making. We seek to hold true beliefs and to be effective at accomplishing our goals. More generally, we work to develop and practice the art of human rationality." In particular see [Rationality: A-Z](https://www.lesswrong.com/rationality/preface), or the same content in a fun narrative: [Harry Potter and the Methods of Rationality](https://www.lesswrong.com/hpmor), to get examples of how Bayes theorem can be applied in real life situations.

Other notable resources include [Bayes' Rule - A tutorial introduction to Bayesian Analysis (Stone)](https://www.amazon.com/Bayes-Rule-Tutorial-Introduction-Bayesian/dp/0956372848), [Bayesian Data Analysis (Gelman, et. al.)](https://www.amazon.com/Bayesian-Analysis-Chapman-Statistical-Science/dp/1439840954), [A Student's Guide to Bayesian Statistics (Lambert)](https://www.amazon.com/Students-Guide-Bayesian-Statistics/dp/1473916364), [The Cartoon Guide to Statistics (Gonnick, et. al.)](https://www.amazon.com/Cartoon-Guide-Statistics-Larry-Gonick/dp/0062731025), [The Signal and the Noise (Silver)](https://www.amazon.com/Signal-Noise-Many-Predictions-Fail-but/dp/0143125087). 

## Why this manual exists

A decade ago I thought Bayes theorem would revolutionize the way I solved problems. My personal Bayesian revolution never occurred, so I started trying to understand why. This is the missing manual I wish I had all those years ago. It is an attempt to use a small but relevant subset of Bayesian statistics with simple and consistent language to solve a large subset of practical problems in your everyday life.

I make mistakes with worse consequences all the time, why was figuring out how to use Bayes theorem on day-to-day problems so important? I believe that there are three key mathematical skills everyone needs. In my opinion these skills far surpass anything you might learn in algebra, geometry, or calculus class. They are skills that I believe you need to simply navigate through life:

1. Make rough order of magnitude estimates
2. Understand how compound interest works
3. Think with probabilities 

First on the list is making [rough order of magnitude estimates](ROM). An order of magnitude is a multiple of 10. So an order of magnitude error is when you are wrong by a factor of 10. For example if you think something will cost you \$100 per month and it turns out to cost \$1,000 per month! Order of magnitude errors can ruin your life and yet are surprisingly easy to estimate. For example take a crazy question (that wont ruin your life), how much does a duck weigh? Certainly more than 0.1 lb and less than 10 lb. A duck probably weighs on the order of 1 lb...According to Google a Mallard duck weighs 1.6 – 3.5 lbs, close enough for a rough estimate!

Second on the list is compound interest. It is great when you earn interest, but horrible when you have to pay interest. Failing to understand compound interest can again ruin your life - think crushing student loan debt and not being able to retire when you body starts to give out on you.

Lastly is thinking with probabilities. Life is uncertain. Sometimes things work out in your favor, sometimes they don’t. If you are ignorant of probabilities you might unwittingly make a big bet on a single event that has a low probability of occurring without realizing your risk - again possibly ruining your life. If instead you can embrace probabilities you can make more frequent but smaller bets without bankrupting yourself until you find a winning strategy. This manual attempts to make thinking with probabilities easy.

## Summary
This chapter introduced the idea of Bayes theorem and provided some motivation for how Bayes theorem could benefit you in your daily life. It is important to note that this manual covers a very small portion of the large field of Bayesian statistics. The topics covered here are intended to be relatively easy to grasp and disproportionately helpful when dealing with real world problems. 

The remainder of the manual will provide a [systematic method](process) for using Bayes theorem and then demonstrate its use with a large number of [worked problems](examples). 

The [next chapter](example) shows a full worked example of Bayes theorem in narative form to clearly highlight how Bayes theorem works and what kind of insight it can provide for you before you decide if Bayes theorem will meet your needs.

To ensure your success using Bayes theorem, the [mathematical prerequisites chapter](prereqs) includes a review of two concepts needed for solving problems - relative odds and rough order of magnitude estimates. We assume you know how to multiply/divide if you are reading this manual. Nothing in the prerequisites is more difficult than basic arithmetic that you can do in your head. Mathematical prerequisites could have easily been called application specific vocabulary instead. 

After the prerequisites, the manual gently [introduces Bayes theorem](process) and establishes the standard solution process. The most important chapter in this manual - a large number of [worked examples](examples) - uses the [standard solution process](process) to solve practical real life problems.

Lastly there is a [theory section](theory) tucked away at the end of the book. With any luck you *will not* read this section, but it is there in the event that you like mathematical rigor. Again, the theory section is totally optional reading.
