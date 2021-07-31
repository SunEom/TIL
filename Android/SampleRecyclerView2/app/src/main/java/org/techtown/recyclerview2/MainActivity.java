package org.techtown.recyclerview2;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.os.Bundle;
import android.view.View;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        RecyclerView recyclerView = findViewById(R.id.recyclerView);

        GridLayoutManager layoutManager = new GridLayoutManager(this, 2);
        recyclerView.setLayoutManager(layoutManager);
        PersonAdapter adapter = new PersonAdapter();

        adapter.addItem(new Person("Kim","010-1000-1000"));
        adapter.addItem(new Person("Kim","010-1000-1000"));
        adapter.addItem(new Person("Kim","010-1000-1000"));
        adapter.addItem(new Person("Kim","010-1000-1000"));
        adapter.addItem(new Person("Kim","010-1000-1000"));
        adapter.addItem(new Person("Kim","010-1000-1000"));
        adapter.addItem(new Person("Kim","010-1000-1000"));
        adapter.addItem(new Person("Kim","010-1000-1000"));
        adapter.addItem(new Person("Kim","010-1000-1000"));
        adapter.addItem(new Person("Kim","010-1000-1000"));
        adapter.addItem(new Person("Kim","010-1000-1000"));
        adapter.addItem(new Person("Kim","010-1000-1000"));
        adapter.addItem(new Person("Kim","010-1000-1000"));
        adapter.addItem(new Person("Kim","010-1000-1000"));
        adapter.addItem(new Person("Kim","010-1000-1000"));
        adapter.addItem(new Person("Kim","010-1000-1000"));
        adapter.addItem(new Person("Kim","010-1000-1000"));
        adapter.addItem(new Person("Kim","010-1000-1000"));

        adapter.setOnItemClickListener(new OnPersonItemClickListener() {
            @Override
            public void onItemClick(PersonAdapter.ViewHolder holder, View view, int position) {
                Person item = adapter.getItem(position);
                Toast.makeText(getApplicationContext(), "아이템 선택됨 : " + item.getName(), Toast.LENGTH_LONG).show();
            }
        });

        recyclerView.setAdapter(adapter);
    }
}