CREATE TABLE Buyer
    (
        Customer_id VARCHAR(6) NOT NULL,
        Name VARCHAR(20) NOT NULL,
        Address VARCHAR(20) NOT NULL,
        Pincode NUMBER(6) NOT NULL,
        Phone_number number(10) NOT NULL,
        PRIMARY KEY (Customer_id),
        Cart_id VARCHAR(7) NOT NULL,
        FOREIGN KEY(Cart_id) REFERENCES Cart(Cart_id)
    ); 
    
CREATE TABLE Cart
    (
        Cart_id VARCHAR(7) NOT NULL,
        Purchased BOOL NOT NULL,
        PRIMARY KEY(Cart_id),
        Brand_id VARCHAR(5) NOT NULL,
        FOREIGN KEY(Brand_id) REFERENCES Vehicle_brand(Brand_id)
       
    );
    
CREATE TABLE Vehicle_Brand
 (
        Brand_id VARCHAR(5) NOT NULL,
        PRIMARY KEY(Brand_id),
        Make_id VARCHAR(5) NOT NULL,
        FOREIGN KEY(Make_id) REFERENCES Make(Make_id)
 );

CREATE TABLE Make
    (
        Make_id VARCHAR(5) NOT NULL,
        Model_Shape VARCHAR(3) NOT NULL,
        Engine_Power VARCHAR(20) NOT NULL,
        0-60mph NUMBER(3) NOT NULL,
        Price number(7) NOT NULL,
        Color_id VARCHAR(3) NOT NULL,
        Accessories_id VARCHAR(3) NOT NULL,
        PRIMARY KEY (Make_id),
        FOREIGN KEY(Color_id) REFERENCES Color(Color_id),
        FOREIGN KEY(Accessories_id) REFERENCES Accessories(Accessories_id)
    ); 

CREATE TABLE Payment
    (
        Payment_id VARCHAR(5) NOT NULL,
        Payment_method VARCHAR(4) NOT NULL,
        Customer_id VARCHAR(6) NOT NULL,
        Cart_id VARCHAR(7) NOT NULL,
        PRIMARY KEY (Payment_id),
        FOREIGN KEY(Customer_id) REFERENCES Buyer(Customer_id),
        FOREIGN KEY(Cart_id) REFERENCES Cart(Cart_id),
        Total_amount numeric(6)
    );
    
CREATE TABLE Accessories
    (
        Accessories_id VARCHAR(3) NOT NULL,
        Accessory_price number(4) NOT NULL,
        Accessory VARCHAR(10) NOT NULL,
        PRIMARY KEY (Accessories_id)
    );
    
Create Table Color
    (
        Color_id VARCHAR(3) NOT NULL,
        Color_price number(3) NOT NULL,
        Color VARCHAR(10) NOT NULL,
        PRIMARY KEY (Color_id)
    );
