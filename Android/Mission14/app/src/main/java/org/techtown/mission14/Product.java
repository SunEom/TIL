package org.techtown.mission14;

public class Product {
    int imageResId;
    String name;
    int price;
    String info;

    public Product(int imageResId, String name, int price, String info) {
        this.imageResId = imageResId;
        this.name = name;
        this.price = price;
        this.info = info;
    }

    public int getImageResId() {
        return imageResId;
    }

    public void setImageResId(int imageResId) {
        this.imageResId = imageResId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }
}
