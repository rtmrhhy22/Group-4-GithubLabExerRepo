import matplotlib.pyplot as plt
import openpyxl

file_path = 'C:/Users/Administrator/Documents/DB/SeriesReport-20240803101659_f89959.xlsx'
workbook = openpyxl.load_workbook(file_path)
sheet = workbook.active

years = []
prices = []

for row in sheet.iter_rows(min_row=2, values_only=True):
    year = row[0]
    price = row[1]

    try:
        year = int(year)
        price = float(price)
        years.append(year)
        prices.append(price)
    except (ValueError, TypeError):
        continue

average_prices = {}
for year, price in zip(years, prices):
    if year in average_prices:
        average_prices[year].append(price)
    else:
        average_prices[year] = [price]

years = sorted(average_prices.keys())
avg_prices_per_year = [sum(prices) / len(prices) for prices in [average_prices[year] for year in years]]

plt.figure(figsize=(10, 6))
plt.plot(years, avg_prices_per_year, marker='o', linestyle='-', color='b')
plt.title('Average Bread Price Per Year')
plt.xlabel('Year')
plt.ylabel('Average Price')
plt.grid(True)
plt.show()
