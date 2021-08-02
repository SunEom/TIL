package org.techtown.mission17;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentManager;

import android.os.Bundle;
import android.os.Handler;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {
    int index =0;

    CustomerInfo customerInfo1;
    CustomerInfo customerInfo2;

    ArrayList<CustomerInfo> fragments = new ArrayList<CustomerInfo>();

    Handler handler = new Handler();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        customerInfo1 = new CustomerInfo();
        customerInfo2 = new CustomerInfo();

        Bundle info1 = new Bundle();
        Bundle info2 = new Bundle();

        info1.putString("name","홍길동");
        info1.putString("mobile", "010-1000-1000");
        info1.putString("address", "서울특별시");
        info1.putInt("index",1);

        info2.putString("name", "김하늘");
        info2.putString("mobile", "010-1234-1234");
        info2.putString("address", "대전광역시");
        info2.putInt("index",2);

        customerInfo1.setArguments(info1);
        customerInfo2.setArguments(info2);

        fragments.add(customerInfo1);
        fragments.add(customerInfo2);

        FragmentManager fragmentManager = getSupportFragmentManager();
        fragmentManager.beginTransaction().replace(R.id.container, fragments.get(0)).commit();

        PanelThread panelThread = new PanelThread();
        panelThread.start();
    }

    public class PanelThread extends Thread{
        public void run() {

            for(int i=0; i<100 ;i++){
                try{
                    Thread.sleep(5000);
                } catch(Exception e){}

                handler.post(new Runnable() {
                    @Override
                    public void run() {
                        if(index == 0 ){
                            getSupportFragmentManager().beginTransaction().setCustomAnimations(R.anim.enter_to_left, R.anim.exit_to_left).replace(R.id.container, fragments.get(1)).commit();
                            index = 1;
                        } else if(index == 1 ){
                            getSupportFragmentManager().beginTransaction().setCustomAnimations(R.anim.enter_to_left, R.anim.exit_to_left).replace(R.id.container, fragments.get(0)).commit();
                            index = 0;
                        }
                    }
                });
            }
        }
    }

}