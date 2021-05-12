<!-- Bayes Theorem - The Missing Manual is licensed under a creative commons licence (CC BY-NC-SA 4.0). -->
(example)=
# Motivating example

In the foreword of [Bayes' Rule - A tutorial introduction to Bayesian Analysis](http://jim-stone.staff.shef.ac.uk/BookBayes2012/bookbayesch01.pdf), James Stone Writes:

> Lecturers (and authors) like to teach using a top-down approach, so they usually begin with abstract general principles, and then move on to more concrete examples.  In contrast, students usually like to learn using a bottom-up approach, so they like to begin with examples, from which abstract general principles can then be derived. As this book is not designed to teach lecturers or authors, it has been written using a bottom-up approach. Accordingly, the first chapter contains several accessible examples of how Bayes’ rule can be useful in everyday situations, and these examples are examined in more detail in later chapters.

Amen to that! Here is a full example to set the stage for the rest of the manual. This example is provided in narrative form to introduce the idea of Bayes theorem. Later in the manual the [worked examples](examples) chapter shows how to apply Bayes theorem to 20+ problems using the [standard solution process](process).

## Mmmm...Worcestershire Cola

Say that you open up your Facebook app one morning and see a headline that says "Study shows Worcestershire sauce cola taken in moderation reduces risk of heart disease" [^simpsons]. After spitting your morning coffee all over the passenger next to you on the train in response to this headline, you resort to Bayes theorem to decide how you interpret this so-called news. Your hypothesis is that the news headline is fake news. We will represent our beliefs in terms of relative odds that the headline is fake/real. Your gut tells you this headline is complete bull shit and you estimate the odds conservatively at 100 to 1 against the hypothesis. Note that we will use shorthand to denote the 100 to 1 odds as "100:1". You believe that headline is 100 times more likely to be fake news than real news. Before you even read the news story, you realize that it will take very strong evidence to change your mind. To your dismay, the news story describes how a prestigious team of researchers at the Harvard medical school conducted a randomized trial at 17 hospitals over the course of 10 years encompassing 14,129 patients. The resulting decrease in heart disease for Worcestershire sauce cola drinkers was on average 13%! This checks all the major elements of a good medical study, so you prescribe the likelihood of the observed effect occurring if the story is fake to be 1:64 in favor of the news being real. We will go into [much more detail](medical-heuristic) about where the 1:64 odds came from later on - just run with it for now. 

[^simpsons]: This is a pop culture reference to the Simpsons television show. See season 19 episode 13, or view [this clip](https://www.youtube.com/watch?v=NdIAmpbXR34). The medical claim and statistics, are of course, purely fictional.

Bayes theorem is a math formula that quantifies a thought process that you likely use multiple times per day without noticing:

1. You have opinions or beliefs about how the world around you works
1. You observe something happen (later we will call this data or evidence to be formal)
1. You may, or may not, revise your beliefs about how the world around you works based on this new observation. Any change in how you think depends on both the strength of your prior beliefs - are you certain, or just ambivalent - and how convincing your observation was - are you shocked, or was it a mundane observation.

Mathematically the [odds form](odds-form) of Bayes theorem can be stated as:

$$
(prior \space odds) \times (relative \space likelihoods) = (posterior \space odds)
$$ (eq-bayes-odds-verbal)

Those funny names are so ubiquitously standard in the literature on Bayes theorem that I felt they had to be used even if it will take some time to understand what they mean. Let's break the equation down:

**Prior odds** - This term represents what you would have thought prior to making any observations. For example, if you have a loving and healthy relationship with your partner your prior odds that they would cheat on you would be very low. In our Worcestershire cola example, before we read the article, we were very skeptical of the headline and assigned our prior odds as very strongly in favor of fake news.

**Relative likelihoods** - This term can be considered the strength of the evidence/data/research/argument. If your best friend in the world tells you your goldfish is dead then there is probably a strong likelihood that the goldfish is in fact dead. If a supermarket tabloid tells you that the president is a cross dressing martian, you might find it *unconvincing* evidence given the source and therefore assign a weak likelihood. While the prior odds are often based on your gut feeling, the relative likelihood is based on any additional information you are able to collect.

**Posterior odds** [^buttox] - This term is the output of Bayes theorem. This represents the odds of an event occurring given some observation. The posterior odds are a combination of our original belief and any insights gained from the research we performed after initially reading the headline. The posterior odds show how our original beliefs might change given everything we now know about the potentially fake news story.

[^buttox]: Making a buttocks jokes when discussing Bayes theorem is a major no no in the eyes of serious mathematicians. Please stop giggling every time I say *posterior*. 

The math here is alarmingly simple, just multiplication. The trick is identifying that you can use Bayes Theorem and establishing *good* priors and relative likelihoods. Like most things in life you won't be given all the information you need, you will have to learn how to find or accurately estimate the missing pieces. Luckily, as long as you can estimate values to the correct order of magnitude, Bayes theorem is usually robust to small errors [^small]. 

[^small]: In this context, an error of 200 - 300% is considered small! If you can keep your errors less than 500%, things will still probably work out for you mathematically.

Going back to our example. We want to evaluate: "Is the Worcestershire sauce cola news story fake or real"? This is a binary outcome. Either the news story is fake or it is real. Bayes theorem is going to provide us with the odds that the story is fake/real. Our gut feeling is that the story is fake (Worcestershire sauce cola, is that even a real thing?!). We set our prior odds at 100:1 in favor of fake. We are not so hard headed that we refuse to believe the hypothesis could never be true, no matter what else we learn about it, but we firmly believe that the story is complete malarkey. After actually reading the news story, we are quite surprised at the rigorous science used to justify the claim of reducing heart disease. As will be discussed later, we use a [heuristic](medical-heuristic) method to assign a relative likelihood of 1:64 in favor of the news being real. This implies that the evidence for the story being true is certainly compelling. Multiply the odds term-by-term to arrive at the posterior odds the news story is fake. In our example term-by-term means $100 \times 1 = 100$ and $1 \times 64 = 64$. See {numref}`worcestershire-sauce-initial`.

```{list-table} Odds of Worcestershire sauce cola news story being fake or real
:header-rows: 1
:widths: auto
:name: worcestershire-sauce-initial

* - 
  - Fake news
  - Real news
* - Prior odds
  - 100
  - 1
* - Likelihood
  - 1
  - 64
* - Posterior odds
  - 100
  - 64
* - Simplified posterior
  - 25
  - 16
* - Probability
  - 0.61
  - 0.39
```

The posterior odds of the news story being fake/real, according to Bayes Theorem, are 100:64. This simplifies to odds of 25:16. The story is $25/16=1.56$ times more likely to be fake than real. This represents a probability of about 0.61 that the story is fake. Even after all of the impressive evidence, our initial skepticism prevents us from believing that the news story is real. Granted we now admit that we are sufficiently uncertain about the credence of the story, pegging our beliefs in only slightly stronger odds than a fair coin flip.

This however is not where the Worcestershire cola story ends. Using Bayes theorem does not eliminate our need to think critically. Initially, you were incredibly sure Worcestershire cola was fake news, and then you saw compelling evidence to change your mind. Rarely, are we so sure and so wrong at the same time, so you keep digging for additional pieces of evidence. In this second phase of the investigation, your posterior odds (25:16 for fake:real) are now used as your prior odds as you collect more evidence. First, you review the actual paper quoted by the story. The news story was approximately correct, but upon closer inspection of the original journal paper, there are some details that slightly diminish your faith in the method used to evaluate the clinical trial. Make your new likelihood 2:1 for fake:real. The journal the article was published in is not a top tier journal like the New England Journal of Medicine, but rather a second tier journal, so we revise our new likelihood again to 4:1. The lead author *was* at the Harvard medical school, but no longer works there - likelihood becomes 8:1 in favor of fake. A bit more digging upends a news story describing how the lead author on the paper resigned under a cloud of controversy from the university - revise the likelihood to 16:1. Finally, you discover that the lead author of the paper now works for the Worcestershire cola company as head of R&D - likelihood becomes 32:1 in favor of fake. At this point your intuition should tell you what is going to happen, the odds of your hypothesis being true are going to plummet, but let's do the math for the sake of practice:

```{list-table} Updated odds of fake news
:header-rows: 1
:widths: auto
:name: worcestershire-sauce-updated

* - 
  - Fake news
  - Real news
* - Prior odds (from {ref}`above <worcestershire-sauce-initial>`)
  - 25
  - 16
* - Likelihood
  - 32
  - 1
* - Posterior odds (with more evidence)
  - 800
  - 16
* - Simplified posterior
  - 50
  - 1
* - Probability
  - 0.98
  - 0.02
```
:::{note}
You have a couple options with how you process multiple pieces of evidence. In this second part of the example we lumped all the evidence (trial details, second tier journal, employment scandal, conflict of interest, etc...) together and used Bayes theorem once. You could have also processed each piece of information separately with successive applications of Bayes theorem. In the end, you will get the same answer, so choose the method that is most convenient for your workflow.
:::

Bayes theorem revises your belief to 800:16 in favor of fake news. This simplifies to 50:1 for the odds of fake to real. Fifty times more likely to be fake than real, or a 0.98 probability that the news is fake. Again, the numbers don't matter all that much as long as you are not grossly incorrect - they were all subjective estimates anyways. The key takeaway here is the intuition about your initial belief, the surprise at the strength of the initial evidence, and the impetus to not take things at face value when the prior odds and the likelihood are in stark disagreement. 

The above was a narrative for introducing Bayes theorem, but there was a lot of hand waving and 'just trust me' going on. In the [next chapter](prereqs), we will lay out the two mathematical prerequisites needed to ensure everyone has consistent success, then the one and only method used in this document for [solving](process) all the [example problems](examples) will be presented.

## Why Bayesian inference is so useful

Despite the long list of caveats and constraints that I have placed on Bayes theorem to keep the calculations as simple mental math, it is still a very useful formula. Uncertainty is inherently handled by the use of probabilities/odds. Even in its simplest form, probabilities are a wildly powerful and practical tool.

As you learn more about your problem, you can incrementally update your beliefs. There is no difference in the end result if all your data arrives in one batch at once, or if you slowly over the course of a decade collect data. If the data points are the same then the final result will ultimately be the same. As an added bonus, you don’t have to wait until all observations arrive to reason about your world. In fact, if the first few data points that you observe surprise you, it would be smart to generate new hypotheses that better describe the data instead of waiting for your original hypothesis to be fully rejected as highly improbable.

For observations made outside of a laboratory, it is very common for the data to be observed before any hypotheses are generated. It would be foolish to only incorporate information after designing an experiment to test your hypothesis. There is no notion of [temporal constraints](temporal-constraints) in Bayes theorem, so developing your priors after seeing the data is not wrong as long as you don’t pick your probabilities to reinforce your beliefs instead of revising your beliefs based on the probabilities. 

Finally, the intuition of Bayes theorem can be more helpful than running the actual numbers. If your understanding of Bayes theorem conditions you to be aware of situations where solid reasoning is not being applied, for what ever reason, you may not need to actually plug in the numbers. 

## Summary
This chapter used a motivating problem to introduce the ideas of Bayes theorem. The remainder of the manual will attempt to set you up for success and make the application of Bayes theorem straight forward. The [next chapter](prereqs) will introduce two concept that you need to know to be successful with this manual. Don't be alarmed by the title *mathematical prerequisites*, nothing is more complicated than multiplication you can do in your head. Mostly the next chapter introduces application specific vocabulary. 