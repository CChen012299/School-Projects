input_file = codecs.open('english.sorted.python', 'r', 'iso-88591').read()

wordlengths = {}

for word in input_file.readlines():
    length = len(word) - 1

    if (length in wordlengths):
        wordlengths[length] += 1
    else:
        wordlengths[length] = 1

print("Word Length\t\tOccurrences")

for length in sorted(wordlengths.keys()):
    print ('%i\t\t\t%i' % (printlength,wordlengths[length]))