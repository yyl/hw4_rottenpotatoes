Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
    if Movie.find_by_title(movie['title']) == nil
      Movie.create!(movie)
    end
  end
end

Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |arg1, arg2|
  # express the regexp above with the code you wish you had
  Movie.find_by_title(arg1).director.should == arg2
end

