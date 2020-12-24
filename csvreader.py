import csv

def csvreadr():
    with open('D:\\automation\\chropath\\excel\\firstTestCase.csv', mode='r') as csv_file:
        csv_reader = csv.DictReader(csv_file)
        line_count = 0
        for row in csv_reader:
            if line_count == 0:
                print(f'Column names are {", ".join(row)}')
                line_count += 1
            line_count += 1
csvreadr()
