package com.springboot.daos;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.springboot.pojo.Employee;
import com.springboot.pojo.Login;


@Repository
public class AdminDAOImpl implements AdminDAO
{
	@Autowired
	private SessionFactory sf;


	@SuppressWarnings("unchecked")
	public List<Employee> listEmployee() {
		System.out.println("in dao : list Member");
		String jpql = "select m from Employee m";
		Session session = sf.getCurrentSession();
		session.beginTransaction();
		return	session.createQuery(jpql).list();
	}
	
	@SuppressWarnings("unchecked")
	public Employee getEmpById(int eid) {
		System.out.println("in dao : list Member");
		String jpql = "select m from Employee m where m.eid='eid'";
		Session session = sf.getCurrentSession();
		session.beginTransaction();
		List<Employee> list= session.createQuery(jpql).setParameter("eid", eid).list();
		return (list.isEmpty() ? null : list.get(0));
	}

	public String registerUser(Employee m) {
		/*Session session=sf.getCurrentSession();
		   Transaction trans=session.beginTransaction();
		   session.save(m);
		   trans.commit();
		System.out.println("In Dao Register....");
		sf.getCurrentSession().save(m);*/


		Session session=null;
		/*sf.getCurrentSession().save(m);*/

		try
		{System.out.println("In Dao Register....");
		session= sf.getCurrentSession();
		session.beginTransaction(); 
		session.save(m);
		session.getTransaction().commit();
		}catch(Exception e)
		{
			session.getTransaction().rollback();
		}

		return "user reged successfully..."+m.getEid();
	}



	@SuppressWarnings("unchecked")
	public Login authenticateUser(String username, String password) {
		String jpql = "select u from Login u where u.username = :user and u.password=:password";
		Session session = this.sf.getCurrentSession();
		session.beginTransaction();
		List<Login> list=session.createQuery(jpql).setParameter("user", username)
				.setParameter("password", password).list();

		//List<Login> list=sf.getCurrentSession().createQuery(jpql).setParameter("user", username)
		//		.setParameter("password", password).list();
		return (list.isEmpty() ? null : list.get(0));
	}

	public String updateUser(Employee m) {
		Session session=null;
		try
		{System.out.println("In Dao Update....");
		session= sf.getCurrentSession();
		session.beginTransaction(); 
		session.update(m);
		session.getTransaction().commit();
		}catch(Exception e)
		{
			session.getTransaction().rollback();
		}

		return "user reged successfully..."+m.getEid();
	}

	





















}
