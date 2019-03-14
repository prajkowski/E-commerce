package pl.coderslab.model;

public class CartItem {
    private Integer quantity;
    private Product product;
    private double sum;

    public CartItem(Integer quantity, Product product) {
        this.quantity = quantity;
        this.product = product;
        this.sum = (product.getPrice()*quantity);
    }

    public Integer getQuantity() {
        return quantity;
    }

    public Product getProduct() {
        return product;
    }

    public double getSum() {
        return sum;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public void setSum(double sum) {
        this.sum = (product.getPrice()*quantity);
    }
}
