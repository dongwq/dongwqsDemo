

import grails.plugins.springsecurity.SpringSecurityService;

class TestController {

	SpringSecurityService springSecurityService
	
	
    def index2 = { 
		String p = springSecurityService.encodePassword('yunlian123')
		
		render text:p
	}
	
	def test = {
		
	}
	
	def index = {
		[data: [[0, 10], [4, 5], null, [6, 2.5], [12, 10]]]
	}
}
