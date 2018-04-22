# This simple bot responds to every "Ping!" message with a "Pong!"

require 'discordrb'
require 'yaml'
# require './genki/genki_i/chapter_one/vocab'

hash = YAML.load(File.read("./genki/genki_i/chapter_one/vocab.yml"))

puts hash
# vocab = Vocabulary.new('はじめまして', 'ha-ji-me-ma-shi-te', 'How do you do?')
# puts vocab.jp_word
# puts vocab.roumaji
# puts vocab.english_translation
# puts $vocab

# puts Vocabulary::chapter_one

# This statement creates a bot with the specified token and application ID. After this line, you can add events to the
# created bot, and eventually run it.
#
# If you don't yet have a token to put in here, you will need to create a bot account here:
#   https://discordapp.com/developers/applications/me
# If you're wondering about what redirect URIs and RPC origins, you can ignore those for now. If that doesn't satisfy
# you, look here: https://github.com/meew0/discordrb/wiki/Redirect-URIs-and-RPC-origins
# After creating the bot, simply copy the token (*not* the OAuth2 secret) and put it into the
# respective place.
bot = Discordrb::Bot.new token: 'MjczNTcyMjc3MDAwNjAxNjAy.Db1O_A.-RYrxhSpUqJ62_hR03oqN6s6lIk', client_id: 273572277000601602

# Here we output the invite URL to the console so the bot account can be invited to the channel. This only has to be
# done once, afterwards, you can remove this part if you want
puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'

# This method call adds an event handler that will be called on any message that exactly contains the string "Ping!".
# The code inside it will be executed, and a "Pong!" response will be sent to the channel.
bot.message(content: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.ready do |event|
	puts 'hey'
	bot.game = "with Professor Ragna"
end 


# This method call has to be put at the end of your script, it is what makes the bot actually connect to Discord. If you
# leave it out (try it!) the script will simply stop and the bot will not appear online.
bot.run