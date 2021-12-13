package awestover.strings;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@SpringBootApplication
public class StringsApplication {
    public static void main(String[] args) {
        SpringApplication.run(StringsApplication.class, args);
}

    @RequestMapping("/")
    public String hello() { 
        	return "Hello client! How are you doing?";
    }
    @RequestMapping("/random")
    public String randomhello() {
    	return "Sprint Boot is great! So easy to just respond with strings";
    }
}
