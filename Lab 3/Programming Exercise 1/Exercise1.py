class Student(object):
    def __init__(self, name, number):
        self.name = name
        self.scores = [0] * number
  
    def getName(self):
        return self.name
  
    def setScore(self, i, score):
        self.scores[i - 1] = score
  
    def getScore(self, i):
        return self.scores[i - 1]
  
    def getAverage(self):
        return sum(self.scores) / len(self.scores)
  
    def getHighScore(self):
        return max(self.scores)
    
    def __eq__(self, student):
        return self.name == student.name
  
    def __ge__(self, student):
        return self.name == student.name or self.name > student.name
  
    def __lt__(self, student):
        return self.name < student.name
  
    def __str__(self):
        return "Name: " + self.name + "\nScores: " + " ".join(map(str, self.scores))
  
def main():
    student = Student("Lebron", 5)
    print(student)
    for i in range(1, 6):
        student.setScore(i, 100)
    print(student)
  
    print("\nSecond student")
    student2 = Student("Bronny", 5)
    print(student2)
  
    print("\nThird student")
    student3 = Student("Jordan", 5)
    print(student3)
  
    print("\nChecking equal student1 and student 2")
    print(student == student2)
  
    print("\nChecking equal student1 and student 3")
    print(student == student3)
  
    print("\nChecking greater than equal student1 and student 3")
    print(student >= student3)
  
    print("\nChecking less than student1 and student 3")
    print(student < student3)

if __name__ == "__main__":
    main()
