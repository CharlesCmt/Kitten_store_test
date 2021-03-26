# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
require 'mailjet'

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

run Rails.application
