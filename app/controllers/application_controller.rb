class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  unless Rails.env.production?
    ENV['STRIPE_TEST_PUBLISHABLE_KEY'] = "pk_test_H9V6gVkr5f6n3hQFg9uVsmEI"
    ENV['STRIPE_TEST_SECRET_KEY'] = "sk_test_SbJCNndjkuE9nZWbQUxgxsIX"
  end
end
