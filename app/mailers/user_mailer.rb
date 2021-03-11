class UserMailer < ApplicationMailer
    default from: 'no-reply@kittenshop.fr'

    def welcome_email(user)
      @user = user
      mail(
        from: "kittenshopthp@gmail.com",
        to: @user.email,
        #to: email_address_with_name(@user.email, @user.name),
        subject: 'Welcome to the Kitten Store',
        delivery_method_options: { version: 'v3.1' }
      )
    end

  end