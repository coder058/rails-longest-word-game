class GamesController < ApplicationController
  require 'net/http'
  require 'uri'
  require 'json'

  def new

    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score

    @word = params[:word].upcase

    @grid = params[:letters]
    @included = word_in_grid?(@word, @grid)
    @english_word = valid_english_word?(@word)


  end

  private

  def word_in_grid?(word, grid)
    word.chars.all? { |letter| word.count(letter) <= grid.count(letter) }
  end

  def valid_english_word?(word)


    uri = URI("https://wagon-dictionary.herokuapp.com/#{word}")
    response = Net::HTTP.get(uri)

    json = JSON.parse(response)
    json["found"]
  end
end
