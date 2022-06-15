class HomesController < ApplicationController
  def top
  end

  def about
    mybirthday = 20001106
    @age = (Date.today.strftime("%Y%m%d").to_i - mybirthday) / 10000
  end
end
