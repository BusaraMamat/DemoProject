package com.app.stepdefinitions;

import java.util.List;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.testng.Assert;

import com.app.pages.RegistrationPage;
import com.app.utilities.ConfigurationReader;
import com.app.utilities.Driver;

import cucumber.api.PendingException;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.cucumber.datatable.DataTable;

public class RegistrationStepDefs {

	private WebDriver driver = Driver.getDriver();
	RegistrationPage page = new RegistrationPage();

	@Given("I navigate to the registration page")
	public void i_navigate_to_the_registration_page() {
		driver.get(ConfigurationReader.getProperty("url"));
		driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
		driver.manage().window().fullscreen();

	}

	@Then("I should see {string}")
	public void i_should_see(String registrationForm) {
		Assert.assertEquals(true, page.registrationForm.getText().equals(registrationForm));
	}

	@Then("all labels with their fields should be present:")
	public void all_labels_with_their_fields_should_be_present(DataTable dataTable) {
		List<List<String>> data = dataTable.asLists();
		System.out.println(data.size());
		for (int i = 0; i < data.size(); i++) {
			System.out.println(data.get(i).get(0));
		}
	}

	@When("I click on Submit")
	public void i_click_on_Submit() {

		throw new PendingException();
	}

	@Then("warning alert should be displayed:")
	public void warning_alert_should_be_displayed(DataTable dataTable) {

		throw new PendingException();
	}

	@Given("I enter personal details:")
	public void i_enter_personal_details(DataTable dataTable) {
		throw new PendingException();
	}

	@When("I click on Continue")
	public void i_click_on_Continue() {

		throw new PendingException();
	}

	@Then("warning alert should be displayed")
	public void warning_alert_should_be_displayed() {

		throw new PendingException();
	}

	@Then("I should not see {string}")
	public void i_should_not_see(String string) {

		throw new PendingException();
	}

}
