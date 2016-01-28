require "#{Rails.root}/app/models/webspellchecker.rb"
class DictionaryWordsController < ApplicationController
  def spellcheck
	input_word = params[:term]
	puts "We want to Check the Word: #{input_word}"
	#render :text => "<h1>We want to Check the Word: #{input_word</h1>"
wsc = WebSpellchecker.new
checker = Hash.new
checker = {"term" => input_word,"known" =>wsc.known(input_word),"suggestions" =>wsc.correct(input_word)}
render json: checker


  end
end
