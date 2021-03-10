Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_TYooMQauvdEDq54NiTphI7jx'],
  :secret_key      => ENV['SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]