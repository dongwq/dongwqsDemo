package hibernate;

import org.hibernate.cfg.ImprovedNamingStrategy;

import com.dongwq.CommonContext;

public class CustomNamingStrategy extends ImprovedNamingStrategy
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String classToTableName(String className)
	{
		return CommonContext.tableNamePrefix + super.classToTableName(className);
		// StringHelper.unqualify(className)
	}

	// String propertyToColumnName(String propertyName)
	// {
	// "" +
	// super.propertyToColumnName(propertyName);//StringHelper.unqualify(propertyName)
	// }
}
