package org.techtown.mission17;

public class Customer {
    String name;
    String mobile;
    String address;

    public String getName() {
        return name;
    }

    public String getMobile() {
        return mobile;
    }

    public String getAddress() {
        return address;
    }

    public Customer(String name, String mobile, String address) {
        this.name = name;
        this.mobile = mobile;
        this.address = address;
    }
}
