package dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import bean.Teachers;
import util.HibernateSessionUtil;

public class TeachersDAO {
	public static List<Teachers> listTeachers(){
		SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
		Session session = factory.openSession();
		@SuppressWarnings("unchecked")
		List<Teachers> listOfTeachers = session.createQuery("From Teachers as tea").list();
		session.close();
		return listOfTeachers;
	}
	
	public static void addTeachers(Teachers tea) {
		try {
			SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
			Session session = factory.openSession();
			Transaction tx = session.beginTransaction();
			
			session.saveOrUpdate(tea);
			tx.commit();
			session.close();
		}
		catch(Exception e) {
			System.out.println("Add Teacher failed"+ e.getMessage().toString());
		}
	}
	
}