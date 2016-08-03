#C:\Users\A591043\AppData\Local\Programs\Python\Python35\python.exe
# This file was copied from a tutorial with O'reaily books tutorial
# and has completly been used for practice and experimentation
# code was written by Jessica McKellar
import scrabble

longest = ""

for word in scrabble.wordlist:
	if word == word[::-1] and len(word) > len(longest):
		longest = word
		
print(longest)
