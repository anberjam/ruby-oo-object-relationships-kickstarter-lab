class Backer
    @@all = []

    attr_reader :name
    

    def initialize (name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def self.all
        @@all
    end

    def backed_projects
        ProjectBacker.all.select do |projectBackers|
            if projectBackers.backer==self
                projectBackers.project
            end
        end
    end


end