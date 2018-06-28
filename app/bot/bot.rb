require "facebook/messenger"

include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
    if 
       message.text.include? ("Bonjour" or "bonjour")
       message.mark_seen
       timeout 10
       message.reply(text:"Bonjour")
    elsif 
       message.text.include? "ca va"
       message.mark_seen
       message.reply(text: "Oui et vous?")
    elsif 
       message.text.include? ("article" or "Articles")
       message.mark_seen
       message.reply(text: "Quel type d'article?")
    elsif 
       message.text.include? ("ticket" or "Ticket")
       message.mark_seen
       message.reply(text: "Type incident ou demande?")
    elsif
        message.text.include? "image"
        message.mark_seen
        message.reply(
        attachment: {
        type: 'image',
        payload: {
        url: 'http://sky.net/visual-aids-for-stupid-organisms/pig.jpg'
        }
    }
)
        else
           message.mark_seen
           message.reply(text: "Avez vous une question précise?") 
    end
end
