require 'twilio-ruby'

def sendMessage(phoneNumber, path, name)
  @client = Twilio::REST::Client.new('ACe26df60544f6832b428cd1bc02bcd32e','51869ceac9a4ab715494ff83db72dcc3')
    @client.messages.create(
      from: '+19093452633',
      to: phoneNumber,
      body: "Thanks for playing, " + name +"! \nHere is your XQ Learner Goal!\nLearn More about XQ Learner Goals at:\nhttps://xqsuperschool.org/xq-schools/xq-learner-goals\n ",
      #media_url: path,
      )
end