class Forgery::Name < Forgery

  def self.university
    dictionaries[:universities].random
  end

  def self.degree
    degree = dictionaries[:academic_degrees].random
    post_degree = degree.eql?("Master") || degree.eql?("Bachelor")
    "#{post_degree ? degree + " of" : degree} #{dictionaries[:fields_of_study].random}"
  end

end