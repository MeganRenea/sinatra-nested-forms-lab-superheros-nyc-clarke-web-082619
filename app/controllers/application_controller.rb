require 'sinatra/base'
require "pry"

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
        erb :super_hero
    end

    post "/teams" do
        @team = Team.new(params[team])
        params[team][heroes].each do |hero|
            Superhero.new(hero)
        end
        binding.pry

        erb:team
    end
end
