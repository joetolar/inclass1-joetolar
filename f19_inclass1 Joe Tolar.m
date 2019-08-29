% InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github (Not graded but will provide feedback if request). For graded
% homeworks or to receive feedback you must use a live script
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and 
% the other doesn't Can you explain the value of the variable b? 

x = 1; 
y = x + x
%%
a = '1';
b = a+a
% the answers differ because '1' is a character that is defined by the
% program as 49.  As seen below a (or '1') is 49 and x is 1 sor b=50.
b= a + x
%% concatenation
% what is being done by the following statements? what is the difference between 
% x2 and a2? what is the difference between x2 and x2b (hint run the size command 
% on these arrays and explain the results). 

x2 = [x  x]

a2 = [a a]
%because a is a character they function as a string. x2 is an array of 1x1
%so it will view [x x] as 1 and 1, but a2 would take [a a] and convert it
%to aa or 11
x2b = [x; x]
%the ; separates the two terms in to separate rows of the array.
%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements if 
% necessary. 

a = 1; b =2; 

a == b
a = b;
a == b



%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b
% the == here is comparing each term of a to the corresponding value of
% array b  thus false, true, false (0 1 0)

%explain why this gives an error:

b = [0, 2, 3];
a == b
% the == fuction requires the matrix dimensions to agree thus, if another
% value were added, the error would be resolved. 

%explain why this does not give an error
b = 2;
a == b
% here matrix a values are being evaluated if they equal to 2. instead of
% defining multiple terms, all values are compared to a single value of b.
%% : operator

%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;
1:10

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]
% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty
[2:2:20]
[oneToTen*2]
% 2. odd numbers from one to nineteen
[1:2:19]
[oneToTen*2-1]
% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)
j= [2:2:20];
h= fliplr(j)
% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen;
fliplr(oneToTen)
flip(oneToTen)
%i don't know 
%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
m1.*m2
%the first command is executed as 1*1*2*2=4 where each matric is multiplied
%across.  the second command with the . operator separates the matricies so
%that each integer is multiplied by an interger in the same position of the
%other matrix.  

%explain this command:
m2./m1
%the . operator treats each number in the matrix as an indiviual integer
%rather than performing the command on the entire matrix.

%extra credit: explain why this command gives a warning:
m2/m1
%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);
%5X5 random matrix

%explain what is being done in each of the following lines

rand_nums(2,3)
%calls out the therm in row 2 and column 3

rand_nums(2:4,3)
%this is calling out the terms in rows 2, 3, and 4 that are in column 3

rand_nums(1:2,3:4)
%this is calling terms from rows 1 and 2, specifically from columns 3 and
%4.

rand_nums(:,2)
% this is calling all terms from column 2.

rand_nums(1,:)
%this is calling all terms from row 1.

rand_nums(:,[1 3 5])
%this is calling out all values from columns 1, 3, and 5.