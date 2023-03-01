package util;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import bean.Classes;
import bean.Students;
import bean.Subjects;
import bean.Teachers;


public class HibernateSessionUtil {
	
	private static SessionFactory factory;
	
	public static SessionFactory buildSessionFactory() {
		
		factory = new Configuration().configure("hibernate.cfg.xml")
				.addAnnotatedClass(Subjects.class)
				.addAnnotatedClass(Students.class)
				.addAnnotatedClass(Teachers.class)
				.addAnnotatedClass(Classes.class)
				.buildSessionFactory();
		return factory;
	}

}