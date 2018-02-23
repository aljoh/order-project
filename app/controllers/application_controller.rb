class ApplicationController < ActionController::Base
  helper_method :days_left
  protect_from_forgery with: :exception

  def days_left(order)
    last_day = 9.business_days.after(Date.parse(order.order_date))
    Date.today.business_days_until(last_day)
  end
end
