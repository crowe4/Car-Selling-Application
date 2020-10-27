# 1). Car-Selling-Application

Project for CS348 (Informations Systems) @Purdue University.

Group Members - Amrish Nayak, Briana Crowe, Yash Chaturvedi

Date - October 2020.


# 2). Basic Structure
## 2.1). Features –

• A potential buyer can choose from one of the default models.

• A potential buyer can look at the details of the car they selected.

• A potential buyer can look at any accessories to be added to the car and the costs associated with them.

• A potential buyer can look at total price of products in the car before purchasing it.

• A potential buyer can change the models/features/accessories and so the costs associated will also be updated accordingly.

• Seller can start a sale on any vehicle on the website.

• Seller can stop selling any vehicle.

• Seller can view cars purchased on a particular date.

• Seller can look at number of cars sold on a particular date.

• Seller can look at most common accessory sold for any particular model of any car.



## 2.2). ERD Diagram Assumptions –
•	A buyer always has a cart.

•	A particular cart can only be associated with one particular user (Assuming his account details are not shared with other people).

•	A particular cart can be made up of 0 or multiple brands (vehicles), so basically people can buy multiple cars at once (in a single order).

•	A particular car brand can be present in 0 or more carts. Basically, many people can buy the same brand’s vehicle.

•	Multiple brands can own a particular make(model) of a car or not. Example - BMW & Alpina have few models owned by both brands.

•	A particular make (model) belongs to at least 1 or more brands.

•	A particular make (model) can have 0 or more accessories added to it.

•	A particular make (model) is available in 1 or more colors.

•	A particular color can be available in 0 or more make (models).

•	A particular accessory can be compatible with 0 or more makes (models).


Tools - 
