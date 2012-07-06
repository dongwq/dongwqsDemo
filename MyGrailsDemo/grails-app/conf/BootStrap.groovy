import grails.plugins.springsecurity.SpringSecurityService
import grails.util.Environment

import java.util.Random

import com.dongwq.auth.RequestMap
import com.dongwq.auth.Role
import com.dongwq.auth.User
import com.dongwq.auth.UserRole

class BootStrap {

	SpringSecurityService springSecurityService

	def init = { servletContext ->

		switch(Environment.current){
			case Environment.DEVELOPMENT:

			//testInsertAndSableNameStrategy()

				initSystemUser()

			// initTestData()

				break;
			case Environment.PRODUCTION:
				initSystemUser()
				break;

			case Environment.TEST:

				break;
		}
	}
	def destroy = {
	}


	private testInsertAndSableNameStrategy(){
		//new Cell(bssid:"123").save(flush:true);
	}


	private initSystemUser(){

		def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
		def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)

		def adminUser = User.findByUsername('admin') ?: new User(
				username: 'admin',
				password: 'admin123',
				enabled: true).save(failOnError: true)
		if (!adminUser.authorities.contains(adminRole)) {
			UserRole.create adminUser, adminRole
		}

		def test = User.findByUsername('test') ?: new User(
				username: 'test',
				password: 'test',
				enabled: true).save(failOnError: true)
		if (!test.authorities.contains(userRole)) {
			UserRole.create test, userRole
		}

		RequestMap.findByUrl("/test/**")?:new RequestMap(url: '/test/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(failOnError: true)
		RequestMap.findByUrl("/demo/**")?:new RequestMap(url: '/demo/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(failOnError: true)

		RequestMap.findByUrl("/login/**")?:new RequestMap(url: '/login/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(failOnError: true)
		RequestMap.findByUrl("/logout/**")?:new RequestMap(url: '/logout/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(failOnError: true)
		RequestMap.findByUrl("/css/**")?:new RequestMap(url: '/css/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(failOnError: true)
		RequestMap.findByUrl("/js/**")?:new RequestMap(url: '/js/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(failOnError: true)
		RequestMap.findByUrl("/images/**")?:new RequestMap(url: '/images/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(failOnError: true)
		RequestMap.findByUrl("/plugins/**")?:new RequestMap(url: '/plugins/**', configAttribute: 'IS_AUTHENTICATED_ANONYMOUSLY').save(failOnError: true)

		RequestMap.findByUrl("/auth/**")?:new RequestMap(url: '/auth/**', configAttribute: 'ROLE_USER').save(failOnError: true)

		RequestMap.findByUrl("/**")?:new RequestMap(url: '/**', configAttribute: 'ROLE_ADMIN').save(failOnError: true)
	}
	
	static Random r = new Random();

	// init data example
	
//	private void initTestData(){
//
//		initClient()
//	}
//	private void initWifi(){
//		def securityType = ['WEP', 'OPEN', 'PSK']
//
//		10.times{
//			long t = System.currentTimeMillis()
//			new Wifi(bssid:'bssid:' + t, ssid:'ssid:'+t, securityType:securityType[r.nextInt(3)]
//					).save(flush:true)
//
//			Thread.sleep(20);
//		}
//	}
}
