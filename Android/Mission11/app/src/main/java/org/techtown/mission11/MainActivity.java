package org.techtown.mission11;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    EditText editText;
    TextView textView;

    @Override
    protected void onNewIntent(Intent intent) {
        String word = intent.getStringExtra("word");
        textView.setText(word);

        super.onNewIntent(intent);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        editText = findViewById(R.id.editText);
        textView = findViewById(R.id.textView);

        Button button = findViewById(R.id.button);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String word = editText.getText().toString();

                Intent intent = new Intent(getApplicationContext(), NewService.class);
                intent.putExtra("word", word);

                startService(intent);
            }
        });
    }
}