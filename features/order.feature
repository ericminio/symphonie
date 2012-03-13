Feature: Order a Human Symphony t-shirt
  In order to be part of the human-symphony community
  As a site visitor
  I want to order a t-shirt

  Scenario: successfuly ordering a t-shirt
    When "Bernard Notarianni" orders a t-shirt to be sent at "Bernard Notarianni, 10 rue de Paris, France"
    Then the order list contains "Bernard Notarianni"
    And the system knows that "Bernard Notarianni" wants a t-shirt to be sent at "Bernard Notarianni, 10 rue de Paris, France"


#  Scenario: notifying the expedition managers
#    When "someone" orders a t-shirt to be sent at "an address"
#    Then the system has sent a mail containing "'someone' ordered a t-shirt to be sent at 'an address'" to the following recipients
#      | email                 |
#      | eric.mignot@gmail.com |
#      | leroulley@hotmail.com |
#      | vtence@gmail.com      |
   
  