 <!-- Bayes Theorem - The Missing Manual is licensed under a creative commons licence (CC BY-NC-SA 4.0). -->
 (prereqs)=
# Mathematical prerequisites

To be successful using this manual you need to have a strong understand of two key prerequisite concepts:

1. [Relative odds](relative-odds)
2. [Rough order of magnitude estimates](ROM)

Relative odds are a way of quantifying your beliefs. Relative odds are similar to probability, but more user friendly. 

Rough order of magnitude estimates are a fancy way of making an educated guess. We are almost never given all the information that we need to apply Bayes theorem, so it is necessary to estimate the *missing* quantities. Luckily Bayes theorem is very useful with *close enough* numbers. Your rough order of magnitude estimates can be off by more than 300% and you will likely still get a result that is good enough to make decisions with!

(relative-odds)=
## Relative odds

Gambling predates the development of probability theory. It turns out that gamblers have a very intuitive and effective way of describing their belief that an event will occur. This is known as the relative odds. Often just referred to as the ‘odds’, but it is important to note that odds are always relative. 

Probability and odds are not the same thing. In some simple cases you can convert back and forth between odds and probability, in other more complex situations the conversion does not work. Ultimately it is easier for mathematicians to use probability for derivations and proofs, and not odds, so most textbooks follow this precedence and use probability.

This manual is for day-to-day users of Bayes theorem, so we will choose to utilize the easier form of the theorem that uses relative odds. The odds form of the theorem uses multiplication. The probability form of the theorem uses integrals that are not solvable. I’ll let you decide which form is best for you. See the [theory section](theory) if you really want to learn how to derive Bayes theorem in its different forms.

Odds are a relative measure of belief. In layman's terms you may represent odds by saying I think rain today is twice as likely as sunshine. Quantitatively odds are a ratio. For example, the relative odds of rain today to sunshine is 2 to 1. Other equivalent representations of the same odds are 2/1, or 2.0, or 2:1 (pronounced two to one). 

Each form of representing odds has its own purposes, but for this manual we will exclusively use the shorthand notation with the colon like 2:1 to keep things consistent.  

When things get complex and there are more than two possible outcomes you can say things like the relative odds that Mr. Green, Ms. Peacock, and Col. Mustard are guilty are 1:5:7 (one to five to seven). This means you believe that it is fives times as likely that Ms. Peacock is guilty relative to Mr. Green, and Col. Mustard is 7 times as likely to be guilty than Mr. Green. Col. Mustard is 7/5 = 1.4 times as likely as Ms. Peacock to be guilty. 

This shorthand version of representing relative odds will be shown to be great for doing mental math. However, if you need to communicate your beliefs to another human being make sure you provide some context and define what the odds represent. For example, I believe that the odds of rain to sunshine are 2:1. Or, the odds in favor of candidate A are 3:2.

Odds can be scaled and remain equivalent. For example these are all the same odds, $1:2 = 2:4 = 50:100$. This scaling is ultimately what makes relative odds less formal than probabilities, but easier to use when doing mental math. If odds are a ratio, then probabilities are a fraction of the whole. 

You may have knowledge in the form of probabilities that you might want to convert into relative odds. For example, say you are told by your bookie friend that the horse Lucky Lucy has a 0.12 probability of winning a race and that Hairy Harry has a 0.09 probability of winning. The odds of Lucky Lucy winning relative to Hairy Harry is $0.12:0.09 = 12:9 = 4:3$. Note how this encodes no information about the other horses in the race who collectively have a 0.79 probability of winning. 

If however your bookie friend tells you that the odds of Lucky Lucy to Hairy Harry winning the race are 4:3, there is no way to calculate the respective probabilities of each horse winning without more information. You have no way of distinguishing if the underlying probabilities are 0.12:0.09, or 0.24:0.18, or 0.36:0.27, etc because they all reduce to 4:3.

According to a horse betting [website](https://betmix.com/how-often-does-the-favorite-win-a-horse-race/#:~:text=On%20average%20favorites%20win%20about,%2C%20surface%2C%20class%2C%20etc.): “On average the favored horse wins its race about 35% of the time”. It is important to identify that 35% is a descriptive statistic based on data and not a belief. Depending on a number of things like the source of the information, how the data was collected, and the relevance to your situation, a descriptive statistic may or may not be strong evidence to change your beliefs. It will be shown how Bayes theorem can be used to update your beliefs (represented as odds) based on observed data (represented with statistics).

If you hear someone say that something has a chance of occurring you have to be very careful interpreting that information because it could mean a few different things. For example if you were at a baseball game and the person sitting next to you offers this information without being prompted: “This batter has a 40% chance of getting on base” it could mean a couple of different things:

*   Historically this batter gets on base in 40% of his appearances at the plate
*   I believe the probability of this batter getting on base is 0.4
*   I believe the odds of this batter getting on base are 2:3
*   I would be willing to bet that given multiple appearances at the plate that this batter will get on base on average 40% of the time
*   Based on my encyclopedic knowledge of baseball, and the opposing pitcher, this batter who's on base percentage over the last two years has been 34.6% actually has a 0.4 probability of successfully getting on base in this particular situation. 

To be safe, we never use the words chance in this manual because it is ambiguous if a probability or statistic is being quoted. Furthermore if a probability is being described it is unclear which interpretation of probability is being used. Hearing something described as a ‘chance’ should be a red flag for you that a miscommunication might occur.

For the special case of binary events, which are used often in this manual, there are some simple relations to convert between odds and probability. For example a binary event might be true/false, win/lose, real/fake, success/failure, etc. If we let $H_1$ and $H_2$ be complementary events, meaning there are no other possible outcomes, then we can state that $p(H_1) = 1 - p(H_2)$. This allows us to easily switch back and forth between the odds and probability forms:

If $p(H_n) = p \Rightarrow O(H_n) = \frac{p}{1-p}$

If $O(H_n) = q  \Rightarrow p(H_n) = \frac{q}{1+q}$

In practice the calculation usually goes from odds to probability like this:

- Your posterior odds are in the form of $H_1:H_2$, for example 80:127 for success:failure
- The equivalent probability for outcome $H_1$ is $H_1/(H_1+H_2)$. For example the probability of success is $80/(80+127)=0.3864734 \approx 0.39$
- The equivalent probability for outcome $H_2$ is $H_2/(H_1+H_2)$. For example the probability of failure is $127/(80+127)=0.6135266 \approx 0.61$

(ROM)=
## Rough order of magnitude estimates

Most of the math that we are taught is very strict and definitive. Two times two is *always* four, and typically the old adage "junk in, junk out" applies. Probability theory is a different kind of beast however. Because we are working with beliefs and uncertainty we are allowed a lot of wiggle room. Rough order of magnitude estimates allow us to make educated guesses at quantities that we don't have, but need to know, to use Bayes theorem to reason about the world around us.

An order of magnitude is multiple of ten. One order of magnitude is a multiple of 10, two orders of magnitude is a multiple of 100, and so on. Orders of magnitudes apply to fractions of ten as well like $\frac{1}{10},\frac{1}{100},\frac{1}{1000}$, etc. 

Errors of magnitude are very bad. If you thought you could build an airport in 1 year and it actually took 10 years, or you thought fixing your car would cost \$100 and it took \$1000. Let's not mince our words here, if you make an error that is off by a factor of 10 or more you made a stupid mistake. 

'Don't make a stupid mistake' is a relatively low hurdle to jump over. When making rough order of magnitude estimates we strive to estimate the correct order of magnitude for a quantity. A rough order of magnitude estimate is never 'correct' but that is ok because knowing the order of magnitude is still very helpful for decision making when you previously knew absoluletly nothing. Being in error by 200, 300, or even 500% is not that bad compared to an error of 10x or more. 

The following estimates are all equivalent  in terms of their order of magnitude: 124, 312, 701. They are all on the order of a 100 [^equivalent].

[^equivalent]: In this case equivalent means if you take the $log_{10}$ of each number and then round down. For example $log_{10}(124)=$ {glue:text}`log124:2.2f` $\Rightarrow$ {glue:text}`log124_floor:.0f`, $log_{10}(312)=$ {glue:text}`log312:2.2f` $\Rightarrow$ {glue:text}`log312_floor:.0f`, $log_{10}(701)=$ {glue:text}`log701:2.2f` $\Rightarrow$ {glue:text}`log701_floor:.0f`. 

There are some good books dedicated to the art/science of making rough order of magnitude estimates [^books]. For our purposes however you only need to learn how to bound your estimates and decompose the problem. 

[^books]: Some good books on making ROM esitimates include: [Guesstimation: Solving the World's Problems on the Back of a Cocktail Napkin](https://www.amazon.com/Guesstimation-Solving-Worlds-Problems-Cocktail/dp/0691129495), [Guesstimation 2.0: Solving Today's Problems on the Back of a Napkin](https://www.amazon.com/Guesstimation-2-0-Solving-Todays-Problems/dp/069115080X), [How Much Is that Cure in the Window?: Simple Math Solutions for Complicated Problems in Biology, Medicine, and Healthcare](https://www.amazon.com/How-Much-that-Cure-Window-ebook/dp/B089LWNY5K), [How Many Licks?: Or, How to Estimate Damn Near Anything](https://www.amazon.com/How-Many-Licks-Estimate-Anything/dp/0762435607)

To use this method first break the problem down into smaller pieces. Don't go straight for the answer, break it up into small more manegable estimates. Then ask yourself what order if magnitude for your estimate would be ridiculously high, and what would be ridiculously low. Finally pick a number in between your bounds. 

[The next section](piano-tuners) is an example of a question that your average person would just hold up their hands and shrug, but can be solved with an order of magnitude estimate. Using Google or any form of external reference is considered cheating when making an order of magnitude estimate, mostly because order of magnitude estimates need to be made quickly while on your feet with just mental math.

(piano-tuners)=
### Piano tuners 
About how many piano tuners worked in the city of Chicago in the 1950's?

I know very little about the city of Chicago today, and even less about it in the 1950's. Unfortunately the only time I go to Chicago is when I catch a connecting flight through O'Hare International Airport. I want to decompose this estimate into smaller pieces to make thinking about the problem easier. My strategy is to estimate:

1. The 1950's population of chicago
1. The percentage of the city's population that owns a piano
1. How often a piano needs to be tuned 
1. How many pianos a tuner can service in a year

I will then combine my four estimates into an answer using this relationship I developed for this problem where $P_{1950}$ is the 1950's population, $O$ is the percentage of piano owners, $R$ is how many times per year a piano needs to be tuned, and $S$ is how many pianos a tuner can service in a year.

$$Piano \space tuners \approx \frac{(P_{1950} \times O) \times R}{S}$$

I think there are millions , not 10's of millions, of people living in Chicago today. In the 50's maybe I would estimate more than 100,000 people lived in the city and less than 10 million, so I would estimate $P_{1950}$ as on the order of a million people. I wish I could do better than this, but I simply don't have any better information.

I am not sure how many people are piano owners. I'm confident that the rate is less than 1 in 10 because pianos are rather expensive. On the lower side I just don't know. 1 in 1000 seems unrealistically low because there were less sources of entertainment in the 50's (e.g no Netflix!). For lack of better insight I say that $O$, the percent of the population that own pianos in the 50's, is on the order of 1 in 100 or 0.01.

I am not a piano player so I don't know how often you tune a piano. Any man made machine requires maintenance, but unlike a car a piano is not used as much or as roughly. My guess is than tuning is required less often than a car, so no more than once a year. On the other hand 10 years seems like too long to go between tunes. So I pick $R$, the rate of tuning, as being on the order of once every three years, or $\frac{1}{3}$ tunes per year.

I've never seen a piano tuned before, but I feel that it is an involved process that probably involves tuning forks. Piano tuners seem like craftsmen to me, so this is not a process that should not be rushed. Plus the tuner has to come to where the piano is, so there would be travel involved between jobs. The average work year is 50 weeks, and I think that you could tune one piano per day. So I set $S$ as $50 \times 5 = 250$ pianos per year per tuner.

$$Piano \space tuners \approx \frac{(P_{1950} \times O) \times R}{S} = \frac{(1,000,000 \times 0.01) \times \frac{1}{3}}{250} = 13.3 $$
So I would estimate that there were on the order of 10's of piano tuners in the city. In practice this could mean between 10 and 99 tuners. I think this makes sense because I would expect more than 1 tuner in the city. I am less certain about my upper bound, but having 100's of tuners in the city seems excessive.  

A two minute check of Google reveals some interesting information. 

- I did not differentiate between Chicago and the Chicago metro area, that could significantly change the numbers of the total population by an order of magnitude!
- The city of Chicago's population actually peaked in the 1950's census at 3.6 million. Today it is down to around 2.8 million.
- I don't see any numbers for the 50's, but the Chicago metro population as of 2010 was closer to 9.5 million people
- [Yellowpages.com](https://www.yellowpages.com/) (accessed December 2020) returns 87 results for piano tuners in Chicago 

This question was not random, but rather a famous example problem, so there are others on the internet who have published an answer. For example there is an [estimate of 125 tuners](http://web.pdx.edu/~pmoeck/pdf/The%20classic%20Fermi%20problem.pdf). It seems that others estimated a larger population for the city and that piano tuners work faster - can tune 3-4 pianos per day. 
This is an example of why rough order of magnitude estimates are easy to make. My errors - low on the population, and high on the number of tuners needed - canceled out. This was not luck but a property of decomposing the problem into smaller pieces. Every piece of my estimate is a source of error, but as long as I am not consistently high or low with my errors, but instead have random errors in both directions, my mistakes tend to cancel out. The more steps I decompose the problem into the more likely the errors will cancel out. 

Initially I was oblivious as to the number of tuners in Chicago in 1950's. My order of magnitude estimate was incorrect, but at least I had a feel for the problem. In this particular case Google could have helped me. In general however if a problem is hard enough, Google will be of less utility and suck up more of your time.

Not every rough order of magnitude problem is this involved. If you ask yourself what order of magnitude is ridiculously high and low, and then pick a number in between you can converge on a sufficiently realistic number to use in your reasoning. If the initial estimate proves significant you can always invest time and resources to make it better later. 

## Summary
This chapter introduced two concepts - relative odds and rough order of magnitude estimates - that you need to be successful when using Bayes theorem as described in this manual. These concepts are less mathematical and more process based in nature. This is a theme that will continue in the next chapters. The math needed for Bayes theorem is quite simple and should usually be performed in your head while you are working problems. This manual will next show a single [standardized method](process) for applying Bayes theorem to practical problems.  
