class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
		//"/"(controller: "client", action:"report")
		"500"(view:'/error')
	}
}
