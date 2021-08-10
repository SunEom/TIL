package org.techtown.mission21;

import androidx.appcompat.app.AppCompatActivity;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    EditText editText;
    EditText editText2;
    EditText editText3;

    SQLiteDatabase database;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        createDatabase();

        editText = findViewById(R.id.editText);
        editText2 = findViewById(R.id.editText2);
        editText3 = findViewById(R.id.editText3);

        Button button = findViewById(R.id.button);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String title = editText.getText().toString();
                String author = editText2.getText().toString();
                String description = editText3.getText().toString();

                database.execSQL("INSERT INTO BOOK (title, author, description) VALUES('" + title + "', '" + author + "', '" + description + "')");
                Toast.makeText(getApplicationContext(),"정상적으로 저장되었습니다.",Toast.LENGTH_LONG).show();
                editText.setText("");
                editText2.setText("");
                editText3.setText("");
                executeQuery();
            }
        });
    }

    private void createDatabase(){
        String databaseName = "book.db";
        database = openOrCreateDatabase(databaseName, MODE_PRIVATE, null);
        createTable();
    }

    private void createTable(){
        if(database == null){
            Log.d("createTable","테이블을 먼저 생성하세요.");
            return ;
        }

        database.execSQL("CREATE TABLE IF NOT EXISTS BOOK(_id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, author TEXT, description TEXT)");

    }

    private void executeQuery(){
        Cursor cursor = database.rawQuery("select _id, title, author, description from BOOK", null);
        int recordCount = cursor.getCount();

        for(int i=0;i<recordCount; i++){
            cursor.moveToNext();
            int id = cursor.getInt(0);
            String title = cursor.getString(1);
            String author = cursor.getString(2);
            String desc = cursor.getString(3);
            Log.d("executeQuery",id+" " + title+" " + author+" " + desc);
        }

    }
}