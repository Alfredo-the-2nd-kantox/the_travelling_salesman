require_relative 'utils.rb'
require_relative 'stop_set.rb'
require_relative 'city.rb'
require_relative 'node.rb'
require_relative 'city_node.rb'
require_relative 'graph.rb'
require_relative 'city_network.rb'
require_relative 'travel_stop.rb'

cities = read_cities_from_file File.join(__dir__, 'cities.txt')
g = CityNetwork.new({cities: cities})

origin = ARGV[0]
travel_route = g.generate_route_from origin

travel_route.map { |stop| puts stop.city.city_name }
