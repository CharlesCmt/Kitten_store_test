require 'mailjet'
Mailjet.configure do |config|
config.api_key = 'c19d87d61d0b74f939650b66eef81902'
config.secret_key = 'f69c5bf3f3b80dbb65e0138b1137bfc8'
config.api_version = "v3.1"
end
variable = Mailjet::Send.create(messages: [{
  'From'=> {
    'Email'=> 'kittenshopthp@gmail.com',
    'Name'=> 'Kitten'
  },
  'To'=> [
    {
      'Email'=> 'kittenshopthp@gmail.com',
      'Name'=> 'Kitten'
    }
  ],
  'Subject'=> 'Greetings from Mailjet.',
  'TextPart'=> 'My first Mailjet email',
  'HTMLPart'=> '<h3>Dear passenger 1, welcome to <a href=\'https://www.mailjet.com/\'>Mailjet</a>!</h3><br />May the delivery force be with you!',
  'CustomID' => 'AppGettingStartedTest'
}]
)
p variable.attributes['Messages']
