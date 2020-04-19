# Model

class Task
  attr_reader :title
  def initialize(title)
    # STATE?
    @title = title
    @completed = false
  end

  def completed?
    return @completed
  end

  def mark_as_completed
    return @completed = true
  end
end
