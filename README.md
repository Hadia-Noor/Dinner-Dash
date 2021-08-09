# README
Dinner Dash
In this project you’ll build an online commerce platform for a restaurant to facilitate online ordering.
Base Expectations
You are to build an online ordering system for a restaurant which offers the complete functionality for restaurant customers to order food and restaurant administrators to process and complete those orders.


Unauthenticated Users
* As an unauthenticated user, I can:
* Browse all items
* Browse items by category
* Add an item to my cart
* View my cart
* Remove an item from my cart
* Increase the quantity of a item in my cart
* Log in, which does not clear the cart


Unauthenticated users are NOT allowed to:
* View another user’s private data (such as current order, etc.)
* Checkout (until they log in)
* View the administrator screens or use administrator functionality
* Make themselves an administrator


Authenticated Users (Non-Administrators)
Allowed To:
* do everything Unauthenticated Users can do except "log in"
log out
* view their past orders with links to display each order
* on that order display page there are:
* items with quantity ordered and line-item subtotals
* links to each item description page
* the current status of the order
* order total price
* date/time order was submitted
* if completed or cancelled, display a timestamp when that action took place
* if any item is retired from the menu:
* they can still access the item page
* they cannot add it to a new cart
* NOT allowed to:
* view another user’s private data (such as current order, etc.)
* view the administrator screens or use administrator functionality
* make themselves an administrator
Administrators
As an authenticated Administrator, I can:
Create item listings including a name, description, price, and upload a photo
Modify existing items’ name, description, price, and photo
Create named categories for items (eg: "Small Plates")
Assign items to categories or remove them from categories. Products can belong to more than one category.
Retire a item from being sold, which hides it from browsing by any non-administrator
As an Administrator, I can also view an order "dashboard" where I can:
See a listing of all orders with:
the total number of orders by status
links for each individual order
filter orders to display by status type (for statuses "ordered", "paid", "cancelled", "completed")
link to transition to a different status:
link to "cancel" individual orders which are currently "ordered" or "paid"
link to "mark as paid" orders which are "ordered"
link to "mark as completed" individual orders which are currently "paid"
Access details of an individual order, including:
Order date and time
Purchaser full name and email address
For each item on the order:
Name linked to the item page
Quantity
Price
Line item subtotal
Total for the order
Status of the order


NOT allowed to:
Modify any personal data aside from their own
Data Validity
There are several types of entities in the system, each with certain required data. Any attempt to create or modify a record with invalid attributes should return the user to the input form with a validation error indicating the problem along with suggestions how to fix it.
Item
An item must have a title, description, and price.
An item must belong to at least one category.
The title and description cannot be empty strings.
The title must be unique for all items in the system.
The price must be a valid decimal numeric value and greater than zero.
The photo is optional. If not present, a stand-in photo is used.
User
A user must have a plausibly valid email address that is unique across all users
A user must have a full name that is not blank
A user may optionally provide a display name that must be no less than 2 characters long and no more than 32
Order
An order must belong to a user
An order must be for one or more items currently being sold


Example Data(Seeds)
To support the evaluation process, please make the following available via the rake db:seed task in your application:
Items
At least 20 items of varying prices
Some of the items should be attached to multiple categories
Categories
At least 5 categories with a varying number of member items
Orders
At least 10 sample orders, with at least two at each stage of fulfillment (ordered, completed, cancelled)
Users
Normal user with full name "Rachel Warbelow", email address "demo+rachel@jumpstartlab.com", password of "password" and no display name
Normal user with full name "Jeff Casimir", email address "demo+jeff@jumpstartlab.com", password of "password" and display name "j3"
Normal user with full name "Jorge Tellez", email address "demo+jorge@jumpstartlab.com", password of "password" and display name "novohispano"
User with admin priviliges with full name "Josh Cheek", email address "demo+josh@jumpstartlab.com", password of "password", and display name "josh"


Note:
For Authentication Use `Devise` gem
And For Authorization Use `Pundit` gem.

