# Problem 22

# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file 
# containing over five-thousand first names, begin by sorting it into alphabetical order. 

# Then working out the alphabetical value for each name, 
# multiply this value by its alphabetical position in the list to obtain a name score.
# For example, when the list is sorted into alphabetical order, COLIN, 
# which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. 
# So, COLIN would obtain a score of 938 × 53 = 49714.

# What is the total of all the name scores in the file?


# method to find the score of each name
def score_of position, name
  score = 0
  name.each_byte do |char|
    score += (char - 64)
  end
  score *= position
  score
end

# import the file
file = File.new("./p022_names.txt", "r")

# split each names separated by commas
names = file.gets.split(",")

# strip the surrounding double quotes
names.each do |name|
  name.gsub!("\"", '')
end

# sort
names.sort!

# push an empty string to the beginning of the array for index 0
names.unshift("")

# now sum them up
sum = 0
names.each_index do |i|
  sum += score_of i, names[i]
end
p sum # => 871198282