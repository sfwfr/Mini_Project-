
No <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
Menu <- c("Cheese Pizza", "Double Pepperoni Pizza", "Magherita Pizza", "Seafood Deluxe Pizza", 
          "Garlic bread", "BBQ Chicken Wings", "Spaghetti Bolognese",
          "Water", "Coke", "Sprite")
Price <- c(250, 300, 350, 400, 100, 150, 200, 20, 40, 40)
menu <- data.frame(No, Menu, Price)

Service_No <- c(1, 2)
Service <- c("Pick-up", "Delivery")
Service_Price <- c(0, 50)
service <- data.frame(Service_No, Service, Service_Price)

count_order <- 0
count_add_order <- 0
count_service <- 0
count_pay <- 0

print("------ Welcome to Bobby's Pizza ------")
print("The best pizza restaurant in this area")
print("--------------------------------------")
print("Can I please get your name ?")
name <- readLines("stdin", n=1)
print(paste("Hello, ", name))
print("******** Bobby's Menu ********")
print(menu)
print("******************************")

order_func <- function() {
  while (count_order == 0) {
    print("What's would you like to order ? (Please press 1-10)")
    menu_no <- readLines("stdin", n=1)
    if (menu_no == 1) {
      print(">>>>> You order Cheese Pizza.") 
      print("--------------------------------------")
      break
    }
    else if (menu_no == 2) {
      print("This is our best seller but we're out of Double Pepperoni Pizza today.")
      print("Sorry for any inconvenience.") 
      print("--------------------------------------")
      break 
    }
    else if (menu_no == 3) {
      print(">>>>> You order Magherita Pizza.") 
      print("--------------------------------------")
      break
    }
    else if (menu_no == 4) {
      print(">>>>> You order Seafood Deluxe Pizza.")
      print("--------------------------------------")
      break
    }
    else if (menu_no == 5) {
      print(">>>>> You order Garlic Bread.")
      print("--------------------------------------")
      break
    }
    else if (menu_no == 6) {
      print(">>>>> You order BBQ Chicken Wings.") 
      print("--------------------------------------")
      break
    }
    else if (menu_no == 7) {
      print(">>>>> You order Spaghetti Bolognese.") 
      print("--------------------------------------")
      break
    }
    else if (menu_no == 8) {
      print(">>>>> You order Water.") 
      print("--------------------------------------")
      break
    }
    else if (menu_no == 9) {
      print(">>>>> You order Coke.") 
      print("--------------------------------------")
      break
    }
    else if (menu_no == 10) {
      print(">>>>> You order Sprite.") 
      print("--------------------------------------")
      break
    }
    else {
      print("") 
    }
  }
}

order_func()

while (count_add_order == 0) {
  print("Would you like to order anything else ? (Press 1 for Yes, 2 for No.)")
  add_order_no <- readLines("stdin", n=1)
  if (add_order_no == 1) {
    order_func()
  }
  else if (add_order_no == 2) {
    break
  }
  else {
    print("")
  }
}

print("**** Pick-up or Delivery ****")
print(service)
print("*****************************")
while (count_service == 0) {
  print("Will you pick-up by yourself or delivery to your door ? (Please press 1 or 2)")
  service_no <- readLines("stdin", n=1)
  if (service_no == 1) {
    service_no <- 1
    break
  }
  else if (service_no == 2) {
    service_no <- 2
    break
  }
  else {
    print("")
  }
}

while (count_pay == 0) {
  print("Will you pay by cash or card ? (Press 1 for cash, 2 for card.)")
  pay_no <- readLines("stdin", n=1)
  print("--------------------------------------")
  print(paste(name, "'s order"))
  if (pay_no == 1) {
    print("Payment : By cash")
    break
  }
  else if (pay_no == 2) {
    print("Payment : By card")
    break
  }
  else {
    print("")
  }
}

while (service_no > 0) {
  if (service_no == 1) {
    print("Your order will ready to pick-up within 20 minutes.")
    break
  }
  else {
    print("Your order will deliver to your door within 30 minutes.")
    break
  }
}

print("--------------------------------------")
print("Enjoy your meal !!!")
print("Thank you, Please come back again :)")
