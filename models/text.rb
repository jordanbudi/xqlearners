require 'twilio-ruby'

def sendMessage(phoneNumber, path, name)
  if (name == "First Name")
    name = ""
  else
    name = ", " + name
  end


  @client = Twilio::REST::Client.new('ACe26df60544f6832b428cd1bc02bcd32e','51869ceac9a4ab715494ff83db72dcc3')
    @client.messages.create(
      from: '+19093452633',
      to: phoneNumber,
      body: "Here is your XQ Learner Goal.\n Thanks for playing" + name +"!",
      media_url: path,
      )
    sendMessage2(phoneNumber, name)
end


def sendMessage2(phoneNumber, name)
@client = Twilio::REST::Client.new('ACe26df60544f6832b428cd1bc02bcd32e','51869ceac9a4ab715494ff83db72dcc3')
    @client.messages.create(
      from: '+19093452633',
      to: phoneNumber,
      body: "Learn more about XQ Learner Goals at:\nhttps://xqsuperschool.org/xq-schools/xq-learner-goals",
      )
end