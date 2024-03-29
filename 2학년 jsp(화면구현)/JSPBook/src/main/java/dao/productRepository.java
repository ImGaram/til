package dao;

import java.util.*;
import dto.Product;

public class productRepository {
	
    private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    public productRepository() {
        Product phone = new Product("P1234", "iPhone 6s", 800000);
        phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
        phone.setCategory("Smart Phone");
        phone.setManufacturer("Apple");
        phone.setUnitsInStock(1000);
        phone.setCondition("New");
        
        Product notebook = new Product("P1235", "LG PC �׷�", 1500000);
        notebook.setDescription("13.3-inch,  dispaly, 5rd generation Intel Core processors");
        notebook.setCategory("Notebook");
        notebook.setManufacturer("LG");
        notebook.setUnitsInStock(1000);
        notebook.setCondition("Refurbished");
        
        Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
        tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor");
        tablet.setCategory("Tablet");
        tablet.setManufacturer("Samsung");
        tablet.setUnitsInStock(1000);
        tablet.setCondition("Old");
        
        listOfProducts.add(phone);
        listOfProducts.add(notebook);
        listOfProducts.add(tablet);
        
    }
    
    public ArrayList<Product> getAllProducts() {
        return listOfProducts;
    }
    
    public Product getProductById(String productId) {
    	Product productById = null;
    	
    	for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
    	return productById;
    }
}