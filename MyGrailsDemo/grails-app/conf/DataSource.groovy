dataSource {
	pooled = true

	properties {
		maxActive = 50
		maxIdle = 25
		minIdle = 5
		initialSize = 5
		minEvictableIdleTimeMillis = 60000
		timeBetweenEvictionRunsMillis = 60000
		maxWait = 10000
		//validationQuery = "/* ping */"
	}
}
hibernate {
	cache.use_second_level_cache = true
	cache.use_query_cache = true
	cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'

	//added by dongwq
	naming_strategy = hibernate.CustomNamingStrategy
}
// environment specific settings
environments {
	development {
		dataSource {
		
			driverClassName = "com.mysql.jdbc.Driver"
			url = "jdbc:mysql://192.168.1.9/dcc2?useUnicode=true&characterEncoding=utf8&autoReconnect=true"  //?useUnicode=true&characterEncoding=GBK
			username = "dcc"
			password = "yunlian123"
			dbCreate = 'update' // "create-drop"
			
			//logSql = true
			//logSql == show_sql + format_sql
		

			//						// #test at localhost
			//						driverClassName='com.mysql.jdbc.Driver'
			//						url='jdbc:mysql://localhost:3306/dcc2'
			//						username='root'
			//						password='admin'
			//						dbCreate = 'update' // "create-drop"
		}
	}
	test {
		dataSource {
			dbCreate = "update"
			url = "jdbc:hsqldb:mem:testDb"
		}
	}
	production {
		dataSource {
			driverClassName='com.mysql.jdbc.Driver'
			url='jdbc:mysql://localhost:3306/dcc2?useUnicode=true&characterEncoding=utf8&autoReconnect=true'
			username='dandelion'
			password='yunlian'
            dbCreate = "update"
		}
	}
}
