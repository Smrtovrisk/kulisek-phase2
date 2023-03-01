package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import bean.Students;
import util.HibernateSessionUtil;

public class StudentsDAO {
	public static List<Students> listStudents(){
		SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
		Session session = factory.openSession();
		@SuppressWarnings("unchecked")
		List<Students> listOfStudents = session.createQuery("From Students as std").list();		
		return listOfStudents;
	}
	
	public static void addStudents(Students std) {
		try {
			SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
			Session session = factory.openSession();
			Transaction tx = session.beginTransaction();
			
			session.saveOrUpdate(std);
			tx.commit();
			session.close();
		}
		catch(Exception e) {
			System.out.println("Add Student failed"+ e.getMessage().toString());
		}
	}
}