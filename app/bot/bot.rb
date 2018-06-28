require "facebook/messenger"

include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
   $reply = Bonjour
   if
   case $reply
   when bonjour, Bonjour
       puts "Bonjour"
   When comment aller vous
       puts "Ca va, merci"
 else
           message.mark_seen
           message.reply(text: "Avez vous une question précise?") 
   end

    if 
       message.text.include? "Bonjour"
       message.mark_seen
       message.reply(text:"Bonjour")
    elsif 
       message.text.include? "ca va"
       message.mark_seen
       message.reply(text: "Oui et vous?")
    else 
       message.text.include? "article"
       message.mark_seen
       message.reply(text: "Quel type d'article?")
    end       
    if 
       message.text.include? "ticket"
       message.mark_seen
       message.reply(text: "Type incident ou demande?")
    elsif
        message.text.include? "image"
        message.mark_seen
        message.reply(
        attachment: {
        type: 'image',
        payload: {
        url: 'https://pbs.twimg.com/profile_images/875607716403609603/tS3Ye6Zo.jpg'
        }
    }
)
        else
           message.mark_seen
           message.reply(text: "Avez vous une question précise?") 
    end
end
