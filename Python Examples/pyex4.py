

roster = {}

input_file = open('roster.txt', 'r')

for student in input_file.readlines():
    [last, first, email] = student.split(', ')

    [id , domain] = email.split('@')

    roster[id] = last + ", " first

for id in roster.keys():
    print(id + ", " + rosterr[id])
