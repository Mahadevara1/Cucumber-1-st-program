package org.tcs.login;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class Demoguru99 {
	public static WebDriver driver;
	@Given("The user is in demo.guru url page and clicked add customer")
	public void the_user_is_in_demo_guru_url_page_and_clicked_add_customer() {
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\HP\\eclipse-workspace\\Cucumber\\drivers\\chromedriver.exe");
		driver=new ChromeDriver();
		driver.get("http://demo.guru99.com/telecom/index.html");
		WebElement addcustomer = driver.findElement(By.xpath("//*[@id=\"one\"]/div/div[1]/div[1]/h3/a"));
		addcustomer.click();
	    
	}

	@When("The user enter the firstname,lastname,email,address and  mobile no {string},{string},{string},{string},{string}")
	public void the_user_enter_the_firstname_lastname_email_address_and_mobile_no(String firstname, String lastname, String email, String address, String mobileno) {
	    WebElement done = driver.findElement(By.xpath("//label[@for='done']"));
	    done.click();
	    driver.findElement(By.xpath("//input[@id='fname']")).sendKeys(firstname);
	    driver.findElement(By.xpath("//input[@id='lname']")).sendKeys(lastname);
	    driver.findElement(By.xpath("//input[@id='email']")).sendKeys(email);
	    driver.findElement(By.xpath("//textarea[@id='message']")).sendKeys(address);
	    driver.findElement(By.xpath("//input[@id='telephoneno']")).sendKeys(mobileno);
	    
	    
	}

	@When("The user clicks login button")
	public void the_user_clicks_login_button() {
		WebElement submit = driver.findElement(By.xpath("//input[@name='submit']"));
		submit.click();
	    
	}

	@Then("The user navigate to nextpage")
	public void the_user_navigate_to_nextpage() {
		System.out.println(driver.findElement(By.xpath("//div[@class='table-wrapper']")).getText());
		if(driver.getCurrentUrl().contains("uid="))
			System.out.println("success");
		else
			System.out.println("faild");
	}


}
