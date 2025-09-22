Declare Function Main () As Integer
Declare Function Add () As Integer
'Declare Function Subtract () As Integer
'Declare Function Multiply () As Integer
'Declare Function Divide () As Integer

Main()

Function Main() As Integer
	Print ("Console Calculator App")

	Dim As Boolean quit
	quit = False
	Do Until quit
		Print !"Choose an operation:\n" _
		      !"1 - Addition\n" _
		      !"2 - Subtraction\n" _
		      !"3 - Multiplication\n" _
		      !"4 - Division\n" _
		      !"5 - Quit\n"
	
		Dim operation As Integer
		Input "Enter number of chosen operation: ", operation
	
		Select Case As Const operation
		Case 1
			Add()
		Case 2
			'Subtract()
		Case 3
			'Multiply()
		Case 4
			'Divide()
		Case 5
			quit = True
		Case Else
			Print !"\nInvalid selection, try again.\n"
		End Select
	Loop

	Return 1
End Function

Function Add() As Integer
	Dim count As Integer
	Dim inputNum As String
	Dim As Double sum = 0, num

	Input "Enter amount of additions: ", count

	Do Until (count = 0)
		Print count & " numbers remaining."
		Input "Enter number: ", inputNum
		num = Val(inputNum)
		If num <> 0 Or inputNum = "0" Or inputNum = "0.0" Then
			sum += num
			count -= 1
		Else
			Print "Invalid input. Please enter valid numbers only."
		End If
	Loop	

	Print "Sum = " & sum

	Return 1
End Function
