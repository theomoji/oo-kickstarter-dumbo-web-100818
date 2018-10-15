# * When a `Project` instance is initialized, it should be initialized with a `@backers` variable set to an empty array.
#Instances of the `Project` class should have an `attr_accessor` for backers so that projects can add backers to their list of backers and report on the backers who support them.
# * When a backer has added a project to its list of backed projects, that project should *also add the backer to its list of backers*.
# Refer back to the Code Along about Collaborating Objects.
require 'pry'
class Project
  attr_accessor :backer, :backers
  attr_reader :title

  def initialize(title)
    @title = title
    @backer = backer
    @backers = []
  end

  def add_backer(backer) #only push into instance variable in initialize, otherwise self
    self.backers << backer
    backer.backed_projects << self
  end
end

#back_project => instance method
  #needs to be called on an instance
  #example: happy.artist


#.all => class method.
#example: def self.all
          #@@all
        # end

#Song.all 
