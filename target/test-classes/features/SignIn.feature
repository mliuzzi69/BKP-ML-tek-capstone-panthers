Feature: Sign In Feature

  Background: 
    Given User is on retail website
    When User click on Sign in option
	
	@signInTest
  Scenario: Verify user can sign in into Retail Application
    And User enter email 'liuzzi@hotmail.com' and password 'Ciclon22!'
    And User click on login button
    Then User should be logged in into Account

    
  @signUpTest
  Scenario: Verify user can create an account into Retail Website
    And User click on Create New Account button
    And User fill the signUp information with below data
      | name  | email         | password | confirmPassword |
      | Koala | Kit191@it.com | Kit@2022 | Kit@2022        |
    And User click on SignUp button
    Then User should be logged into account page
  
  
  
  
  
# Esto se puede borrar despues antes de entregar
    
  Scenario Outline: Verify user can login with different email and pass
    And User enter email <email> and password <password>
    And User click on login button
    Then User should be logged in into Account

    Examples: 
      | email                 | password      |
      | 'liuzzi@metfire.com'  | 'Malkoala69!' |
      | 'mliuzzi@metfire.com' | 'Koalamal69!' |
      | 'liuzzi@hotmail.com'  | 'Ciclon22!'   |

  

  @signUpTestScOutline
  Scenario Outline: Verify user can create an account into Retail Website
    And User click on Create New Account button
    And User fill the signUp information with below data
      | name   | email   | password   | confirmPassword   |
      | <name> | <email> | <password> | <confirmPassword> |
    And User click on SignUp button
    Then User should be logged into account page

    Examples: 
      | name     | email                       | password  | confirmPassword |
      | panthers | panthers112@tekschool.us    | Tek@12345 | Tek@12345       |
      | panthers | panthersxy1123@tekschool.us | Tek@85236 | Tek@85236       |
      | panthers | panthersxy1144@tekschool.us | Ket@8899  | Ket@8899        |
      | panthers | panthersxy114@tekschool.us  | Tek@12345 | Tek@12345       |
      