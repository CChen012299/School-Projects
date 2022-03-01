
import re

input_roster = open('cs176roster.webadvisor.txt', 'r').read()

student_pattern = re.compile('.+, .+\n[0-9]{7}')

students= student_pattern.findall(input_roster)

print(students)

output_file = open('roster2.txt', 'w')

for student in students:
    student = student.replace('\n', ', s')
    output_file.write(student + '\n')

output_file.close()