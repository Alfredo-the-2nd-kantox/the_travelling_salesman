# The travelling salesman

**Scenario:**

You are a successful salesman working for a big company. You have 32 big accounts around the globe to visit on a periodic basis, and you have been assigned the project of saving money on your already dilated travel expense allowance. Given a list of your companies' GPS locations, the script will help you find the shortest path to visit all 32 places once.

**Technical**

About [Travelling salesman problem](https://en.wikipedia.org/wiki/Travelling_salesman_problem) (TSP)

Haversine formula is used to calculate the distance between cities: <https://en.wikipedia.org/wiki/Haversine_formula>

A brute force solution exploring all permutations is impossible with 32 cities because O(n!).

The algorithm used is the [Nearest Neighbour algorithm](https://en.wikipedia.org/wiki/Nearest_neighbour_algorithm):

It is not the optimal solution but good enough and a quick aproximation.

**QA test**

Fork the repository @ https://github.com/Alfredo-the-2nd-kantox/the_travelling_salesman
Switch to branch `calculate_optimal_route`
Follow the instructions to install it and run the tests. They should pass.

*A) Tests improvements*

Open a Pull Request to merge that branch into the main.
Can you make any comment or suggestion in the specs?
Feel free to open a new branch from it and write any code suggestion and create a PR.

*B) Managing paralel changes*

There's a new PR with a new functionality called `print info for https://www.mapcustomizer.com/.
I'd like you to review it and test it before merging it in the main code.
If it works, approve both PRs and merge them into the main branch.

Note: in order to access your repository make me a collaborator (alfredo.roca@kantox.com)

**Input file specifications**

The input file will contain a listing of cities and coordinates in a tab-delimited file. The filename is named exactly `cities.txt` is located on the same directory where the script is executed. There are no additional spaces or lines at the begging or end of the file.

The schema for this file is as follows:

    <city name> \t <latitude> \t <longitude> \n

An example input file:

    Beijing     39.93   116.40
    Vladivostok 43.8    131.54
    Dakar       14.40   -17.28
    Singapore   1.14    103.55
     (...)

**Installation**

    docker build -t the_travelling_salesman .
    docker run -it -v $PWD:/usr/src/app -w /usr/src/app the_travelling_salesman bash
    bundle install

**Usage:**

    ruby calculate_route_from.rb Beijing

This script does the following:

It creates a list of cities from an external file

    cities = read_cities_from_file File.join(__dir__, 'cities.txt')

It creates a graph where each node is a city

    g = CityNetwork.new({cities: cities})

It generates a travel plan

    travel_route = g.generate_route_from ARGV[0]

And prints it on screen.

**Output**

    Beijing
    Vladivostok
    Tokyo
    Bangkok
    Singapore
    Perth
    Melbourne
    Auckland
    San Francisco
    Vancouver
    Anchorage
    Toronto
    New York
    Caracas
    San Jose
    Mexico City
    Lima
    Rio
    Santiago
    Dakar
    Accra
    Casablanca
    Paris
    London
    Prague
    Moscow
    Astana
    New Delhi
    Jerusalem
    Cairo
    Lusaka
    Reykjavík

**Testing**

```
rspec
```


**Experimenting**

Open the terminal inside the container

```
root@aca46b052a73:/usr/src/app# irb
irb(main):001:0> load "City.rb"
=> true
irb(main):002:0> City.new({lon:23,lat:45})
=> #<City:0x0000562e21847c90 @lat=45, @lon=23, @name="???">
```
