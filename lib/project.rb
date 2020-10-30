class Project

    @@all = []

    attr_reader :title
    attr_accessor :projectbacker

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer (backer)
        ProjectBacker.new(self, backer)
    end

    def self.all
        @@all
    end
end