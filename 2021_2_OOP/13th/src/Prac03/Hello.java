package Prac03;

abstract class Hello {
    private String toWhom = "smb";
    abstract public void sayHello();
    public void setToWhom(String name){
        this.toWhom = name;
    }
    public String getToWhom(){
        return this.toWhom;
    }
}
