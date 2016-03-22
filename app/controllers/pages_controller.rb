class PagesController < ApplicationController
  def home
    @books = Book.all

  end
  
  def contact
  end
  
  def accessibility
  end
end
