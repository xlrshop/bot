require "facebook/messenger"

include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
    if message.text.include? "Bonjour"
       message.reply(text:"Bonjour")
    elsif 
       message.text.include? "ca va"
       message.reply(text: "oui et vous?")
    else
       message.reply(text: "Avez vous une question précise?")
    end

end