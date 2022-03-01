inputFile = open("old webadvisor roster.txt", "r")
outFile = open("roster", "w")

temp = ''
lineCount = 0


for line in inputFile.readlines():
        if line.strip() == '':
            temp = temp.rstrip(', ')
            lineCount = 0
            outFile.write(temp + '\n')
            temp = ''
            continue 

        elif lineCount in [0, 1, 3, 4, 5]:
            temp += line.strip('\n') + ', '

        lineCount += 1