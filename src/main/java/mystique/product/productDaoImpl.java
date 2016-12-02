package mystique.product;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Repository
@EnableTransactionManagement
public  class productDaoImpl implements productDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void insert(product p) {
		sessionFactory.getCurrentSession().save(p);
	}

	@Transactional
	public void update(product p) {
		sessionFactory.getCurrentSession().update(p);
	}

	@Transactional
	public void delete(int pid) {
		System.out.println(pid);
		sessionFactory.getCurrentSession().createQuery("delete from product as p where p.Id = :id")
		.setInteger("id", pid).executeUpdate();

	}

	@Transactional
	public product getProduct(int pid) {
		List<product> list=sessionFactory.getCurrentSession().createQuery("from product where Id=:id")
				.setInteger("id", pid).list();
				return list.get(0);
		
	}

	@Transactional
	public List<product> getProducts() {
		List<product> list =this.getSessionFactory().getCurrentSession().createQuery("from product p").list();
	   return list;
	}
	public SessionFactory getSessionFactory() {
		// TODO Auto-generated method stub
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}
    @Transactional
	public List<product> getAllProducts() {
		List<product> list =this.getSessionFactory().getCurrentSession().createQuery("from product p").list();
		   return list;
	}
    @Transactional
    public product getProductWithMaxId() 
	{

		List<product> l = sessionFactory.getCurrentSession()
				.createQuery("from product as p where p.Id = ( select max(a.Id) from product as a )")
				.list();

		if (l.size() > 0) {
			return l.get(0);
		} else {
			return null;
		}
	}

	
}
