# * When a `Backer` instance is initialized, it should be initialized with a
#{}`@backed_projects` variable set to an empty array.
#Instances of the `Backer` class should have an `attr_accessor`
#for backed projects so that projects can be added to a backer's list and
#so that the backer can report on the projects they back.

require 'pry'

class Backer
  attr_reader :name
  attr_accessor :backed_projects, :project
  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    self.backed_projects.push(project)
    project.add_backer(self)

  end
end
# binding.pry
