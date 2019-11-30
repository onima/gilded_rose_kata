# Alexis Notes :

### Gilded rose new logic explaination

For each item :

1) ClassifyItem service is responsible for finding item kind (Legendary, Conjured, Normal, etc...) based on item name and wraps it with associated item class.
2) We skip to next item if item is legendary because it can't be sold or decrease in quality.
3) Each wrapper has a specific coefficient which defines how item evolves (based on sell_in date and item kind).
4) This coefficient is used to update the item quality property => update_quality! method
5) Then, item sell_in property is updated => update_sell_in!

## Installation Hints

The easiest way is to use bundler to install the dependencies. To do so, you need to install the bundler gem if you haven't already done so

    gem install bundler

run bundler

    bundle

### Run specs :

To run the entire test suite : ```rake spec```

To run a specific test/list of tests ```bundle exec rspec <path>```

# The Gilded Rose Kata

The gilded rose kata is a common exercise amongst developers, and will test your refactoring and OOP knowledge.
The idea is to add the "Conjured" item type, and while doing so, refactor the current code.

At the end of the exercise, the process should respect OOP principles (SOLID) and all tests should be green.
You're welcome to add as many classes, methods as needed, and modify/add unit tests if necessary.

We'll be looking for a safe, scalable, performant code.

Hi and welcome to team Gilded Rose. As you know, we are a small inn
with a prime location in a prominent city run by a friendly innkeeper
named Allison. We also buy and sell only the finest
goods. Unfortunately, our goods are constantly degrading in quality as
they approach their sell by date. We have a system in place that
updates our inventory for us. It was developed by a no-nonsense type
named Leeroy, who has moved on to new adventures. Your task is to add
the new feature to our system so that we can begin selling a new
category of items. First an introduction to our system:

- All items have a SellIn value which denotes the number of days we
  have to sell the item
- All items have a Quality value which denotes how valuable the item
  is
- At the end of each day our system lowers both values for every item

Pretty simple, right? Well this is where it gets interesting:

  - Once the sell by date has passed, Quality degrades twice as fast
  - The Quality of an item is never negative
  - "Aged Brie" actually increases in Quality the older it gets
  - The Quality of an item is never more than 50
  - "Sulfuras", being a legendary item, never has to be sold or
    decreases in Quality
  - "Backstage passes", like aged brie, increases in Quality as it's
    SellIn value approaches; Quality increases by 2 when there are 10
    days or less and by 3 when there are 5 days or less but Quality
    drops to 0 after the concert

We have recently signed a supplier of conjured items. This requires an update to our system:

- "Conjured" items degrade in Quality twice as fast as normal items

Feel free to make any changes to the UpdateQuality method and add any
new code as long as everything still works correctly. However, do not
alter the Item class or Items property as those belong to the goblin
in the corner who will insta-rage and one-shot you as he doesn't
believe in shared code ownership (you can make the UpdateQuality
method and Items property static if you like, we'll cover for
you). Your work needs to be completed by Friday, February 18, 2011
08:00:00 AM PST.

Just for clarification, an item can never have its Quality increase
above 50, however "Sulfuras" is a legendary item and as such its
Quality is 80 and it never alters.

