inputFile = input('Enter the name of file: ')
lines = []
with open(inputFile, 'r') as a:
    for line in a:
        lines.append(line.strip())

while True:
    print("The file has", len(lines), "lines.")
    if len(lines) == 0:
        break
    numberLine = int(input("Enter a valid line number (0 to quit): "))
    if numberLine == 0:
        break
    elif numberLine > len(lines):
        print("Line number must be less than or equal to", len(lines), "Please try again")
    else:
        print(numberLine, ": ", lines[numberLine - 1])
