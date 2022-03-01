# Prob 3 - Write and save the program 'prob3.rb' to extract and print the 32 CS class  titles from the input file

file = File.new("sp08cs")
text = file.read

text_re = %r|\b(\w*CS-\w*)\b|
cs_classes = text.scan(text_re)
puts cs_classes


cs_classes.each do |compsci|
    puts compsci
end


