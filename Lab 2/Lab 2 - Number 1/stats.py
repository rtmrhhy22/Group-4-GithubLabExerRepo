

def median(numbers):
    if not numbers:
        return 0
    
    numbers.sort()
    midpoint = len(numbers) // 2
    if len(numbers) % 2 == 1:
        return numbers[midpoint]
    else:
        return (numbers[midpoint] + numbers[midpoint - 1]) / 2

def mode(numbers):
    if not numbers:
        return 0
    
    frequency = {}
    for number in numbers:
        if number in frequency:
            frequency[number] += 1
        else:
            frequency[number] = 1
    
    max_count = max(frequency.values())
    modes = [number for number, count in frequency.items() if count == max_count]
    
    if len(modes) == 1:
        return modes[0]
    return modes  

def mean(numbers):
    if not numbers:
        return 0
    
    return sum(numbers) / len(numbers)

def main():
    
    fileName = input("Enter the file name: ")
    
    try:
        with open(fileName, 'r') as f:
            numbers = []
            for line in f:
                words = line.split()
                for word in words:
                    try:
                        numbers.append(float(word))
                    except ValueError:
                        print("Skipping non-numeric value: ", words)
        
        if not numbers:
            raise ValueError("No valid numbers found in the file.")
        
        print("Numbers read from file: ", numbers)
        print("Median: ", median(numbers))
        print("Mode: ", mode(numbers))
        print(f"Mean: ", mean(numbers))
    
    except FileNotFoundError:
        print(f"Error: The file '{fileName}' does not exist.")
    except ValueError as ve:
        print(f"Error: {ve}")

if __name__ == "__main__":
    main()
