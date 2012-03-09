Feature: Order a Human Symphony t-shirt

Scenario: order a white t-shirt
  Given "Bernard Notarianni" wants to order a human symphony t-shirt
  When he orders a white t-shirt to be send at "Paris floor 3rd"
  Then he sees in the waiting list that "Bernard Notarianni" waits for a white t-shirt to be shipped to "Paris floor 3rd"
  
   
  