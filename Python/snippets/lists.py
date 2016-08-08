my_list = ["a", "b", "c", "d", "e"]
[elt for elt in my_list] #this statement iterates through the list by each element 

[elt*2 for elt in my_list] #this statement iterates through a list and multiplying each element by 2

squares = [elt*elt for elt in my_list in range(10)] #this statement iterates through each element and squares each one if they were numbers

[elt for elt in word_list if "UU" in elt] # captures element with "UU" and puts it in a new list
