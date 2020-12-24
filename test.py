import sys, argparse, csv
from django.conf import settings

# command arguments

csv_file = "D:\\automation\\chropath\\excel\\firstTestCase.csv"

# open csv file
with open(csv_file, 'r') as csvfile:

    # get number of columns
    for line in csvfile.readlines():
        array = line.split(',')
        first_item = array[0]

    num_columns = len(array)
    csvfile.seek(0)

    reader = csv.reader(csvfile, delimiter=' ')
    included_cols = [3]

    for row in reader:
        content = list(row[i] for i in included_cols)
    print ("content")
