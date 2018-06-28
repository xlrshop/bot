require "facebook/messenger"

include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
    message.mark_seen
    if message.text.include? "Bonjour"
       message.reply(text:"Bonjour")
    elsif 
       message.text.include? "ca va"
       message.reply(text: "oui et vous?")
    elsif
        message.reply(
        attachment: {
        type: 'image',
        payload: {
        url: 'http://sky.net/visual-aids-for-stupid-organisms/pig.jpg'
            
        }
            
        }
)
    elsif 
       message.text.include? "article"
       message.reply(text: "Quel type d'article?")
    elsif 
       message.text.include? "ticket" or "Ticket"
       message.reply(text: "Type incident ou demande?")
    else
       message.reply(text: "Avez vous une question précise?") 
    end

end