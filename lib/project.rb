
class Project
    attr_reader :title, :backer

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        arr = []
        ProjectBacker.all.collect { |thing| arr << thing.backer if thing.project == self }
        arr
    end

end
