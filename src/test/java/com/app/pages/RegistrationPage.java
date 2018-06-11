package com.app.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.app.utilities.Driver;

public class RegistrationPage {
	private WebDriver driver;

	public RegistrationPage() {
		this.driver = Driver.getDriver();
		PageFactory.initElements(driver, this);
	}
	
	@FindBy(xpath="//*[@id=\"post-49\"]/header/h1")
	public WebElement header;
	
	
	@FindBy(xpath="//*[@id=\"piereg_pie_form_heading\"]")
	public WebElement registrationForm;
	
	
	@FindBy(id = "name_3_firstname")
	public WebElement FirstName;
	
	@FindBy(id = "name_3_lastname")
	public WebElement LastName;
	
	@FindBy(xpath= "//label[@for='radio_4']")
	public WebElement MaritalStatus;
	
	@FindBy(xpath="//label[@for='checkbox_5']")
	public WebElement Hobby;
	
	@FindBy(id = "dropdown_7")
	public WebElement Country;
	
	@FindBy(xpath = "//label[@for='date_8']")
	public WebElement DateofBirth;
	
	@FindBy(id = "phone_9")
	public WebElement PhoneNumber;
	
	@FindBy(id = "username")
	public WebElement Username;
	
	@FindBy(id = "email_1")
	public WebElement Email;
	
	@FindBy(id = "profile_pic_10")
	public WebElement YourProfilePicture;
	
	@FindBy(id = "description")
	public WebElement AboutYourself;
	
	@FindBy(id = "password_2")
	public WebElement Password;
	
	@FindBy(id = "confirm_password_password_2")
	public WebElement ConfirmPassword;
	
	@FindBy(xpath = "//input[@name='pie_submit']")
	public WebElement Submit;
}
