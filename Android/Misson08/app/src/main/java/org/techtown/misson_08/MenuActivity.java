package org.techtown.misson_08;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.sax.StartElementListener;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class MenuActivity extends AppCompatActivity {
    public static final int REQUEST_CUSTOMER_CODE = 200;

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if(resultCode == 200) {
            Toast.makeText(this,data.getStringExtra("menu"),Toast.LENGTH_LONG).show();
            return;
        }
        else if(resultCode == 201) {
            Toast.makeText(this,data.getStringExtra("menu"),Toast.LENGTH_LONG).show();
            finish();
        };
    }

    public static final int REQUEST_SALES_CODE = 201;
    public static final int REQUEST_PRODUCT_CODE = 201;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_menu);
        Button button = findViewById(R.id.button2);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getApplicationContext(),CustomerActivity.class);
                startActivityForResult(intent,REQUEST_CUSTOMER_CODE);
            }
        });

        Button button2 = findViewById(R.id.button3);
        button2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getApplicationContext(),SalesActivity.class);
                startActivityForResult(intent,REQUEST_SALES_CODE);
            }
        });

        Button button3 = findViewById(R.id.button4);
        button3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(getApplicationContext(), ProductActivity.class);
                startActivityForResult(intent, REQUEST_PRODUCT_CODE);
            }
        });

    }
}