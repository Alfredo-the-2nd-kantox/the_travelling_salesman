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
