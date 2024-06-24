"""
Program: generator.py
Author: Ken
Generates and displays sentences using a simple grammar
and vocabulary. Words are chosen at random.
"""

import random

def getWords(filename):
    with open(filename, 'r') as file:
        words = [line.strip().upper() for line in file.readlines()]
    return tuple(words)


articles = getWords('articles.txt')
nouns = getWords('nouns.txt')
verbs = getWords('verbs.txt')
prepositions = getWords('prepositions.txt')

def sentence():
    return nounPhrase() + " " + verbPhrase()

def nounPhrase():
    return random.choice(articles) + " " + random.choice(nouns)

def verbPhrase():
    return random.choice(verbs) + " " + nounPhrase() + " " + prepositionalPhrase()

def prepositionalPhrase():
    return random.choice(prepositions) + " " + nounPhrase()

def main():
    try:
        number = int(input("Enter the number of sentences: ").strip())
        if number <= 0:
            raise ValueError("The number of sentences must be positive.")
        
        for count in range(number):
            print(sentence())
    except ValueError as e:
        print("Invalid input: ", {e}, "Please enter a positive integer.")

if __name__ == "__main__":
    main()
