class GamesController < ApplicationController
    def new
       @letters = ('a'..'z').to_a.shuffle[0,10]
    end

    def score
        @letter_validation = params[:word].split("")
        @param = params[:letters].split("")
        @param.each do |letter|
           @result = @letter_validation.include?(letter)
        end
    end
end
