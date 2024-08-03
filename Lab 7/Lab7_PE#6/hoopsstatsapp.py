
from hoopstatsview import HoopStatsView
import pandas as pd


def clean_stats(data_frame):
    def split_makes_attempts(column):
        makes, attempts = [], []
        for item in data_frame[column]:
            make, attempt = map(int, item.split('-'))
            makes.append(make)
            attempts.append(attempt)
        return makes, attempts

    # Process stats for FG, 3PT, and FT
    fg_makes, fg_attempts = split_makes_attempts('FG')
    threept_makes, threept_attempts = split_makes_attempts('3PT')
    ft_makes, ft_attempts = split_makes_attempts('FT')

    # Insert the processed columns back into the DataFrame
    data_frame.insert(data_frame.columns.get_loc('FG') + 1, 'FGM', fg_makes)
    data_frame.insert(data_frame.columns.get_loc('FGM') + 1, 'FGA', fg_attempts)
    data_frame.insert(data_frame.columns.get_loc('3PT') + 1, '3PTM', threept_makes)
    data_frame.insert(data_frame.columns.get_loc('3PTM') + 1, '3PTA', threept_attempts)
    data_frame.insert(data_frame.columns.get_loc('FT') + 1, 'FTM', ft_makes)
    data_frame.insert(data_frame.columns.get_loc('FTM') + 1, 'FTA', ft_attempts)

    # Drop original columns
    data_frame.drop(columns=['FG', '3PT', 'FT'], inplace=True)

    return data_frame


def main():
    """Load, clean, and display basketball statistics."""

    print("Loading data from rawbrogdonstats.csv...")
    raw_data = pd.read_csv("rawbrogdonstats.csv")
    print("Initial data preview:")
    print(raw_data.head())

    print("Cleaning data...")
    cleaned_data = clean_stats(raw_data)
    print("Cleaned data preview:")
    print(cleaned_data.head())

    cleaned_data.to_csv('cleanbrogdonstats.csv', index=False)
    print("Cleaned data saved as cleanbrogdonstats.csv")

    print("Initializing HoopStatsView...")
    HoopStatsView(cleaned_data)


if __name__ == "__main__":
    main()
