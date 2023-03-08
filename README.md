# Challange

## Step 1:
Create a script to generate a CSV file with random data. Example: 1234, randomstring
Take a look at the documentation and experiment with these modules: csv, random, string
This will also introduce you to how Perl does file I/O.

## Step 2:
Using the previous script, now add the ability to pass in command line parameters. Use an argument to pass in the number of rows to generate. Add another argument for the filename to use for the csv file.

- For solving this step  is important consider that when creating to create your module in a `.pm` file

# Step 3:
Using the previous script, use a generator to create the rows instead of creating a list. This will likely require you to rewrite parts of your script to handle processing a row at a time instead of using a list. It's useful to understand the differences you need to make in your code when using generators vs lists. Perl has generator expressions and generator functions that you will want to look up.