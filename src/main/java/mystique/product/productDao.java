package mystique.product;

import java.util.List;

public interface productDao 
{
	public void insert(product p);
    public void update(product p);
    public void delete(int pid);

    public product getProduct(int pid);
    public List<product> getProducts();
    public List<product> getAllProducts();
    public product getProductWithMaxId();
}