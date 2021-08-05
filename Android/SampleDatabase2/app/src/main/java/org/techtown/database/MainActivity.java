package org.techtown.database;

import androidx.appcompat.app.AppCompatActivity;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    EditText editText;
    EditText editText2;
    TextView textView;

    SQLiteDatabase database;
    DatabaseHelper dbHelper;
    String tableName;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        editText = findViewById(R.id.editText);
        editText2 = findViewById(R.id.editText2);
        textView = findViewById(R.id.textView);

        Button button = findViewById(R.id.button);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String databaseName = editText.getText().toString();
                createDataBase(databaseName);
            }
        });

        Button button2 = findViewById(R.id.button2);
        button2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                tableName = editText2.getText().toString();
                createTable(tableName);

                insertRecord();
            }
        });
        Button button3 = findViewById(R.id.button3);
        button3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                executeQuery();
            }
        });
    }

    public void executeQuery(){
        println("executeQuery 실행됨");

        Cursor cursor = database.rawQuery("select _id, name, age, mobile from emp", null);
        int recordCount = cursor.getCount();
        println("레코드 개수 : " + recordCount);

        for(int i=0; i <recordCount; i++){
            cursor.moveToNext();
            int id = cursor.getInt(0);
            String name = cursor.getString(1);
            int age = cursor.getInt(2);
            String mobile = cursor.getString(3);

            println("레코드#"+i+" : "+id+", "+name+", "+age+", "+mobile);
        }
        cursor.close();
    }

    private void createDataBase(String name){
        println("createDatabase 호출");

        dbHelper = new DatabaseHelper(this);
        database = dbHelper.getWritableDatabase();

        println("데이터베이스 생성함 : "+name);
    }

    private void createTable(String name){
        println("createTable 호출");

        if(database == null){
            println("데이터베이스를 먼저 생성하세요.");
            return;
        }

        database.execSQL("create table if not exists "+name+ "(" + " _id integer PRIMARY KEY autoincrement, " + " name text," +
                " age integer, "+ "mobile text)");

        println("테이블 생성함 : "+ name);
    }

    private void insertRecord(){
        println("insertRecord 호출됨.");
        if(database == null){
            println("데이터베이스를 먼저 생성하세요.");
            return;
        }

        if(tableName == null){
            println("테이블을 먼저 생성하세요.");
            return;
        }

        database.execSQL("insert into "+tableName+ "(name, age, mobile)" +" values "+ "('John', 20, '010-1000-1000')  ");
        println("레코드 추가함.");
    }

    public void println(String message){
        textView.append(message+"\n");
    }
}