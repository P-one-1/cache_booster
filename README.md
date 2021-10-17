# REFFERENCE:

* https://scotch.io/tutorials/how-to-improve-website-performance-with-caching-in-rails

# There was issue in seed.rb
* uninitialized constant Faker::StarWars

# Low Level Caching

The first type of caching I'd like to discuss is called low level or model caching. In my opinion, this is the simplest type of caching that still can (when used properly) boost the performance of some particular page quite significantly. The idea is that we cache the results of a complex query and return them without re-running the same query over and over again.
