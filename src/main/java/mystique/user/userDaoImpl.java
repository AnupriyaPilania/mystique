package mystique.user;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;


@Repository
	@EnableTransactionManagement
	public class userDaoImpl implements userDao
	{
		@Autowired
		private SessionFactory sessionFactory;
	 
		public SessionFactory getSessionFactory() 
		{
			return sessionFactory;
		}

		public void setSessionFactory(SessionFactory sessionFactory) {
			this.sessionFactory = sessionFactory;
		}
		
		@Transactional
		public void insertUser(user p) {
			//Session session = getSessionFactory().getCurrentSession();
			sessionFactory.getCurrentSession().save(p);
			
			System.out.println("User Inserted");
		}
		
		@Transactional
		public void deleteUser(long p) {
			sessionFactory.getCurrentSession().createQuery("delete from user as p where p.ID = :id").setLong("id", p).executeUpdate();
			System.out.println("User Deleted");
		}
		
		
		
		@Transactional
		public void updateUser(user p) {
			sessionFactory.getCurrentSession().update(p);
			System.out.println("User updated");
		}
		
		@Transactional
		public List<user>getAllUsers() {

			
			List<user> list = (List<user>) sessionFactory.getCurrentSession().createQuery("from user as u").list();
			
			return list;
			
		}
        @Transactional
		public user getUser(int p) {
			List l = this.getSessionFactory().getCurrentSession().createQuery("from user as p where p.Username = :username").setInteger("username", p).list();
			if (l.size()>0)
			{
				return (user)l.get(0);
			}
			else
			{
				return null;
			}

		}

		public user getUser(String p) {
			return null;
		}

	}
	 

