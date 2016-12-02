package mystique.user;

import java.util.List;

public interface userDao {
	
	public void insertUser(user p);
	public void deleteUser(long p);
	public void updateUser(user p);
	public user getUser(String p);
	public List<user> getAllUsers();

}
