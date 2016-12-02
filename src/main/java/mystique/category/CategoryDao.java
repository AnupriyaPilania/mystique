package mystique.category;

import java.util.List;

public interface CategoryDao {
	
	public void insert(Category c);
	public void delete(int cid);
	public void update(Category c);
    

	public Category getCategory(int cid);
	public List<Category> getCategories();
	
		
}
