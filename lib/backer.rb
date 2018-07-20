require 'pry'
class Backer

attr_reader :name, :project
attr_accessor :backed_projects
@@all_backers = []

def initialize(name)
  @name = name
  @backed_projects = []
  @@all_backers << self
end

def back_project(project)
  # binding.pry
  @backed_projects << project
  # binding.pry
  Project.all_projects.each do |projects|
    project.backers << self
  end
end

def self.all_backers
  @@all_backers
end

end
