package com.dongwq

import org.hibernate.SessionFactory

/**
 * get the hibernat stat 数据
 * can use Hibernate Statistics plugin so this class is not necessary
 * @author Administrator
 *
 */
class SystemController {

	SessionFactory sessionFactory

	def hibernateStatistics = {
		org.hibernate.stat.Statistics statistics = sessionFactory.statistics

		// TODO render the statistics
		render {
			html {
				body {
					p {
						String[] statLines =
								(statistics.toString()-'Statistics').replaceAll('[\\[\\]]', '').split(',')
						statLines.each { stat ->
							span(stat)
							br()
						}
					}
				}
			}
		}

	}
}
