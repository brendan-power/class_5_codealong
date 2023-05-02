# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

salesperson1 = Salesperson.new
salesperson1["first_name"] = "Benjamin"
salesperson1["last_name"] = "Block"
salesperson1["email"] = "ben@test.com"
salesperson1.save

salesperson2 = Salesperson.new
salesperson2["first_name"] = "Brian"
salesperson2["last_name"] = "Eng"
salesperson2["email"] = "brian@test.com"
salesperson2.save



all_salespeople = Salesperson.all

for salesrep in all_salespeople

    first_name = salesrep["first_name"]
    last_name = salesrep["last_name"]
    puts "#{first_name} #{last_name}"

end






# create_table "salespeople", force: :cascade do |t|
#     t.string "first_name"
#     t.string "last_name"
#     t.string "email"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false

# 3. write code to display how many salespeople rows are in the database

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
