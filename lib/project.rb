require 'pry'

class Project

  attr_reader :title
  attr_accessor :backers
  @@all_projects = []

def initialize(title)
  @title = title
  @backers = []
  @@all_projects << self
end



def add_backer(backer)
  @backers << backer
  # binding.pry
  Backer.all_backers.each do |backers|
     backers.backed_projects << self
   end
  # need to add project(self) to specific backer's
  # backed projects array found at
end

def self.all_projects
  @@all_projects
end

end
