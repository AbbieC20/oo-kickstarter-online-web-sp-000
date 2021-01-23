
class Backer
  attr_reader :name, :backed_projects

  def initialize(name) #Logan
    @name = name
    @backed_projects = []
  end

  def back_project(project) #hoverboard
    if @backed_projects.detect { |current_project| current_project == project }.nil?
      @backed_projects << project
      project.add_backer(self)
    end
  end

end #class end
