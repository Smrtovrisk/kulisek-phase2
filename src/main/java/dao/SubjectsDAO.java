package dao;


import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import bean.Subjects;
import util.HibernateSessionUtil;

public class SubjectsDAO {
	public static List<Subjects> listSubjects(){
		SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
		Session session = factory.openSession();
		@SuppressWarnings("unchecked")
		List<Subjects> listOfSubjects = session.createQuery("from Subjects as sub").list();
		return listOfSubjects;
	}
	
	public static void addSubjects(Subjects sub) {
		try {
			SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
			Session session = factory.openSession();
			Transaction tx = session.beginTransaction();
			
			session.saveOrUpdate(sub);
			tx.commit();
			session.close();
		}
		catch(Exception e) {
			System.out.println("Adding subject failed"+ e.getMessage().toString());
		}
	}
	
	public static Subjects searchSubjectById(int id) {
		SessionFactory factory = HibernateSessionUtil.buildSessionFactory();
		Session session = factory.openSession();
		Subjects foundSubjects=session.get(Subjects.class,id);
		session.close();
		return foundSubjects;
	}
	

}