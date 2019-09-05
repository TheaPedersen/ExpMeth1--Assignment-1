#use hashtag for writing notes
#this is the editor
box<-9
box2<-"car"
box+2
boxes<-c(2,3,4)
boxes+3
#if I do something to a list of elements (for example adding 3) it will do this to every part of that list of variables
class(boxes)
class(box2)
#^how to define something in R, is it numeric or a character for example?
#to remove a variable completely, use rm(variable), rm means remove

a_vector<-c("Kevan", "Andreas", "Cecilie", "Marcus")
#add something to already existing vector
a_vector<-c(a_vector, "Bob", "Karsten")
a_vector
#how to access one of the "variables" or elements in the list of variables
#accessing name nr 2 for example:
a_vector[2]

#removing one of the elements from the list: calling it new_vector, removing element/name nr. 1:
new_vector <- a_vector [-1]
a_vector
new_vector
#To remove for example the first three elements: [-1:-3]

length(new_vector)

vector_numbers<-c(1,5,89,100)
sum(vector_numbers)

#length, sum and so on can be used, but R won't "remember" it, unless you make it a seperate thing/variable   / "define it with the <-"

#quick way to make the arrow: alt+-

studygroup_vector <- c("Kevan", "Andreas", "Cecilie", "Marcus", "Thea")
siblings_vector <- c(2,1,1,3,2)
#add 2 to both vectors, what happens each time and why?
studygroup_vector+2

#An error occured, because a numeric variable/element can't be added to characters (letters/words/names etc.)

siblings_vector+2

#the number 2 was added to each of the elements in the list

class(studygroup_vector)
#it says characters because it is a list of words which I told R using ""

class(siblings_vector)
#it says numeric because it contains numbers

sum(siblings_vector)

#to get the product of person 1 and 2's number of siblings, multiply [1] and [2]:
siblings_vector[1]*siblings_vector[2]

addsiblings_vector <- c(siblings_vector, "Karsten")
addsiblings_vector

addsiblings_vector+2

class(addsiblings_vector)
#When the elements are not all numeric, adding a number is not possible, now the class is "character"

addsiblings <- addsiblings_vector[1:5]
#to remove the word again "Karsten", we define a new vector where we only want the elements 1 through 5 from the old vector, so element nr 6 (Karsten) will be gone
#to remove the Karsten element I could also substract the element from the vector using []
addsiblings_vector<-addsiblings_vector[-6]

addsiblings_vector


#-c() will remove the things/elements that you then write in the parenthasis either as the index (name number 1 and 2) or the name of the element itself

#creating a dataframe     data.frame(namewanted_on_dataframe = the variable, namewanted_again = other variable)

df <- data.frame(Name = studygroup_vector, Siblings = siblings_vector) 
df
view(df)



#vector is onedimensional, with dataframe we have two vector (or more)

#factor is something R recognizes, character is "random text"

#finding the mean of the Siblings colulmn that was defined when creating dataframe

mean(df$Siblings)

#adding something to dataframe, use the df$newthing for example df$Age
#and then df$Age <- c(the list of elements, some numbers)


#add a new column with age:
df

df$Age<- c(45, 34, 56, 45, 34)
df

# change names column into characters
df$Name <- as.character(df$Name)

#add a new row:
df <- rbind(df, c("Bo", 2, 45))


