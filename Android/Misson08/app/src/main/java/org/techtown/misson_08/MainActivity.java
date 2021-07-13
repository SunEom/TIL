package org.techtown.misson_08;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    public static final int REQUEST_MENU_CODE = 101;
    EditText id, password;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        id = findViewById(R.id.editTextTextPersonName);
        password = findViewById(R.id.editTextTextPassword);


        Button button = findViewById(R.id.button);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String _id = id.getText().toString();
                String _pwd = password.getText().toString();
                if(_id.equals("")){
                    Toast.makeText(MainActivity.this,"아이디를 입력해주세요!",Toast.LENGTH_LONG).show();
                    return;
                }
                if(_pwd.equals("")){
                    Toast.makeText(MainActivity.this,"비밀번호를 입력해주세요",Toast.LENGTH_LONG).show();
                    return;
                }
                Intent intent = new Intent(getApplicationContext(), MenuActivity.class);
                startActivityForResult(intent,REQUEST_MENU_CODE);
            }
        });
    }
}