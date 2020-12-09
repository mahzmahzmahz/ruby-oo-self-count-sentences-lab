require 'pry'

class String

  def sentence?
    self.end_with?(".")
    
  end

  def question?
    self.end_with?("?")

  end

  def exclamation?
    self.end_with?("!")

  end

  def count_sentences #this required SO MUCH exploration of Regex and I need to review it more. 
    if self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count > 0
      return self.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
    else
      sentence_array = self.split.count
    end
   

  end
end