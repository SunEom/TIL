package org.techtown.mission22;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.text.Layout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.google.android.material.tabs.TabLayout;

public class MainActivity extends AppCompatActivity {
    TabLayout tabLayout;

    Fragment1 fragment1 = new Fragment1();
    Fragment2 fragment2 = new Fragment2();

    SQLiteDatabase database;
    DatabaseHelper dbHelper;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        createDatabase();

        getSupportFragmentManager().beginTransaction().replace(R.id.container, fragment1).commit();

        tabLayout = findViewById(R.id.tabLayout);
        tabLayout.addTab(tabLayout.newTab().setText("입력"));
        tabLayout.addTab(tabLayout.newTab().setText("검색"));
        tabLayout.addOnTabSelectedListener(new TabLayout.OnTabSelectedListener() {
            @Override
            public void onTabSelected(TabLayout.Tab tab) {
                int position = tab.getPosition();

                Fragment selected = null;
                if(position ==0){
                    selected = fragment1;
                } else if(position ==1){
                    selected = fragment2;
                }

                getSupportFragmentManager().beginTransaction().replace(R.id.container, selected).commit();
            }

            @Override
            public void onTabUnselected(TabLayout.Tab tab) {

            }

            @Override
            public void onTabReselected(TabLayout.Tab tab) {

            }
        });
    }

    private void createDatabase(){
        if(database == null){
            dbHelper = new DatabaseHelper(this);
            database = dbHelper.getWritableDatabase();
        }
    }

    private void createTable(){
        database.execSQL("CREATE TABLE IF NOT EXISTS book(_id integer primary key autoincrement, title text, author text, description text)");
    }

    private void addRecord(Intent intent){
        String title = intent.getStringExtra("title");
        String author = intent.getStringExtra("author");
        String description = intent.getStringExtra("description");
        database.execSQL("insert into book(title, author, description) values('"+title+"', '"+author+"', '"+description+"')");

    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        addRecord(intent);
    }
}