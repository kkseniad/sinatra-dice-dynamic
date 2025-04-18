require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:num_of_rolls/:num_of_sides") do
  @num_dice = params.fetch("num_of_rolls").to_i
  
  @sides = params.fetch("num_of_sides").to_i

  @rolls = []

  @num_dice.times do 
    die = rand(1..@sides)
    @rolls.push(die)
  end

  erb(:flexible)
end
