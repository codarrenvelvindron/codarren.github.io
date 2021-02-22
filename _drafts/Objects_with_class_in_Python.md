---
published: false
---
## Do you know what class means ?
![python objects with class](https://github.com/codarrenvelvindron/codarrenvelvindron.github.io/raw/master/images/generalbytes_bitcoin_atm_d56a7433ab.jpg)

If you have class, it means you are a true Gentleman/Lady.

## In python, it's a little different
A class is a group of objects which share the same attributes.

A class, therefore serves as a blueprint for objects.

We say all the objects are of the same class.

It's the basis of what we call OOP (Object-Oriented Programming)

## In real life, what does that mean?
Let us take a Forex machine as an example.

A machine that converts your American Dollars to Mauritian Rupees.

## Initializing class
```
class Forex:
    """ Creates a new foreign exchange object """
    def __init__(self, amount, currency):
        # attributes defined for a transaction input
        self.amount = amount
        self.currency = currency
        self.safe_balance = 100000
        self.converted_funds = 0
```
Our class name is Forex.
A class name should always start with a capital letter.

By using the init method, we create an instance of a class.

The init method contains various attributes such as the:
1. amount = amount of money given by the customer

2. currency = the end currency that the user requires.

3. safe_balance = the amount of money we currently have in the dispenser.

4. converted_funds = the funds that are awaiting conversion, initially set to 0.

## First method
Inside our class, our first method would look just like a function.

But unlike a function, it is bound to the class.

This one just confirms what the customer typed on the screen.
```
class Forex:
    """ Creates a new foreign exchange object """
    def __init__(self, amount, currency):
        # attributes defined for a transaction input
        self.amount = amount
        self.currency = currency
        self.safe_balance = 100000
        self.converted_funds = 0

    def claimed_input(self):
        return f"[LOG] {self.amount} claimed and requests output as {self.currency}"
```

## Full code with more methods
```
class Forex:
    """ Creates a new foreign exchange object """
    def __init__(self, amount, currency):
        # attributes defined for a transaction input
        self.amount = amount
        self.currency = currency
        self.safe_balance = 100000
        self.converted_funds = 0

    def claimed_input(self):
        return f"[LOG] {self.amount} claimed and requests output as {self.currency}"

    def act_open_drawer(self):
        return f"[ACT] Robot is now opening the money drawer.\n--> Please Insert the money in the drawer"
    def count_money(self):
        return f"[ACT] Robot is now counting money and confirms it has received {self.amount}"
    def get_exc_rate(self):
        self.dollartomu = 40
        return f"[LOG] Got exchange rate of 1$ = {self.dollartomu}"
    def convert_funds(self):
        amt = self.amount
        amount_flat = amt.replace('$', '')
        self.converted_funds = int(self.dollartomu) * int(amount_flat)
        return f"[LOG] Converted funds is {self.converted_funds}"
    def check_safe_balance(self):
        if self.converted_funds < self.safe_balance:
            return f"--> Please take your {self.converted_funds}"
        else:
            return f"Sorry, we don't have enough funds\n--> Your money is now returned."
```
## Creating a SMALL transaction
Once our class is complete, we'll create a new forex transaction.

Starting with ***$100***
```
transact = Forex('$1000', 'MUR')
print (transact.claimed_input())
print (transact.act_open_drawer())
print (transact.count_money())
print (transact.get_exc_rate())
print (transact.convert_funds())
print (transact.check_safe_balance())
```

**Output**
```
[LOG] $100 claimed and requests output as MUR
[ACT] Robot is now opening the money drawer.
--> Please Insert the money in the drawer
[ACT] Robot is now counting money and confirms it has received $100
[LOG] Got exchange rate of 1$ = 40
[LOG] Converted funds is 4000
--> Please take your 4000
```

## Creating a MASSIVE transaction
Let's go with ***$10000***
```
transact = Forex('$10000', 'MUR')
print (transact.claimed_input())
print (transact.act_open_drawer())
print (transact.count_money())
print (transact.get_exc_rate())
print (transact.convert_funds())
print (transact.check_safe_balance())
```

**Output**
```
[LOG] $10000 claimed and requests output as MUR
[ACT] Robot is now opening the money drawer.
--> Please Insert the money in the drawer
[ACT] Robot is now counting money and confirms it has received $10000
[LOG] Got exchange rate of 1$ = 40
[LOG] Converted funds is 400000
Sorry, we don't have enough funds
--> Your money is now returned.
```

## \ Codarren /

## Credits
[Featured image bitcoin ATM london](https://coinatmradar.com/images/generalbytes/generalbytes_bitcoin_atm_d56a7433ab.jpg)