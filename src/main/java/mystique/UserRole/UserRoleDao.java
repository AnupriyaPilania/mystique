package mystique.UserRole;

import java.util.List;

public interface UserRoleDao {

		public void insertUserRole(UserRole p);
		public void deleteUserRole(long p);
		public void updateUserRole(UserRole p);
		public UserRole getUserRole(int p);
		public List<UserRole> getAllUsersRole();
		public void generateUserRoles();

	
	
}
