#Christopher Chen

inputfile = open("english.sorted.python", "r")
wordcount = 0

for line in inputfile.readlines():
    if line.endswith(('A\n', 'a\n')) or line.startswith(('A', 'a')):
        wordcount = wordcount + 1
        continue


print(wordcount)