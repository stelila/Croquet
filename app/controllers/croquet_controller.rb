class CroquetController < ApplicationController
  def home_page
    @title = "Home Page"
  end

  def about_the_club
    @title = "About the Club"
  end

  def how_to_join
    @title = "How to Join"
  end

  def what_you_need
    @title = "What You Need"
  end

  def programme_2013
    @title = "Programme 2013"
  end

  def newsletters
    @title = "Newsletters"
  end

  def club_matters
    @title = "Club Matters"
  end

  def how_to_get_there
    @title = "How to Get There"
  end

  def book_a_lawn
    @title = "Book a Lawn"
  end

  def links_to_croquet_sites
    @title = "Links to Croquet Sites"
  end
end
