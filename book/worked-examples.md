<!-- Bayes Theorem - The Missing Manual is licensed under a creative commons licence (CC BY-NC-SA 4.0). -->
(examples)=
# Worked examples 
This section contains a number of examples, with their solutions, and commentary about the problem. The problems are listed in alphabetical order below. There are multiple [themes](themes) worth highlighting to focus your exploration of Bayes theorem for practical real life problems.

1. [Alien bookcases](alien-bookcase)
1. [Art contest](art-contest)
1. [An atheist and a priest](athiest-priest)
1. [Defective part from two production lines](two-production-lines)
1. [A Failing new employee](failing-employee)
1. [Smoke from a fire or BBQ?](fire-bbq)
1. [Getting married in the rain](married-rain)
1. [Getting robbed by a plumber](plumber)
1. [Heuristic for evaluating medical news](medical-heuristic)
1. [The jealous coworker](jealous)
1. [Librarian or farmer?](farmer-librarian)
1. [The Mony Hall problem](monty-hall)
1. [The more generous slot machine](slot-machine)
1. [The mystic seer](mystic-seer)
1. [Product adoption](product-adoption)
1. [Spam email filter](spam-filter)
1. [Sparking widgets](sparking-widgets)
1. [Strange underwear](strange-underwear)
1. [Who killed Mr. Boddy](mr-boddy)

(themes)=
## Themes

- *Conditional probabilities:* This set of examples is the most basic and is good for practicing the mechanics of using Bayes theorem. While the examples are simplistic, there are none of the usual coin/card/dice examples you find in most textbooks. You just have to identify the relevant numbers and then plug them into Bayes theorem. 
  - [Sparking widgets](sparking-widgets)
  - [The more generous slot machine](slot-machine)
  - [Defective part from two production lines](two-production-lines)
  - [Product adoption](product-adoption)
  - [The Mony Hall problem](monty-hall)
  - [Art contest](art-contest)

- *Base rate neglect:* This theme focuses on a key piece of intuition that is common with Bayes theorem. If the odds of something happening are very low to begin with, then most normal evidence is not strong enough to overcome the prior odds. Humans fail to understand this concept so often that it has been given a proper name *base rate neglect*. Medical screening tests, as introduced in the [solution process](process) chapter, are the quintessential example of base rate neglect. These examples further expand on the base rate neglect concept outside the context of medical testing.  
  - [Librarian or farmer?](farmer-librarian)
  - [Getting robbed by a plumber](plumber)
  - [Smoke from a Fire or BBQ?](fire-bbq)
  - [Getting married in the rain](married-rain)
  - [Alien bookcases](alien-bookcase)

- *Multiple competing hypotheses:* This theme highlights that the methods described in this manual can apply to situations with multiple - more than two - competing hypotheses. If you can only generate a single hypothesis for a real life problem then you might be looking at the problem through an overly simple lens. 
  - [Art contest](art-contest)
  - [Who killed Mr. Boddy](mr-boddy)
  - [The Mony Hall problem](monty-hall)
  
- *Weak hypothesis/evidence, unexamined alternative hypothesis:* This theme was first introduced with the [psychic friend](model-comparison) example in the first chapter. The strength of evidence is an important concept that Bayes theorem can teach us about. It is a common logical flaw to assign more strength to evidence than we should because we are contorting the evidence to support a conclusion we want to be true. Closely related is the concept that we can only reason about hypotheses that we include in our analysis. If you omit the best hypothesis from consideration your analysis will always be sub optimal.
  - [The jealous coworker](jealous)
  - [Alien bookcases](alien-bookcase)

- *Extraordinary evidence and claims:* Bayes theorem can provide a lot of insight into the extreme cases where we are very certain or very skeptical about something. Caution should be used when you are at either extreme end of the probability spectrum. This theme focuses on extreme probabilities.
  - [An atheist and a priest](athiest-priest)
  - [Alien bookcases](alien-bookcase)
  - [A failing new employee](failing-employee)
  - [The mystic seer](mystic-seer)

- *Multiple belief revisions:* It is often claimed that a major benefit of Bayes theorem is the ability to incorporate new evidence incrementally as it arrives. The concept of incremental belief revision was first introduced in the [Worcestershire cola example](example). 
  - [Spam email filter](spam-filter)
  - [The Mony Hall problem](monty-hall)
  - [Heuristic for Evaluating Medical News](medical-heuristic)

- *Heuristic for medical news:* This theme relates to a technique of thinking that can be applied without any understanding of Bayes theorem. Of course it is powered by Bayes theorem, but the user doesn't have to know that to benefit from the method. The example is medical related, but the technique is broadly applicable. Again, first introduced in the [Worcestershire cola example](example), but useful enough that it is explicitly given its own theme.
  - [Heuristic for Evaluating Medical News](medical-heuristic)

- *Relative likelihoods:* Easy introductory problems give you all the information that you need to simply plug numbers into Bayes theorem. Practical problems however will not be so convenient. As described in [step 6 of the standard solution process](standard-solution-process) there is a helpful internal prompt that you can use to estimate relative likelihoods. This theme highlights example problems that explicitly use the internal prompt:
  - [The Mony Hall problem](monty-hall)
  - [The more generous slot machine](slot-machine)
  - [The mystic seer](mystic-seer)
  - [Sparking widgets](sparking-widgets)


(alien-bookcase)=
## Alien bookcases 

>This is the quantitative argument behind the qualitative statement that "extraordinary claims require extraordinary evidence" (a claim popularized by [Carl Sagan](https://en.wikipedia.org/wiki/Carl_Sagan), which dates back to at least [Pierre-Simon Laplace](https://en.wikipedia.org/wiki/Pierre-Simon_Laplace)).
>
>Consider the following hypothesis: What if there are Bookcase Aliens who teleport into our houses at night and drop off bookcases? 
>
>Bob offers the following evidence for this claim: "Last week, I visited my friend's house, and there was a new bookcase there. If there were no bookcase aliens, I wouldn't have expected that my friend would get a new bookcase. But if there are Bookcase Aliens, then the probability of my finding a new bookcase there was much higher. Therefore, my observation, 'There is a new bookcase in my friend's house,' is strong evidence supporting the existence of Bookcase Aliens."
>
> In an intuitive sense, we have a notion that Bob's evidence "There is a new bookcase in my friend's house" is not as extraordinary as the claim "There are bookcase aliens" - that the evidence fails to lift the claim. Bayes's Rule makes this statement precise.
>
> ---[Original source: arbital.com ](https://arbital.com/p/bayes_extraordinary_claims/) 

Bayes theorem certainly applies here. However, given the nature of this problem, any probabilities will be quite subjective. Yet it is still helpful to run the numbers and get a feel for your beliefs. 

The question being asked in the problem is: Who placed the bookcase in Bob's friends house? Establish the hypotheses as:

- $H_1$: Bookcase aliens placed a bookcase in Bob's friends house
- $H_2$: There is some other human reason for the appearance of the bookcase

For accounting purposes set the odds as $H_1:H_2$ for bookcase aliens to 'other reason'. In my life experience so far the existence of bookcase aliens seem very unlikely. Any statement where the odds are heavily against bookcase aliens will work as a prior. Take odds of 1:10^9 (one to a billion) against bookcase aliens being the reason why the bookcase appeared at Bob's friends house.

Next the relative likelihood needs to be established. Irregardless of the prior, lets say that bookcase aliens do exist. It is mentally challenging after setting such an extreme prior to objectively put on the "true believer" hat, but you need to work hard to ignore your preconceived notions during this step. What would the probability be if bookcase aliens existed, that they would place a bookcase in Bob's friends house? Subjectively I set the probability at 0.5 because I'm trying to be as generous as possible. On the other hand, if there is another reason for the appearance of a bookcase I would prescribe a 0.01 probability of someone getting a new bookcase in any given year. Bookcases are big and heavy, so getting a new one is probably pretty rare. The likelihood is 0.5:0.01 or 50:1. The arguments above are summarized in {numref}`alien-other`

:::{list-table} A possible solution to the bookcase alien problem using Bayes theorem
:header-rows: 1
:widths: auto
:name: alien-other

* - 
  - Bookcase aliens
  - Other reason
* - Prior odds
  - $1$
  - $10^9$
* - Likelihood
  - $50$
  - $1$
* - Posterior odds
  - $50$
  - $10^9$
* - Simplified posterior odds
  - $1$
  - $20 \times 10^6$
* - Probability
  - $5 \times 10^{-8}$
  - $0.99999995$
:::

Based on these results the evidence is not strong enough to raise the posterior to the "pragmatically noticeable" odds of say 1:100. This begs the question what likelihood ratio would be need to make the posterior 1:100?

Working backwards, a relative likelihood of $10^7:1$ would be needed to produce posterior odds that indicate that the existence of bookcase aliens are even "pragmatically noticeable". Table {numref}`alien-other-possible` summarizes what might need to happen to even consider bookcase aliens as a reason for a bookcase appearing in a house.

:::{list-table} Working backwards to identify the likelihood ratio needed for posterior odds of 1:100.
:header-rows: 1
:widths: auto
:name: alien-other-possible

* - 
  - Bookcase aliens
  - Other reason
* - Prior odds
  - $1$
  - $10^9$
* - Likelihood
  - $10^7$
  - $1$
* - Posterior odds
  - $10^7$
  - $10^9$
* - Simplified posterior odds
  - $1$
  - $100$
* - Probability
  - $0.01$
  - $0.99$
:::

For a likelihood ratio of $10^7:1$, you would have to have very, very, compelling evidence that the appearance of a bookshelf was the result of aliens AND there would have to be very, very, low probability of some other possible explanation. Bookcase aliens may be a silly example, but if you can think of a test that clearly supports your hypothesis while eliminating other hypothesis at the same time you have struck gold. In practice extreme likelihoods usually require lots and lots of independent observations under widely varying circumstances.

The only other argument that bookcase alien believers can make to refute your results is that you prescribed an unreasonably strong prior. If for the sake of argument your prior was changed to 1:10^6 (one to a million), the relative likelihood would still have to be extremely convincing at odds of 10,000:1. 

In summary if the prior odds are really extreme, it will take extraordinary evidence to change your mind. Keep in mind that it may not be possible to generate such convincing evidence. See the example about the [atheist and priest](athiest-priest) to further explore even more extreme beliefs. 

(art-contest)=
## Art contest 

> An art competition has entries from three painters: Pam, Pia and Pablo
>
> - Pam submitted 15 paintings to the competition, 4% of her works have won first prize in past competitions.
> - Pia put in 5 paintings, 6% of her works have won first prize.
> - Pablo put in 10 paintings, 3% of his works have won first prize.
>
> What are the odds that Pam will win first prize?
>
> --- [Modified from original source at: mathsisfun.com](https://www.mathsisfun.com/data/bayes-theorem.html)

This example is a simple illustration of how to accommodate more than two hypothesis - in this case three possible winners. Keep in mind that the result of the competition is still binary. One person will win, the rest will loose.

The question being asked is: will Pam win the competition? Establish the hypotheses as:

- $H_1$: Pam will win the contest
- $H_2$: Pia will win the contest
- $H_3$: Pablo will win the contest

For accounting purposes set the odds as $H_1:H_2:H_3$ for Pam:Pia:Pablo. Based on the number of submissions each painter made, set the prior odds as 15:5:10. The relative skill of the painters is incorporated when establishing the relative likelihood. Based on the painters historical win rates in other past competitions the likelihood is set at 4%:6%:3% or 4:6:3. Table {numref}`art` summarizes the results of the given information.  

:::{list-table} Data from the art contest problem statement converted into the form for use with Bayes theorem
:header-rows: 1
:widths: auto
:name: art

* - 
  - Pam
  - Pia
  - Pablo
* - Prior odds
  - 15
  - 5
  - 10
* - Likelihood
  - 4
  - 6
  - 3
* - Posterior odds
  - 60
  - 30
  - 30
* - Simplified posterior odds
  - 2
  - 1
  - 1
* - Probability
  - 0.50
  - 0.25
  - 0.25
:::

This assumes to calculate the probabilities that Pam/Pia/Pablo are the only contestants and that one of them has to win (see [mutually exclusive and exhaustive propositions](exclusive-and-exhaustive) for more on this assumption).

It would have been equally valid to assume just two competing hypotheses for who would win the contest, for example Pam:other. Because all the needed information was available to us, we could reason about more than two hypotheses. For another more involved example of reasoning about more than two hypotheses at a time see the [Monty Hall problem](monty-hall).

(athiest-priest)=
## An atheist and a priest 

>An atheist and a priest strike up a conversation. After some debate it is agreed upon that the priest applies a perfect 100% probability to the existence of god, and the atheist applies a perfect 0% probability to the existence of god. How much evidence will it take to convince either one to change their belief, even slightly.
>
>Bayes' theorem suggests that no amount of evidence can change their mind if the probabilities are truly 0 and 100 (as opposed to say 0.00001% and 99.99999%).
>
> --- [Original source: The Signal and the Noise, The Bayesian Path to Less Wrongness, pg 210](https://www.amazon.com/Signal-Noise-Many-Predictions-Fail-but/dp/0143125087)

Table {numref}`god-atheist` puts the information from the problem statement into the standard solution form. We arbitrarily take the position of the atheist, but the math works the same in reverse for the priest as well. For accounting purposes denote the odds as God to no God. For arguments sake assume that some test demonstrates to the atheist very strong evidence (million to one odds!) that God exists. No matter how strong the evidence might be, because the atheist and priest's belief is *absolute*, nothing can can persuade them to change their mind. 

:::{list-table} The example of the atheist and priest's *absolute* belief, and why no evidence can persuade them to believe otherwise.
:header-rows: 1
:widths: auto
:name: god-atheist

* - 
  - God
  - No God
* - Prior odds
  - $0$
  - $100$
* - Likelihood
  - $10^6$
  - $1$
* - Posterior odds
  - $0$
  - $100$
* - Probability
  - $0.0$
  - $1.0$
:::

If beliefs are *very extreme* instead of *absolute* you can work backwards like the [alien bookcase example](alien-bookcase) to determine how convincing you would need to be to change someones beliefs. This example shows that sometimes it is truly a waste of time to argue with someone who either starts with an absolute belief, or wont ever change their mind no matter how strong the evidence.

(two-production-lines)=
## Defective part from two production lines

> Two production lines produce the same part. Line 1 produces 1,000 parts per week of which 100 are defective. Line 2 produces 2,000 parts per week of which 150 are defective. If you choose a part randomly from the stock what is the probability it is defective? If it is defective what is the probability it was produced by line 1?
>
> --- [Original source: Github user gtribello, problem 2](http://gtribello.github.io/mathNET/bayes-theorem-problems.html)

This is a two part problem. The first question, the probability of a defective part, is not easily handled with the standard solution process shown in this manual. The second question, what is the conditional probability of a part being from line 1 given, that it is defective is a classic Bayes theorem problem.

The probability of a defective part is simply $p(\mbox{defective}) = \frac{(100+150)}{(1000+2000)} = 0.083$.

The second questions, which asks you to find $p(\mbox{line}_1|\mbox{defective})$, can be solved with Bayes theorem. There are two competing hypotheses:

- $H_1$: The part came from line 1
- $H_2$: The part came from line 2

For accounting purposes take the odds as $H_1:H_2$ or $\mbox{line}_1 : \mbox{line}_2$. The prior is obtained from the problem statement based on the number of parts produced by each line. Let the prior be 1000:2000 or 1:2. The lines have different historical occurrences of defective parts. If a part came from line 1, its probability of being defective is 100/1000 = 0.1. If a part came off line 2, then its probability of being defective is 150/2000 = 0.075. Line 2 produces defective parts at a lower rate than line 1, but contributes twice as many parts in a week to the total inventory. Take the relative likelihood of a line producing a defective part as 0.1:0.075, or 100:75 = 4:3. {numref}`line1-line2` summarizes the information provided in the problem statement and shows the application of Bayes theorem.   

:::{list-table} Bayes theorem applied to the two production line problem
:header-rows: 1
:widths: auto
:name: line1-line2

* - 
  - Line 1
  - Line 2
* - Prior odds
  - 1
  - 2
* - Likelihood
  - 4
  - 3
* - Posterior odds
  - 4
  - 6
* - Simplified posterior odds
  - 2
  - 3
* - Probability
  - 0.4
  - 0.6
:::

If a part is defective, there is a 0.4 probability that it came from line 1. 

For the truly rigorous reader who wants to go beyond practical real world problems, see the [theory section](theory) on the [probability of evidence](prob-evidence) for a discussion of how $p(\mbox{defective})$ is mathematically relevant to Bayes theorem. However, skipping this diversion wont hurt your ability to use Bayes theorem. 

(failing-employee)=
## A failing new employee 

>A few years back, a senior person at my workplace told me that a new employee wasn't getting his work done on time, and that she'd had to micromanage him to get any work out of him at all. This was an unpleasant fact for a number of reasons; I'd liked the guy, and I'd advocated for hiring him to our Board of Directors just a few weeks earlier (which is why the senior manager was talking to me). I could have demanded more evidence, I could have demanded that we give him more time to work out, I could have demanded a videotape and signed affidavits… but a new employee not working out, just isn't that improbable. Could I have named the exact prior odds of an employee not working out, could I have said how much more likely I was to hear that exact report of a long-term-bad employee than a long-term-good employee? No, but 'somebody hires the wrong person' happens all the time, and I'd seen it happen before. It wasn't an extraordinary claim, and I wasn't licensed to ask for extraordinary evidence. To put numbers on it, I thought the proportion of bad to good employees was on the order of 1:4 at the time, and the likelihood ratio for the manager's report seemed more like 10:1."
>
> --- [Original source: arbital.com ](https://arbital.com/p/bayes_ordinary_claims/)

In this example the question is: Do I believe the that the employee is underperforming in his role? Cast the hypothesis as a true/false statement:

- $H_1$: True - the employee is under performing
- $H_2$: False - there must me another reason for the bad performance

For accounting purposes write the odds as $H_1:H_2$ for true:false. All of the pertinent numbers were explicitly given to us, we just have to confirm that we agree with them. I have limited experience with hiring and firing coworkers, but immediately after the emotionally draining experience of laying off a direct report following months of bad performance my manager said this to me: 'Don't feel bad, sometimes these things just don't work out. I estimate that about 20% of my hires over the years did not work out for some reason or another.' This is exactly the same as odds of bad to good employees being 1:4 in the example, so I think they are reasonable odds. The odds that the manager is telling the truth also seem reasonable to me. I find that it would be unlikely for the manager to lie in general, especially since the author of the example personally recommended the employee. {numref}`failing` summarizes the relevant odds for the sake of being thorough. As described above, this is probably one of those instances when you *don't* run the numbers, the intuition of knowing how Bayes theorem works probably gives you enough insight into the situation because 'extraordinary claims require extraordinary evidence, while ordinary claims just require ordinary evidence'.

:::{list-table} Bayes theorem applied to the failing employee problem
:header-rows: 1
:widths: auto
:name: failing

* - 
  - True
  - False
* - Prior odds
  - 1
  - 4
* - Likelihood
  - 10
  - 1
* - Posterior odds
  - 10
  - 4
* - Simplified posterior odds
  - 5
  - 2
* - Probability
  - 0.71
  - 0.29
:::

There are multiple examples ([alien bookcases](alien-bookcase), [atheist and the priest](athiest-priest)) highlighting examples with extreme claims or evidence. This example contrasts with those examples because extreme odds were intentionally not used. To successfully solve real world problems it is helpful to be able to identify when extraordinary evidence is required as well as when just ordinary evidence is needed to change your beliefs.   

(fire-bbq)=
## Smoke from a fire or BBQ? 

> From your suburban home you see smoke in the distance, what is the probability that there is a structure fire?
>
> --- [Original source: mathsisfun.com ](https://www.mathsisfun.com/data/bayes-theorem.html)

In the suburbs there are not many reasons to have a fire. There could be a structural fire, or there could could be smoke coming from some kind of bar-b-que. Due to restrictions from the home owners association and the city it is unlikely that someone is burring leaves or trash.

The question being asked is: Do you believe that there is a structure fire? Cast the hypotheses as:

- $H_1$: There is a structure fire
- $H_2$: Some other source, maybe a BBQ, is causing the smoke

For accounting purposes write the odds as $H_1:H_2$ for structure fire : BBQ. I have only seen one burned out single family home in a neighborhood near me in my entire life. So set the prior odds at 1:99 against a fire. 

To determine the relative likelihood I ask myself what would the probability be of seeing smoke if each hypothesis was true:

- If there was a structure fire, I would almost certainly see smoke. Set the probability at 0.9.
- If there was a BBQ the probability of seeing smoke would be much less. Charcoal grills only smoke for a few minutes when you first start them up. Gas grills may not smoke at all when started. Set the probability to 0.1.

The probabilities just happen by coincidence to sum to 1 in this example, in general this is not a requirement. The relative likelihood is therefore the ratio of the probabilities, 0.9:0.1 = 9:1. {numref}`structure-fire` summarizes the reasoning used in this example.

:::{list-table} A summary of the reasoning for the structure fire problem and the use of Bayes theorem.
:header-rows: 1
:widths: auto
:name: structure-fire

* - 
  - Fire
  - BBQ
* - Prior odds
  - 1
  - 99
* - Likelihood
  - 9
  - 1
* - Posterior odds
  - 9
  - 99
* - Simplified posterior odds
  - 1
  - 11
* - Probability
  - 0.09
  - 0.91
:::

The result shows that even if you see smoke, it is unlikely that there is a structure fire. 

The odds of a structure fire are so low to begin with that you need better evidence than just smoke to believe that there is a structure fire. I worry that my prior was not skeptical enough. The odds in favor of a structural fire might be even smaller. Either way this example teaches that the base rate of an event occurring is important to consider. If the base rate is very small the probability of the event occurring given normal evidence is still very low.

(married-rain)=
## Getting married in the rain 

>Marie is getting married tomorrow, at an outdoor ceremony in the desert. In recent years, it has rained only 5 days each year. Unfortunately, the weatherman has predicted rain for tomorrow. When it actually rains, the weatherman correctly forecasts rain 90% of the time. When it doesn’t rain, he incorrectly forecasts that it will rain 10% of the time. What is the probability that it will rain on the day of Marie’s wedding? Assume that there are no leap years.
>
> --- [Original source: Github user gtribello, problem 3](http://gtribello.github.io/mathNET/bayes-theorem-problems.html)

The question being asked in this example is: Do you believe that it will rain tomorrow? Cast the hypotheses as:

- $H_1$: Rain at the wedding ceremony
- $H_2$: Clear or simply overcast at the wedding ceremony

For accounting purposes write the odds as $H_1:H_2$ for rain:clear. The problem statement provides us with historical data to set our prior at 5:360 = 1:72. 

The book [The Signal and the Noise](https://www.amazon.com/Signal-Noise-Many-Predictions-Fail-but/dp/0143125087) dedicates a chapter to how weather forecasts are made. At least one forecaster admits that per company policy when a low probability of rain is predicted they intentionally forecast the probability of rain to be higher than their models indicate. This is an example of where presentation takes precedent over accuracy, because people interpret a 0% 'chance' of  rain as an iron clad promise that it will not rain. Adding a little bit of wiggle room to the forecast helps protect the forecasters integrity in the eyes of a public who are not fully versed in probability theory. In the problem statement when the forecaster incorrectly predicts rain when it is clear instead 10% of the time, this is probably an intentional error.

To determine the relative likelihood we can take the ratio of the provided probabilities for correctly predicting rain, 0.9:0.1 = 9:1. The probabilities just happen to sum to 1. This is not strictly required for a relative likelihood. Table {numref}`rain-on-wedding-day` summarizes the information provided in the problem statement.

:::{list-table} A summary of Bayes theorem applied to the rain on the wedding day problem.
:header-rows: 1
:widths: auto
:name: rain-on-wedding-day

* - 
  - Rain
  - Clear
* - Prior odds
  - 5
  - 360
* - Likelihood
  - 9
  - 1
* - Posterior odds
  - 45
  - 360
* - Simplified posterior odds
  - 1
  - 8
* - Probability
  - 0.11
  - 0.89
:::


The good news for the wedding party is that the odds of rain are still very low given the forecast for rain. This is because the base rate of rain in the desert is so low to begin with that it would take stronger evidence to give significant credence to the forecast for rain. 

If however we could trust the forecaster to present the true probability, and not hold back for the sake of presentation, then the probability of a clear day occurring when the forecast is for rain is only 0.01, then the posterior odds are closer to 1:1 for rain on the wedding day.

(plumber)=
## Getting robbed by a plumber 

> A group of girl friends rented a house on the beach. While they were at the house they had to call a repair man to fix the stove. The repair man made the group nervous because he was seen peering (snooping) into the bedrooms of the house as he was walked from the front door to the kitchen to work on the stove. Someone in the group of friends had recently heard a story in the news of a repair man coming back to later rob a house they had recently worked on - presumably after seeing valuables in vulnerable locations and memorizing the layout of the house. What is the probability they will get robbed by the repairman?
>
> --- [Original source: Julia Galef (video at 4:30)](https://www.youtube.com/watch?v=BrK7X_XlGB8)

The question being asked in the problem is: Do you believe that the repairman will later rob the house? Cast the hypotheses as:

- $H_1$: The repairman is a burglar
- $H_2$: The repair man is honest

For accounting purposes write the odds as $H_1:H_2$ for burglar:honest. While I am sure that there are some criminals posing as repairmen, I would find this to be the exception to the rule. In my experience most repairmen are hard working professionals, so I put the odds at 1:100 for burglar:honest.

This particular repairman however was acting strangely while in the house. To determine the relative likelihood I ask myself what would the probability be of the repairman snooping if each hypothesis was true:

- If the repairman was a burglar, I would almost certainly expect him to look around the house trying to spot the location of valuables. Set the probability at 0.8 because a professional burglar might know how to look around discretely.
- If the repairman was honest I would expect there to be a low probability of snooping. The repairman relies on his reputation to get future work, and acting strangely could negatively impact his reputation. I place a probability of an honest repairman snooping at 0.1.

Therefore take the relative likelihood as 0.8:0.1 = 8:1. Table {numref}`burglar-honest` summarizes the reasoning described so far in this problem and the application of Bayes theorem.

:::{list-table} A summary of using Bayes theorem for the repairman problem.
:header-rows: 1
:widths: auto
:name: burglar-honest

* - 
  - Burglar
  - Honest
* - Prior odds
  - 1
  - 100
* - Likelihood
  - 8
  - 1
* - Posterior odds
  - 8
  - 100
* - Simplified posterior odds
  - 2
  - 25
* - Probability
  - 0.07
  - 0.93
:::

Based on this reasoning it is unlikely that the house will later get robbed. The initial idea for the hypothesis was generated from a news story. A single news story is usually a bad way to generate a hypothesis because the newspaper focuses on negative and unlikely events to sell more papers. For more on interpreting the news with Bayes theorem, see the [heuristic for evaluating the news](medical-heuristic). Either way, the base rate of burglar repairmen is low, so it will take much stronger evidence than snooping to give credence to the idea that the house will be burglarized.  

(medical-heuristic)=
## Heuristic for evaluating medical news 

> A *heuristic technique* is any approach to problem solving or self-discovery that employs a practical method that is not guaranteed to be optimal, perfect, or rational, but is nevertheless sufficient for reaching an immediate, short-term goal or approximation...Heuristics can be mental shortcuts that ease the cognitive load of making a decision. --- [Wikipedia](https://en.wikipedia.org/wiki/Heuristic)

I'm a big fan of heuristics for solving practical problems. When your comfortable with an approximate solution, they can be the proverbial Swiss army knife of problem solving. The following example is really a method unto itself. As I discuss [elsewhere](bayes-derivation), this method very nearly became the basis for this book. Other considerations ultimately made the [standard solution process](process) look a bit different, but it is still a very useful way to apply Bayes theorem to practical problems. Strictly speaking this is a method for generating the relative likelihood, everything else from the standard method still applies.  

This heuristic, which I originally found [suggested by](https://fivethirtyeight.com/features/a-formula-for-decoding-health-news/) Jeff Leek, deals with *bits* of evidence. Each bit of evidence either doubles the likelihood that your hypothesis is true, or halves the likelihood. The original description was tailored to medical news, but you could easily modify the process for any news source. Remember that a news headline is basically advertising, so you should rely on your critical thinking skills to evaluate its merit independently.

> If you see a health headline that interests you, first scan the news article and find the link to the original scientific article describing the result [^result].
>
>Once you have the original research article in hand, you’re looking for a few key pieces of information. These are obviously not the only important characteristics of a study, but they cover a lot of ground. They are:
>
> 1. Was the study a clinical study in humans?
> 1. Was the outcome of the study something directly related to human health like longer life or less disease? 
> 1. Was the outcome something you care about, such as living longer or feeling better?
> 1. Was the study a randomized, controlled trial (RCT)?
> 1. Was it a large study — at least hundreds of patients?
> 1. Did the treatment have a major impact on the outcome?
> 1. Did predictions hold up in at least two separate groups of people?
> 
> --- [Original source: fivethirtyeight.com](https://fivethirtyeight.com/features/a-formula-for-decoding-health-news/)

[^result]: This footnote is taken verbatim from the [source article on fivethirtyeight.com](https://fivethirtyeight.com/features/a-formula-for-decoding-health-news/) being quoted: In general, you should probably ignore any health news article without a direct link to the original research. But if you can’t find a link, another option is to run a search on [Google Scholar](https://scholar.google.com/) or [Pubmed](https://pubmed.ncbi.nlm.nih.gov/). You’re looking for research articles published recently and with some of the authors matching names of people quoted in the news report.

The original source of this example uses the proposed heuristic to evaluate a news headline that said "Hospital checklist cut infections, saved lives." 

The question being implied here is: Do you believe the hospital checklists cut infections and save lives? Cast the hypotheses as:

- $H_1$: True, hospital checklists meaningfully reduce infections 
- $H_2$: False, checklists are not effective

For accounting purposes write the odds as $H_1:H_2$ for true:false. The original author put the odds at 1:4 against checklists being effective. I have created and used safety checklists before, so I would set my prior in favor of checklists being effective. This is the beauty of establishing your prior odds, the original author and I could have a productive discussion over why we chose the prior odds that we did. I see the heuristic as a kind of checklist itself, but because this example is all about establishing the relative likelihood, we will just go with prior odds of 1:4. 

The [research article](https://www.nejm.org/doi/full/10.1056/nejmoa061115#t=articleResults) cited in the news story described above was used to answer the heuristic questions:

1. Was the study a clinical study in humans? *yes*
1. Was the outcome of the study something directly related to human health like longer life or less disease? *yes*
1. Was the outcome something you care about, such as living longer or feeling better? *yes*
1. Was the study a randomized, controlled trial (RCT)? *no*
1. Was it a large study — at least hundreds of patients? *yes*
1. Did the treatment have a major impact on the outcome? *yes*
1. Did predictions hold up in at least two separate groups of people? *yes*

The heuristic treats each of the seven questions as equally important. If a question is answered *yes* then the likelihood is increased by a factor of 2. If the answer is no the likelihood is decreased by a factor of 1/2. Based on these results, 6 yes answers and 1 no answer the likelihood would be calculated as:

$$likelihood = 2 \times 2 \times 2 \times \frac{1}{2} \times 2 \times 2 \times 2 = 32$$ 
The relative likelihood is implied from this result. If the heuristic indicates that the headline is 32 times more likely to be true than false then the relative likelihood will be 32:1. {numref}`heuristic-checklist` summarizes the reasoning and the results of the heuristic for the checklist headline. 

:::{list-table} A summary of the reasoning with Bayes theorem and the heuristic on the checklist headline.
:header-rows: 1
:widths: auto
:name: heuristic-checklist

* - 
  - True
  - False
* - Prior odds
  - 1
  - 4
* - Likelihood
  - 32
  - 1
* - Posterior odds
  - 32
  - 4
* - Simplified posterior odds
  - 8
  - 1
* - Probability
  - 0.89
  - 0.11
:::

Based on the additional research into the underlying study the original author revised his beliefs to indicate that the news headline was likely true.

As a counter example a second headline was considered in the original example. The headline "How using Facebook could increase your risk of cancer" did not hold up under the scrutiny of the heuristic. Based on the underlying research article it was found that only 1 of the heuristic questions could be answered yes, and the remaining six were no's. Therefore the likelihood ratio was calculated as:

$$likelihood = 2 \times \frac{1}{2} \times \frac{1}{2} \times \frac{1}{2} \times \frac{1}{2} \times \frac{1}{2} \times \frac{1}{2} = \frac{1}{16}$$ 
This implies a relative likelihood of 1:16, In conjunction with a skeptical prior, the likelihood further reinforces that the headline should not be trusted.  

This heuristic, or any other like it, seems to be a very practical method for systematically evaluating lots of similar events. Specifically I could see investments being evaluated with a similar heuristic. Given enough attempts, the bias of the heuristic could be identified and the heuristic revised to possibly reduce the bias in future versions.

The original headline for the article that described this heuristic was ["Finally, a Formula For Decoding Health News"](https://fivethirtyeight.com/features/a-formula-for-decoding-health-news/). In this case, I agree whole heartedly that the headline is true.

(jealous)=
## The Jealous coworker 

> You believe that Bob is jealous/competitive with Alice at work. This matters because you are both of their supervisors. At a lunch with just you and Bob he is complaining about Alice not completing a project on time. This seems to support the hypothesis of jealousy. But if you asked yourself what is the likelihood that a coworker complains about someone not finishing a task on time, it could be argued that it is very fair to complain about the situation.
>
> --- [Original source: Julia Galef (video at 6:30)](https://www.youtube.com/watch?v=BrK7X_XlGB8)

The question being asked in the problem is: Do you believe that Bob is jealous of Alice? Cast the hypotheses as:

- $H_1$: Bob is jealous of Alice
- $H_2$: Bob is simply annoyed with Alice

For accounting purposes write the odds as $H_1:H_2$ for jealous:annoyed. The problem statement didn't say anything about your past experience with Bob/Alice, so just assume that you believe the probability that Bob is jealous of Alice is at 0.75, or equivalently odds of 3:1. 

Next the relative likelihood of observing Bob complain about Alice needs to be evaluated. The point of this example is to highlight that an observation is not always strong evidence for or against a hypothesis. Sometimes the evidence is only somewhat influential in changing your beliefs. Complaining about a co-worker does suggest jealousy. But complaining about a co-worker who does not finish work on time as promised is also not that unusual. Ultimately the observation of Bob complaining about Alice *in this situation* is very weak evidence that Bob is jealous. Maybe cast the odds at just slightly better than even odds - so 9:8 in favor of Bob being jealous. You could probably stop at this point by realizing that the likelihood is very near even odds will not change your beliefs appreciably. For the sake of thoroughness {numref}`jealous-annoyed` summarizes the discussion so far.

:::{list-table} A summary of the reasoning with Bayes theorem for the Bob vs Alice jealousy problem.
:header-rows: 1
:widths: auto
:name: jealous-annoyed

* - 
  - Jealous
  - Annoyed
* - Prior odds
  - 3
  - 1
* - Likelihood
  - 9
  - 8
* - Posterior odds
  - 27
  - 8
* - Probability
  - 0.77
  - 0.23
:::

The evidence was not very compelling for either hypothesis, so you revised your beliefs that Bob was jealous from 0.75 to 0.77. If you really need to test if Bob is jealous of Alice you will need a better test where the relative likelihood ratio is more extreme before you can noticeably modify your beliefs.  

(farmer-librarian)=
## Librarian or farmer? 

>Steve is very shy and withdrawn, invariably helpful but with little interest in people or in the world of reality. A meek and tidy soul, he has a need for order and structure and a passion for detail. Which of the following would you find more likely:
>- Steve is a librarian
>- Steve is a farmer
> 
> --- [Original source: 3Blue1Brown, by Grant Sanderson (video at 1:30)](https://www.youtube.com/watch?v=HZGCoVF3YvM)

This example comes from a famous cognitive science journal paper by Daniel Kahneman and Amos Traversky. The only reason I mention their names is that Daniel Kahneman was awarded the 2002 Nobel Prize in Economic Sciences for his work related to the paper, so this example is well known. 

The question being asked in the problem is: Do you believe that Steve is a librarian, or a farmer? Cast the hypotheses as:

- $H_1$: Steve is a librarian
- $H_2$: Steve is a farmer

In the paper they put the prior of farmers:librarians as 20:1 and the likelihood of Steve being a farmer based on the observation of his personality at 1:4 for a posterior of 20:4 = 5:1 or an 83% chance of being a farmer. Of course the paper showed that people uninitiated to Bayes theorem fell victim to the base rate fallacy and estimate that Steve is a librarian a majority of the time [^Kahneman]. Labor statistics show that there are simply many more farmers in the US population that librarians. The standard solution process for this problem is shown in {numref}`farmer-librarian-ex`.

[^Kahneman]: Like most research involving humans, the interpretation of the results in this study are debated. What is important to us is that this is a famous example of using Bayes theorem.

:::{list-table} Solution proposed by Kahneman and Traversky using Bayes theorem to reason about the librarian or farmer problem
:header-rows: 1
:widths: auto
:name: farmer-librarian-ex

* - 
  - Farmer
  - Librarian
* - Prior odds
  - 20
  - 1
* - Likelihood
  - 1
  - 4
* - Posterior odds
  - 20
  - 4
* - Simplified posterior odds
  - 5
  - 1
* - Probability
  - 0.83
  - 0.17
:::

(monty-hall)=
## The Monty Hall problem

> There are 3 doors, behind which are two goats and a car. You are given a chance to pick one of the three doors (call it door A). You’re hoping to pick the door with the car behind it of course. 
>
> You don't get to see what is behind your door yet. Monty Hall, the game show host, examines the other doors (B & C) and opens one of the doors with a goat behind it. (If both doors have goats, he picks randomly.)
>
> Here’s the game: Do you stick with door A (original guess) after Monty opens a door with a goat, or do you switch to the unopened door? Does your strategy matter in this game?
> 
> --- [Original source: betterexplained.com](https://betterexplained.com/articles/understanding-the-monty-hall-problem/), [plus some additional discussion on assigning likelihoods from towardsdatascience.com](https://towardsdatascience.com/solving-the-monty-hall-problem-with-bayes-theorem-893289953e16)

I will admit that I am stretching the definition of *real life problems* with this example. [This problem](https://en.wikipedia.org/wiki/Monty_Hall_problem) is loosely based on the 1963 television show 'Let's Make a Deal' which was co-created and hosted by Monty Hall [^monty]. Contestants are selected from the audience to participate. To increase their likelihood of being picked from the crowd they wear funny and outrageous costumes. The television announcer would then instruct the selected contestant to "come on down!" to the stage. The optimal strategy for the game described here is not intuitive in my opinion, and it is a commonly used example of applying Bayes theorem. 

[^monty]: An advanced use of Bayes theorem can be used to reason about the 'Price is Right' game show which was recently mashed up with 'Let's Make a Deal' to form a hybrid show. See [Optimizing for the showcase on the Price is Right](https://nbviewer.jupyter.org/github/CamDavidsonPilon/Probabilistic-Programming-and-Bayesian-Methods-for-Hackers/blob/master/Chapter5_LossFunctions/Ch5_LossFunctions_PyMC2.ipynb#Example:-Optimizing-for-the-Showcase-on-The-Price-is-Right).

The question being asked in the problem is: Which door do you believe has a car behind it? Cast the hypotheses as:

- $H_A$: Door A
- $H_B$: Door B
- $H_C$: Door C

For accounting purposes write the odds as $H_A:H_B:H_C$ for the  odds of finding a car behind doors A:B:C respectively. The car and goats are randomly placed behind the doors, so there is no reason to initially favor one door over another. Set your prior belief at 1:1:1.

Let's assume that you initially select door A, but are not shown its contents. Monty is then tasked with opening one of the unselected doors (either door B or C). Monty doesn't arbitrarily open one of the remaining doors because that could potentially reveal the location of the car. Instead he will always show you a goat. Here is a summary of how he will pick a door to open:

- If the car is behind door A (your initial selection), then Monty has two choices. He can show you either of the goats which are behind doors B and C. He will choose between B and C randomly. 
- If the car is behind door B then Monty has exactly one door that he can open, door C. 
- If the car is behind door C, then Monty has exactly one door that he can open, door B.

You initially select door A, in our example Monty opens door B to reveal a goat. 

To determine the relative likelihood ask yourself what would the probability be of Monty opening door B if each hypothesis was true:

- If the car is behind door A (the door you chose), and you know that there is a goat behind door B, then you know that Monty will choose randomly which door to show you. If this hypothesis is true you have a 0.5 probability of seeing door B opened.
- Monty revealed a goat behind door B, so the probability of a car being behind this door is 0.0.
- If the car is behind door C, then Monty can only open door B. Door A is not allowed because that was your initial choice, and door C is not allowed because it would reveal the car. If this hypothesis is true, then there is a 1.0 probability of seeing door B opened. 

{numref}`monty-hall-problem` summarizes the reasoning used in the problem.

:::{list-table} A summary of the reasoning for the Monty Hall problem using Bayes theorem. This assumes that initially door A was chosen and Monty opens door B to show a goat.
:header-rows: 1
:widths: auto
:name: monty-hall-problem

* - 
  - Door A
  - Door B
  - Door C
* - Prior odds
  - 1
  - 1
  - 1
* - Likelihood
  - 50
  - 0
  - 100
* - Posterior odds
  - 50
  - 0
  - 100
* - Simplified posterior odds
  - 1
  - 0
  - 2
* - Probability
  - 0.33
  - 0.0
  - 0.67
:::

Working through the numbers shows that the odds of picking the car are not spread equally across the different doors. Because of the constraints on which door Monty can open, door C is more likely to have the car than door A.

The strategy certainly does matter in this game. If a contestant chooses to switch doors after viewing a goat then they increase their probability of winning a car from $\frac{1}{3}$ to $\frac{2}{3}$. I myself am not below dressing up in a funny costume to have better than even odds of winning a car!

Note that our analysis applies in general, there is no stipulation that door A be the left most door. The label A simply represents the door that you initially choose. Doors B and C are assigned to the other doors regardless of how they are arranged physically. 

(slot-machine)=
## The more generous slot machine

> In a casino in Blackpool [England] there are two slot machines: 
>
> - A machine that pays out 10% of the time
> - A machine that pays out 20% of the time 
>
> Obviously, you would like to play on the machine that pays out 20% of the time but you do not know which of the two machines is the more generous. You thus adopt the following strategy: 
>
> You assume initially that the two machines are equally likely to be the generous machine. You then select one of the two machines at random and put a coin into it. Given that you loose that first bet estimate the probability that the machine you selected is the more generous of the two machines.
>
> --- [Original source: Github user gtribello, problem 5](http://gtribello.github.io/mathNET/bayes-theorem-problems.html)

The question being asked in the problem is: Which slot machine are you playing? Cast the hypotheses as:

- $H_1$: Generous
- $H_2$: Stingy  

For accounting purposes write the odds as $H_1:H_2$ for the machine you chose being generous:stingy. There is no reason initially to suspect that one machine is better than the other, so set your prior as 1:1. 

To determine the relative likelihood ask yourself what would the probability be of the slot machine producing a loss if each hypothesis was true:

- If the slot machine is generous, then the probability of loosing on any single play is $1-0.2=0.8$.
- If the slot machine is stingy, then the probability of loosing on any single play is $1-0.1=0.9$

Take the relative likelihood as 0.8:0.9 = 8:9. The discussion above is summarized in {numref}`slot-machine-problem`. 

:::{list-table} A summary of the reasoning using Bayes theorem for the more generous slot machine problem.
:header-rows: 1
:widths: auto
:name: slot-machine-problem

* - 
  - Generous
  - Stingy
* - Prior odds
  - 1
  - 1
* - Likelihood
  - 8
  - 9
* - Posterior odds
  - 8
  - 9
* - Probability
  - 0.47
  - 0.53
:::

After collecting one data point you can say that the probability that you choose the generous slot machine is 0.47. This example is a great jumping off point for a number of statistical diversions. In the theory section there is a discussion for how to use a [different forms of Bayes theorem](beta) to describe your beliefs about the payout rate of the chosen slot machine as a distribution instead of a point estimate. I would also suggest [Conned Again, Watson! Cautionary Tales Of Logic, Math, And Probability](https://www.amazon.com/Conned-Again-Watson-Cautionary-Probability/dp/0738205893) which is a fun discussion of many of the logical fallacies that gamblers and laymen may have.  

A likelihood ratio of 8:9 implies that your observation will do little to modify your prior beliefs. In this example your observation are an inefficient method of changing your beliefs. It will take the collection of multiple data points before you can say with any certainty which machine you are playing on. Slot machines are an artificially random process that is a poor analogy for real life problems. In real life, you can often devise a better test to increase the likelihood ratio and therefore update your beliefs more efficiently.

(mystic-seer)=
## The mystic seer

> "The hand belongs to Mr. Don S. Carter, male member of a honeymoon team on route across the Ohio countryside to New York City. In one moment, they will be subjected to a gift most humans never receive in a lifetime. For one penny, they will be able to look into the future. The time is now, the place is a little diner in Ridgeview, Ohio, and what this young couple doesn't realize is that this town happens to lie on the outskirts of the Twilight Zone."
>
> Rod Serling spoke those words during the opening of the Second season's seventh episode of the legendary TV show, The Twilight Zone. (Ep. 43 - Nick of Time, originally aired November 18, 1960)
> 
> --- [Source: mysticseer.com](http://www.mysticseer.com/the-mystic-seer)

This example pays homage to my father-in-law who is a big fan of the twilight zone. This example is derived from a similar example found in [Bayesian Statistics the Fun Way](https://www.amazon.com/Bayesian-Statistics-Fun-Will-Kurt/dp/1593279566).

A young William Shatner plays the highly superstitious Don Carter in this episode. His new bride Pat, played by Patricia Breslin, is more rational. When car trouble forces the honeymooning couple to wait in a rural diner while their car is repaired they find a fortune telling machine. For a penny you can ask the *mystic seer* a yes or no question. Answers are given on a printed card that comes out of the machine after pulling a [lever](http://www.mysticseer.com/the-mystic-seer). Don asks a series of 7 questions that are shown to all be accurate predictions. Don becomes convinced that the mystic seer is an accurate fortune teller, Pat remains skeptical.

Estimate Don and Pat's prior odds that a fortune telling machine existed, before seeing 7 correct predictions. This is an example of working backwards from perceived posterior odds to someones prior odds as a way to understand what they might be thinking.

The use of *convinced* and *skeptical* to describe someones beliefs are far from quantitative descriptions, so we have to make some brave assumptions to solve this problem. 

The question being asked in the problem is: Do you believe that the mystic seer is a fortune teller? Cast the hypotheses as:

- $H_1$: True
- $H_2$: False  

For accounting purposes write the odds as $H_1:H_2$ for the machine being a fortune teller as true:false.

For the sake of argument assume that *convinced* translates into odds of 3:2 in favor of the machine being a fortune teller, and *skeptical* can be taken to be odds of 1:5. Obviously if you watched the episode you might generate different quantitative interpretations of convinced and skeptical which is fine. The beauty of Bayes theorem is not what odds we pick, but how we must justify those odds to others.

The relative likelihood of the mystic seer being a fortune teller requires us to look at each hypothesis and ask what the probability of observing the data would be given that the hypothesis is true:

- If $H_1$ is true, and the mystic seer is a clairvoyant fortune teller, then the probability of getting all seven predictions correct would be a perfect 1.0. Any number of correct predictions would have a probability of 1.0 because the hypothesis is that the machine is a fortune teller. A single wrong prediction at any point however would eliminate this hypothesis and make the probability exactly 0.0. 
- If $H_2$ is true, then the mystic seer simply got lucky and guessed the correct answer 7 times in a row. Because only yes or no questions are allowed, the probability of answering any one question correctly is 0.5 under this hypothesis. The  probability of randomly guessing the correct answer 7 times in a row would be $0.5 \times 0.5 \times 0.5 \times 0.5 \times 0.5 \times 0.5 \times 0.5 = (0.5)^7 = 0.0078125 \approx 0.008$

The evidence in favor of the mystic seer being a fortune teller is strong in this case. The relative likelihood of the seer being a fortune teller is $1:0.0078125 \Rightarrow 1/0.0078125 = 128$ times more likely than the hypothesis that the machine is randomly guessing.

The discussion above is summarized in {numref}`mystic-seer-unknown-Don` for Don and {numref}`mystic-seer-unknown-Pat` for Pat.

:::{list-table} A summary of the known and assumed quantities for Don in the mystic seer example
:header-rows: 1
:widths: auto
:name: mystic-seer-unknown-Don

* - Don
  - True
  - False
* - Prior odds
  - ?
  - ?
* - Likelihood
  - 128
  - 1
* - Posterior odds
  - 3
  - 2
:::

:::{list-table} A summary of the known and assumed quantities for Pat in the mystic seer example
:header-rows: 1
:widths: auto
:name: mystic-seer-unknown-Pat

* - Pat
  - True
  - False
* - Prior odds
  - ?
  - ?
* - Likelihood
  - 128
  - 1
* - Posterior odds
  - 1
  - 5
:::

Transforming the usual definition of Bayes theorem first shown in equation {eq}`eq-bayes-odds-verbal` to solve for the prior odds gives the result of:

$$prior \space odds = \frac{posterior \space odds}{relative \space likelihood} $$

Therefore Don's prior odds for believing the seer was a fortune teller were $3/128:2/1 = 0.0234375:2 \approx 0.01$ which is roughly $1:85$ against the seer being a fortune teller initially.

Pat's prior odds were $1/128:5/1 = 0.0078125:5 \approx 0.002$ which is approximately $1:640$ against the seer being a fortune teller initially. 

I will leave the detailed analysis of what this might mean for the dynamic between Don and Pat to a licensed marriage counselor, but you can see that they each approached the belief of the seer being a fortune teller very differently.  

(product-adoption)=
## Product adoption

> You are selling a product in an area where 30% of the people live in the city and the rest live in the suburbs. Currently 20% of the city dwellers use your product and 10% of the suburbanites use your product. You are presented with two new sales strategies the first will increase your market share in the suburbs to 15%. The second will increase your market share in the city to 25%. Which strategy should you adopt? What percentage of the people who own your product are city dwellers before your new sales drive?
>
> --- [Original source: Github user gtribello, problem 4](http://gtribello.github.io/mathNET/bayes-theorem-problems.html)

This problem has multiple parts, but because everything you need to solve the problems was provided in the problem statement you can plug the relevant numbers in to find the answers.

The problem asks: what percent of current users are city dwellers before the sales drive? {numref}`percent-city` outlines the relevant quantities and calculates that about 46% of current users live in the city.

:::{list-table} A summary of the reasoning for calculating the percent of current customers who are city dwellers.
:header-rows: 1
:widths: auto
:name: percent-city

* - 
  - City
  - Suburbs
* - Prior odds
  - 30
  - 70
* - Likelihood
  - 20
  - 10
* - Posterior odds
  - 600
  - 700
* - Simplified posterior odds
  - 6
  - 7
* - Probability
  - 0.46
  - 0.54
:::

The second part of this questions asks you which strategy you should choose to increase your profits. {numref}`option-a` outlines the expected outcome for option A, increasing your market share in the suburbs to 15%. 

:::{list-table} A summary of the reasoning for calculating the outcome of option A with Bayes theorem.
:header-rows: 1
:widths: auto
:name: option-a

* - 
  - City
  - Suburbs
* - Prior odds
  - 30
  - 70
* - Likelihood
  - 20
  - 15
* - Posterior odds
  - 600
  - 1050
* - Simplified posterior odds
  - 12
  - 21
* - Probability
  - 0.36
  - 0.64
:::

{numref}`option-b` outlines the expected outcome for option B, increasing your market share in the city to 25%. 

:::{list-table} A summary of the reasoning for calculating the outcome of option B with Bayes theorem.
:header-rows: 1
:widths: auto
:name: option-b

* - 
  - City
  - Suburbs
* - Prior odds
  - 30
  - 70
* - Likelihood
  - 25
  - 10
* - Posterior odds
  - 750
  - 700
* - Simplified posterior odds
  - 15
  - 14
* - Probability
  - 0.52
  - 0.48
:::

Before implementing the sales drive you could expect for every 100 people of population that 30 people would live in the city and 70 would live in the suburbs. For the baseline case (before the new sales strategy), you would expect to sell $30 \times 0.2 + 70 \times 0.10 = 13$ units of your product per hundred people. Option A would be expected to sell $30 \times 0.2 + 70 \times 0.15 = 16.5$ units per hundred people. Option B would be expected to sell $30 \times 0.25 + 70 \times 0.10 = 14.5$ units per hundred people. Option A is your best strategy because the suburban market is much bigger than the city market.

(spam-filter)=
## Spam email filter

Back in the day spam emails were a real problem for email users. Today I rarely, if ever, check my spam folder because the filtering is so precise. Bayes theorem played a major role in removing the burden of spam from email users, and email was then widely adopted as an official form of communication across most organizations. The following example describes the essence of how an email spam filter operates. More importantly for real world problems this example shows how Bayes theorem can be used when there are multiple pieces of evidence that can be used to update your beliefs.

> Assume that you collect a number of emails and manually categorize them as spam or normal emails. This is an easy task, humans tend to be very fast and accurate with this sort of classification. The problem is that humans quickly tire of such a monotonous activity, which is why teaching a computer to filter spam messages is so helpful. Within each of these collections you count how often common words appear in the messages, and compile the results below.
> 
> 
> || Spam | Normal |
> |---|:-:|:-:|
> | Hello | 3 | 3 |
> | Darling   | 1 | 5 |
> | Buy | 3 | 2 |
> |Viagra | 3 | 0 |
>
> What are the odds of a message being spam that contains the phrase “hello darling”?
> 
> --- [Original source: betterexplained.com](https://betterexplained.com/articles/understanding-bayes-theorem-with-ratios/)

The question being asked in the problem is: what is your belief that a message with the words "hello darling" is spam? Cast the hypotheses as:

- $H_1$: Spam message
- $H_2$: Normal message  

For accounting purposes write the odds as $H_1:H_2$ for the odds of spam to normal messages. The statistics on how many emails are actually spam varies, but every statistic that I have seen indicates that spam emails are much more likely than normal email, possibly as high a 98% of all emails are spam. The original author of this example suggested that the odds of spam:normal emails might be 9:1, so we will take that as our prior.

We have data to help generate the relative likelihood ratios. A message with the word 'hello' has even odds, 3:3 = 1:1, of being a spam message. Messages with the word 'darling' have odds of 1:5 of being spam. The word 'hello' will not cause us to change our beliefs, but the word 'darling' will move our beliefs towards the hypothesis that the message is normal. The not so hard trick is that Bayes theorem can allow us to use both pieces of evidence together. {numref}`spam-normal-hello-darling` summarizes the discussion from above. 

:::{list-table} The odds, calculated with Bayes theorem, of a message that contains the words 'hello darling' is spam.
:header-rows: 1
:widths: auto
:name: spam-normal-hello-darling

* - 
  - Spam
  - Normal
* - Prior odds
  - 9
  - 1
* - 'Hello' likelihood
  - 3
  - 3
* - 'Darling' likelihood
  - 1
  - 5
* - Posterior odds
  - 27
  - 15
* - Simplified posterior odds
  - 9
  - 5
* - Probability
  - 0.64
  - 0.36
:::

The total likelihood of the evidence 'hello darling' was calculated in two steps as $3:3 \times 1:5 = 3:15 = 1:5$ in favor of a normal message. The odds form of Bayes theorem makes it very convenient to use multiple pieces of evidence when revising our beliefs, just keep multiplying the odds until you have considered all your evidence. Ultimately the high base rate of spam messages lead us to conclude that the message is still likely to be spam with a probability of 0.64. In this example the evidence lead us to believe that the message was less spammy than your average message.

As a second related example, what are the odds of a message being spam that contains the phrase “buy viagra”? This is in my experience the quintessential spam message. Keeping the same accounting process as above for odds of spam to normal messages, start with a prior of 9:1. 

Based on the observed word frequencies the odds of a spam message containing the work 'buy' is 3:2. The word 'viagra' only appears in spam messages, never in a normal message. Stating the odds as 3:0 will break our mathematical framework like in the [atheist and priest](athiest-priest) example. As a work around conservatively assume that somewhere in the history of the internet that there is a normal message with the word 'viagra' in it. Tweak the likelihood of 'viagra' to be 3:1 just to avoid breaking our mathematical framework. Intuitively we know this message will be marked as spam, but run the numbers in {numref}`spam-normal-buy-viagra` just to be thorough.

:::{list-table} The odds of a message that contains the words 'buy viagra' is spam.
:header-rows: 1
:widths: auto
:name: spam-normal-buy-viagra

* - 
  - Spam
  - Normal
* - Prior odds
  - 9
  - 1
* - 'Buy' likelihood
  - 3
  - 2
* - 'Viagra' likelihood
  - 3
  - 1
* - Posterior odds
  - 81
  - 2
* - Probability
  - 0.98
  - 0.02
:::

After viewing the evidence 'buy viagra' the odds are highly in favor of spam - even after conservatively tweaking the likelihood for the word 'viagra'. 

At this point the question becomes at what odds do we move a message into the spam folder. Accidentally classifying a normal message as spam has fairly serious consequences. Users would much rather see a few spam messages, than have a normal messages hidden from them in their spam folder. If you find even a few normal emails in your spam folder you quickly loose confidence in the filter and start manually checking your spam folder thereby eliminate the benefit of the filter in the first place. Moving normal messages into the spam folder is known as a false positive. 

In the 'buy viagra' example odds of 81:2 implies that for every 83 emails with the words 'buy viagra', 2 will be falsely labeled spam when they are actually a normal email. A 0.98 probability of spam is probably too low for a typical email user. It was suggested by the original author of this example that a threshold closer to 0.999 might be more appropriate.  

This example described what is known a Naive Bayesian filter. The filter is naive because it ignores the very important concept of independence between observations. The odds of seeing the phrase 'buy viagra' together in a spam message is much higher than seeing the words 'buy' and 'viagra' separately in the message. Similarly if your spouse addresses you as 'darling', then the phrase 'hello darling' is much more likely than 'hello' and 'darling' appearing separately. In most cases ignoring independence of observations is a grave mistake that can lead to poor reasoning. For example if you are trying to estimate the number of people with blue eyes it would be misleading to check the eye color of a few families. Within a family, the odds of multiple family members having blue eyes are much higher than the odds of a random person having blue eyes. If you don't have a large enough sample size you could easily over state the odds of having blue eyes because you got unlucky and randomly choose a family or two with blue eyes. Naive Bayesian filters unabashedly ignore the requirement for independent observations, and they still work just fine! This is the exception to the rule, yet I appreciate how well Bayes theorem works when you don't have access to all the information you need and perfectly independent observations.

(sparking-widgets)=
## Sparking widgets

> On an assembly line 10% of widgets are defective and 90% are good. 4% of good widgets emit sparks when operating, and 12% of the defective widgets emit sparks. What percentage of sparking widgets are bad?
>
> --- [Original source: arbital.com](https://arbital.com/p/bayes_rule/?l=693)

The question being asked in the problem is: if you observe a sparking widget, do you believe that widget is bad? Cast the hypotheses as:

- $H_1$: Defective widget
- $H_2$: Good widget

For accounting purposes write the odds as $H_1:H_2$ for defective:good. The problem statement provides you with the information needed for your prior. 10% of widgets from the assembly line are defective, and 90% are good. Take the prior as 0.1:0.9 = 1:9.

To determine the relative likelihood I ask myself what would the probability be of the widget sparking if each hypothesis was true:

- If the widget is defective we would expect 12% of these widgets to spark
- If the widget is good we would expect 4% of these widgets to spark

Therefore set the relative likelihood at 0.12:0.4 = 12:4 = 3:1. {numref}`sparking-widget-problem` summarizes the reasoning described above. 

:::{list-table} A summary of the reasoning for the sparking widget problem using Bayes theorem.
:header-rows: 1
:widths: auto
:name: sparking-widget-problem

* - 
  - Defective
  - Good
* - Prior odds
  - 1
  - 9
* - Likelihood
  - 3
  - 1
* - Posterior odds
  - 3
  - 9
* - Simplified posterior odds
  - 1
  - 3
* - Probability
  - 0.25
  - 0.75
:::


There is a 0.25 probability that a sparking widget is defective.

(strange-underwear)=
## Strange underwear

> Suppose you are living with a partner and come home from a business trip to discover a strange pair of underwear in your dresser drawer. You will probably ask yourself: what is the probability that your partner is cheating on you? The condition is that you have found the underwear; the hypothesis you are interested in evaluating is the probability that you are being cheated on.
>
> --- [Original source: Signal and the Noise, pg 199 ](https://www.amazon.com/Signal-Noise-Many-Predictions-Fail-but/dp/0143125087)

The question being asked in the problem is: Do you believe that your partner is cheating on you? Cast the hypotheses as:

- $H_1$: Cheating
- $H_2$: Faithful

For accounting purposes write the odds as $H_1:H_2$ for cheating:faithful. [Studies have found](http://www.usnews.com/news/national/articles/2008/03/27/how-common-are-cheating-spouses) that about 4 percent of married partners cheat on their spouses in any given year, so we’ll set our prior prior as 4:96 = 1:24.

Next ask yourself if each hypothesis was true, what would be the probability of finding strange underwear in your dresser drawer.

- If your partner was cheating then the odds of finding strange underwear would be fairly high. Assume that you do your laundry at your home, and not a laundromat, to make the reasoning easier. Under this hypothesis take the probability of finding strange underwear as 0.5. 

- If you partner was faithful, the appearance of strange underwear seems unlikely. It is hard to devise a plausible explanation where are 'friend' would loose their underwear at your house. Take the probability as 0.05 of observing strange underwear under this hypothesis. 

Therefore take the relative likelihood as 0.05:0.05 = 50:5 = 10:1 in favor of cheating. {numref}`cheating-faithful` summarizes the reasoning described above. 

:::{list-table} A summary of the reasoning for the strange underwear problem using Bayes theorem.
:header-rows: 1
:widths: auto
:name: cheating-faithful

* - 
  - Cheating
  - Faithful
* - Prior odds
  - 1
  - 24
* - Likelihood
  - 10
  - 1
* - Posterior odds
  - 10
  - 24
* - Simplified posterior odds
  - 5
  - 12
* - Probability
  - 0.29
  - 0.71
:::

Based on the observation of the strange underwear there would be a probability of 0.29 that your partner was cheating on you. This is a classic example of how when you need Bayes theorem the most, it will be hard to estimate meaningful probabilities. 

In this case setting the prior odds objectively would be very difficult. Living with someone means that you have many, many data points about their behavior. To set your prior should you naively ignore additional information and set the prior based on the general population, or should you include additional insights like *your partner has been acting weird recently*? 

Setting the relative likelihoods is similarly difficult. The observed evidence (strange underwear) was unusual evidence with very little, if any, historical or logical precedent. Subjective probabilities are the only possible way to quantify beliefs in a situation like this, but that does not mean they are easy to assign. 

One advantage of Bayes theorem is that it forces you to clearly lay out your reasoning. Given the emotions surrounding a cheating partner you very well may not be objectively reasoning...but at least you can clearly present your thoughts.

If you have a friend who understands the [standard solution process](process) they could critically evaluate your reasoning and provide feedback on the suitability of your prior and relative likelihood. There are never guarantees of good reasoning when using subjective probabilities, but at least there is a framework to productively and openly discuss your reasoning.

(mr-boddy)=
## Who killed Mr. Boddy? 

> Mr. Boddy is found murdered in his study! At the time of his death there were three people visiting the home of Mr. Boddy: Reverend Green, Mrs. White, and Colonel Mustard. 
>
> Based on prior knowledge of their relationship with the deceased and the circumstances that evening the respective probability for Green, White, and Mustard to be the murderer are believed to be 0.8, 0.08, and 0.04 respectively. The probabilities sum to 0.92 meaning there is some belief that another unspecified suspect not staying at the house the night of the murder committed the crime. 
>
> In time it comes out that the murder weapon was a wrench. Suppose we think that Reverend Green, Mrs. White, and Colonel Mustard, if they murdered someone, would respectively be 0.6, 0.9, and 0.3 likely to use a wrench.
> 
> Who is the most likely suspect for the murder?
>
> --- [Original source: arbital.com](https://arbital.com/p/bayes_rule_odds/)

The question being asked in the problem is: Who do you believe murdered Mr. Boddy? Cast the hypotheses as:

- $H_1$: Reverend Green
- $H_2$: Mrs. White
- $H_3$: Colonel Mustard

For accounting purposes write the odds as $H_1:H_2:H_3$ for Green:White:Mustard. The problem provides us with all of the information needed to reason about the problem. Set the prior as 0.8:0.08:0.04 = 80:8:4 = 20:2:1.

The relative likelihoods are provided in the problem description as well, set them as 0.6:0.9:0.3 = 6:9:3 = 2:3:1. The reasoning for this problem is summarized in Table {numref}`mr-boddy-murder`.

:::{list-table} A summary of the reasoning using Bayes theorem for the Mr. Boddy murder problem.
:header-rows: 1
:widths: auto
:name: mr-boddy-murder

* - 
  - Rev. Green
  - Mrs. White
  - Col. Mustard
* - Prior odds
  - 20
  - 2
  - 1
* - Likelihood
  - 2
  - 3
  - 1
* - Posterior odds
  - 40
  - 6
  - 1
:::

This implies that the odds are greatest for Rev. Green as the murderer. We don't calculate a probability in this example because we did not start with a [mutually exclusive and exhaustive](exclusive-and-exhaustive) set of suspects. There was an 0.08 probability of another unspecified murder.

There is also a murder mystery introduction to Bayes theorem in the book [Model Based Machine Learning](additional-refs). [Chapter 1](https://mbmlbook.com/MurderMystery.html) of that book uses a murder mystery similar to the example above to introduce probabilistic thinking. Unlike the example above, probabilities are not just arbitrarily assigned, but rather introduced along with an fun and interesting narrative. Additionally multiple pieces of evidence are introduced, which provides a good example of how relative likelihoods can be generated. It is an excellent introduction to probabilistic thinking in my opinion.

## Summary

When learning a new topic I value examples, so I made an effort to include many practical and real life examples for the application of Bayes theorem in this manual. While examples are great, you can't expect to find an example in this manual for every type of problem you will ever encounter. At some point *solution by analogy* breaks down and you have  generalize the concepts so you can apply Bayes theorem to your own unique real life problems. This section is a summary of what I hope you would learn if you worked through all the example problems and the discussion that accompanies them. The main concepts include: 

- [Be humble with your uncertainty](humble-uncertainty)
- [Estimates provide very useful information](estimates-good-enough)
- [Watch out for extreme cases](extreme-cases)

(humble-uncertainty)=
### Be humble with your uncertainty
I feel that being humble with your assessments and interpretation of uncertainty is very important. By humble I am suggesting that you should use your results to make decisions, but not act as if you have perfect knowledge of previously unknown phenomena. A humble user of Bayes theorem trusts their results, but keeps digging for more evidence with a critical eye to ensure they are not making a logical error. 

There are no safeguards when using Bayes theorem, and you can go wrong at any step - defining the prior, establishing the relative likelihood, or interpreting the posterior. It is easy to trick yourself into over stating your prior beliefs, or casting evidence in a way that supports your favorite hypothesis. Luckily it is also hard to be [horribly wrong](ROM) - off by more than a factor of 10. Posterior estimates can suffer from the same logical fallacies as well, such as seeing your predictions as certainties instead of probabilities.

In most cases the prior and likelihood were personal estimates, so there is lots of wiggle room for different results depending on the numbers input into Bayes theorem. In the techniques described in this manual, uncertainty is cast as a point estimate. When in reality many of these results could be [cast as a range of values](beta). Your point estimate could actually be at one extreme edge of the range of possible values, so you need to treat your results with some humility. 

When you are dealing with extreme odds that are very large or very small extra humility is needed. Extreme odds have both [cognitive](extreme-cases) and [mathematical](extreme-evidence) complications that make estimates even more uncertain.  

If you are being humble with your uncertainty you might:

- Round results closer towards towards even odds to be conservative
- Continue to seek out additional data (use your critical thinking!)
- Play the what if game. What if you made your prior less extreme? What if your evidence was given less strength?
- Work backwards and see if your posterior beliefs have reasonable priors
- Discuss your results with a peer to validate your reasoning
- Play the devils advocate. If you were to make an error estimating the odds, where would it likely be, and what direction would the error be in?

Basically, I hope that simply using Bayes theorem as described in this manual does not make you overly confident. Instead the use of Bayes theorem as described in this manual should develop intuition about a problem. 

(estimates-good-enough)=
### Estimates provide *good enough* information

This manual relies heavily on *subjective probability*. Another word for subjective probabilities are opinions. This might seem insufficiently rigorous to some, but hopefully it can be seen from the examples above how rough order of magnitude estimates provide pragmatic information for decision making with uncertainty. Combined with a dose of [humility](humble-uncertainty), otherwise intractable problems can be reliably reasoned about.

For example the [getting robbed by a plumber](plumber) problem requires some highly subjective estimates. If you were to double the prior odds of a repairman being a criminal you double the posterior odds of that specific repairman coming back to rob the house. However doubling a small number results in a number that is still small, so the reasoning remains the same even with different inputs - there is not a significant risk of getting robbed.

Two friends may not be able to agree on the prior odds of a repairman being a criminal within a factor of two or three, but they can likely agree that odds of 1:10 are too high and odds of 1:1000 are too low. Any odds in the 1:50, 1:100, or 1:200 range will provide a result that is practically equivalent even if it is not mathematically equivalent.

(extreme-cases)=
### Watch out for the extreme cases 
A number of the example problems deal with situations when either the prior or relative likelihood is extreme in some way [^example-problems].

[^example-problems]: See for example: [Alien bookcases](alien-bookcase), [An atheist and a priest](athiest-priest), [A failing new employee](failing-employee), [Smoke from a fire or BBQ?](fire-bbq), [Getting married in the rain](married-rain), [Getting robbed by a plumber](plumber), [The jealous coworker](jealous), [Librarian or farmer?](farmer-librarian).

The concept known as the base rate neglect fallacy is frequently encountered when reasoning with probabilities. This particular fallacy is often how Bayes theorem is first introduced, and was prominently featured in the [motivating example](example) in this manual. A base rate of occurrence is how often something you are interested in occurs in the base population. For example, serial killers are scary, but they are very rare in the general population, so that scratching sound on your window during a storm is unlikely to be a serial killer, and more likely to be a branch from an over grown tree. If you fall for the base rate fallacy you are either incorrectly ignoring that an event is very unlikely to occur, or conversely incorrectly ignoring that an event is not all that rare.

When the base rate is low, you need [lots of evidence](alien-bookcase) to overcome the low rate of occurrence. When the base rate is high, you should not demand [exceedingly strong evidence](failing-employee) to believe something that is common. 

In many cases if you can identify that some of the quantities are extreme, then you don't even need to run the numbers. You should be able to reason about the situation simply by identifying the prior or likelihood as extreme. Conversely if you identify that someone else has extreme beliefs you can avoid wasting your time arguing with them because there is no practical way to modify their beliefs short of presenting impossibly strong evidence. If they hold absolutely certain beliefs like the [atheist and priest](athiest-priest), then even impossibly strong evidence might not be enough to revise their beliefs! 