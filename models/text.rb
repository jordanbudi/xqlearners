require 'twilio-ruby'

def sendCrushMessage(phoneNumber, message)
  @client = Twilio::REST::Client.new('ACed3ed813257f8acedfce46a695216257','cb1dd832eda91ea39319fe6827f1650b')
    @client.messages.create(
      from: '+14342605034',
      to: phoneNumber,
      body: message
      )
end