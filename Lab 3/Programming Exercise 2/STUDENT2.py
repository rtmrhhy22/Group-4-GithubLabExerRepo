import random

class Student(object):
    """Represents a student."""

    def __init__(self, name, number):
        """All scores are initially 0."""
        self.name = name
        self.scores = [0] * number

    def getName(self):
        """Returns the student's name."""
        return self.name

    def setScore(self, i, score):
        """Resets the ith score, counting from 1."""
        self.scores[i - 1] = score

    def getScore(self, i):
        """Returns the ith score, counting from 1."""
        return self.scores[i - 1]

    def getAverage(self):
        """Returns the average score."""
        return sum(self.scores) / len(self.scores)

    def getHighScore(self):
        """Returns the highest score."""
        return max(self.scores)

    def __str__(self):
        """Returns the string representation of the student."""
        return "Name: " + self.name + "\nScores: " + " ".join(map(str, self.scores))

    def __lt__(self, other):
        """Returns self < other, with respect to names."""
        return self.name < other.name

    def __ge__(self, other):
        """Returns self >= other, with respect to names."""
        return self.name >= other.name

    def __eq__(self, other):
        """Tests for equality."""
        if self is other:
            return True
        elif type(self) != type(other):
            return False
        else:
            return self.name == other.name

def main():
    """Tests sorting."""
    # Create the list and put the specified students into it
    names = ["Lebron", "Kobe", "Jordan", "Kyrie", "Bronny"]
    lyst = []
    for name in names:
        s = Student(name, 10)
        lyst.append(s)
    # shuffle list
    random.shuffle(lyst)
    # display the list
    print("Unsorted list of students:")
    for s in lyst:
        print(s)
    # sort the list
    lyst.sort()
    # display the list
    print("\nSorted list of students:")
    for s in lyst:
        print(s)

if __name__ == "__main__":
    main()
