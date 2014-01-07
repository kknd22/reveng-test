package reveng.test

import com.me.MyUserService
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;


class MyUserController {
	def myUserService
	
	
	//@Autowired deosn't work
    //@Qualifier("myUserService")
	//MyUserService ms
    
	def crudMyUser() {
		def u = myUserService.getAUserById(10)
		//def u2 = m2.getAUserById(11) 
		[u: u]
	}
}
