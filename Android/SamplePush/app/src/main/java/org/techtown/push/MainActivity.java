 package org.techtown.push;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.iid.FirebaseInstanceIdReceiver;
import com.google.firebase.iid.internal.FirebaseInstanceIdInternal;
import com.google.firebase.installations.FirebaseInstallations;
import com.google.firebase.messaging.FirebaseMessaging;

 public class MainActivity extends AppCompatActivity {

    TextView textView;
    TextView textView2;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        textView = findViewById(R.id.textView);
        textView2 = findViewById(R.id.textView2);

        FirebaseMessaging.getInstance().getToken()
                .addOnCompleteListener(new OnCompleteListener<String>() {
                    @Override
                    public void onComplete(@NonNull Task<String> task) {
                        if(!task.isSuccessful()){
                            Log.w("Main","토큰 가져오는 데 실패함.", task.getException());
                            return;
                        }

                        String newToken = task.getResult();
                        println("등록ID : "+newToken);
                    }
                });

        Button button = findViewById(R.id.button);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String instanceId = FirebaseInstallations.getInstance().getId().getResult();

                println("확인된 인스턴스 ID : "+instanceId);
            }
        });
    }

    public void println(String data){
        textView2.append(data+"\n");
    }

     @Override
     protected void onNewIntent(Intent intent) {
         println("onNewIntent() called.");

         if(intent != null){
             processIntent(intent);
         }

         super.onNewIntent(intent);
     }

     private void processIntent(Intent intent){
        String from = intent.getStringExtra("from");
        if(from == null){
            println("from is null");
            return;
        }

        String contents = intent.getStringExtra("contents");
        println("DATA : "+ from + ", " + contents);
        textView.setText("["+from+"]로부터 수신한 데이터 : "+contents);
     }
 }