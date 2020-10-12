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

  def count_sentences
    array_of_split_strings = []
    array_of_split_strings = self.delete(",").split(/[\.,?,!]/)
    array_no_empty_strings = array_of_split_strings.reject { |string| string.empty? }
    array_no_empty_strings.count
  end
end