class Film < ActiveRecord::Base

  belongs_to :actors

  # def initialize(args)
  #   @name = args[:name]
  #   @year = args[:year]
  #   @genre = args[:genre]
  # end

end
