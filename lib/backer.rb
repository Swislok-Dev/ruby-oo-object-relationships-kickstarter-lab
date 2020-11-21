

class Backer
    attr_reader :name, :project
    

    def initialize(name)
        @name = name
    end

    def back_project(project)
        project = ProjectBacker.new(project, self)
    end

    def backed_projects
        arr = []
        ProjectBacker.all.collect { |thing| arr << thing.project if thing.backer == self }
        arr
    end

end