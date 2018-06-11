Feature: User Registration 

@register 
Scenario Outline: All fields are present on the registration page 
	Given I navigate to the registration page 
	Then I should see "Registration Form" 
	And all labels with their fields should be present: 
	Examples: 
		| First Name           |
		| Last Name            |
		| Marital Status       |
		| Hobby                |
		| Country              |
		| Date of Birth        |
		| Phone Number         |
		| Username             |
		| E-mail               |
		| Your Profile Picture |
		| About Yourself       |
		| Password             |
		| Confirm Password     |
		
	  @register
  Scenario: Click on Submit button without filling any fields
    Given I navigate to the registration page
    When I click on Submit
    Then warning alert should be displayed:
      | * This field is required |	
		
	@register
  Scenario Outline: Register an account filling fields with valid credential
    Given I navigate to the registration page
    And I enter personal details:
      | firstName   | lastName   | Marital Status   | Hobby   | Country   | Date of Birth   | Phone Number   | Username   | E-mail   | Your Profile Picture    | About Yourself   | password   | passwordConfirm   |
      | <firstName> | <lastName> | <Marital Status> | <Hobby> | <Country> | <Date of Birth> | <Phone Number> | <Username> | <E-mail> | <Your Profile Picture > | <About Yourself> | <password> | <passwordConfirm> |
    When I click on Continue
    Then I should see "Thank you for your registration"

    Examples: Fill required fields only
      | firstName   | lastName   | Hobby   | Phone Number   | Username   | E-mail   | password   | passwordConfirm   |
      | <firstName> | <lastName> | <Hobby> | <Phone Number> | <Username> | <E-mail> | <password> | <passwordConfirm> |

    Examples: Fill all the fields
      | firstName | lastName | Marital Status | Hobby   | Country | Date of Birth | Phone Number | Username  | E-mail            | Your Profile Picture | About Yourself | password | passwordConfirm |
      | Nadi      | Kim      | Single         | Dance   | China   | 6/24/1989     |   7893453232 | Gum       | mary@gmail.com    | state&&              | smart          | jones123 | jones123        |
      | Indiana   | Jones    | Devorced       | Reading | Benin   | 9/21/1989     |   3654735624 | IDontKnow | cary@gmail.com    | Ica ^                | kind           | bond123  | bond123         |
      | Bond      | James    | Married        | Cricket | Haiti   | 6/4/1989      |   3674326352 | JamesBond | bary@gmail.com    | Oslo  %%             | beautiful      | Norway   | bond            |
      | Han       | Solo     | Single         | Cricket | Togo    | 3/2/1989      |   5533365242 | Uhhhhh    |hary@gmail.com     | Auckland  &&         | smart          | solo123  | solo123         |

  @register
  Scenario Outline: Unable to register a user if one field was not filled
    Given I navigate to the registration page
    And I enter personal details:
      | firstName   | lastName   | Hobby   | Phone Number   | Username   | E-mail   | password   | passwordConfirm   |
      | <firstName> | <lastName> | <Hobby> | <Phone Number> | <Username> | <E-mail> | <password> | <passwordConfirm> |
    When I click on Continue
    Then warning alert should be displayed
    And I should not see "Thank you for your registration"

    Examples: Leave one required field blank
      | firstName   | lastName   | Hobby   | Phone Number   | Username   | E-mail         | password   | passwordConfirm   |
      |             | Smith      | Dance   |7893453232      |Gum         |mary@gmail.com  |jones123    | jones123        |
      | Mary        |            | Dance   |7893453232      |Gum         |mary@gmail.com  |jones123    | jones123        |
      | Mary        | Smith      |         |7893453232      |Gum         |mary@gmail.com  |jones123    | jones123        |
      | Mary        | Smith      | Dance   |                |Gum         |mary@gmail.com  |jones123    | jones123        |
      | Mary        | Smith      | Dance   |7893453232      |            |mary@gmail.com  |jones123    | jones123        |
      | Mary        | Smith      | Dance   |7893453232      |Gum         |                |jones123    | jones123        |
      | Mary        | Smith      | Dance   |7893453232      |Gum         |mary@gmail.com  |            | jones123        |
      | Mary        | Smith      | Dance   |7893453232      |Gum         |mary@gmail.com  |jones123    |                 |
    
		