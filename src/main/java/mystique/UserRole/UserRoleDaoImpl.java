package mystique.UserRole;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;


@Repository
@EnableTransactionManagement
public class UserRoleDaoImpl implements UserRoleDao 
{
	
	 @Autowired
	 private SessionFactory sessionFactory;
	
	
	 public SessionFactory getSessionFactory() 
		{
			return sessionFactory.getCurrentSession().getSessionFactory();
		}
	 
	 
	 public void setSessionFactory(SessionFactory sessionFactory) 
		{
			this.sessionFactory = sessionFactory;
		
		}
	

    @Transactional
	public void insertUserRole(UserRole p) {
    	sessionFactory.getCurrentSession().save(p);
    	
    	System.out.println("user inserted");
	}
    
    @Transactional
	public void deleteUserRole(long p) {
    	sessionFactory.getCurrentSession().createQuery("delete from user as p where p.ID = :id").setLong("id", p).executeUpdate();
		System.out.println("User Deleted");
	}
	
	
    @Transactional
	public void updateUserRole(UserRole p) {
    	sessionFactory.getCurrentSession().update(p);
    	System.out.println("user updated");
	}

	public UserRole getUserRole(int p) {
		
		@SuppressWarnings("unchecked")
		List<UserRole> l = sessionFactory.getCurrentSession().createQuery("from UserRole as p where p.Role = :id").setInteger("id", p).list();
		if (l.size()>0)
		{
			return l.get(0);
		}
		else
		{
			return null;
		}
		
		
		
	}

    @Transactional
	public List<UserRole> getAllUsersRole() {
		return sessionFactory.getCurrentSession().createQuery("from UserRole").list();
	
	}
	
    @Transactional
	public void generateUserRoles() {
		try
		{
			UserRole ur ;//= new UserRole("USER" , 1);
			
			ur = this.getUserRole(1);
			
			if( ur == null )
			{
				ur = new UserRole("USER" , 1);
				
				this.insertUserRole(ur);
			}
			
			ur = this.getUserRole(2);
			
			if( ur == null )
			{
				ur = new UserRole("ADMIN" , 2);
				
				this.insertUserRole(ur);
			}
		}
		catch( Exception e )
		{
			e.printStackTrace();
		}
		
		//
		
			}
		
	}
