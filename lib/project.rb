class Project

  attr_reader :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    Backer.back_project(self) if !Backer.backed_projects.include?(self)
  end
end
