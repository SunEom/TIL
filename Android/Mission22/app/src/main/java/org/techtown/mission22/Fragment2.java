package org.techtown.mission22;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class Fragment2 extends Fragment {

    RecyclerView recyclerView;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        View result = inflater.inflate(R.layout.fragment2, container, false);

        recyclerView = result.findViewById(R.id.recyclerView);

        LinearLayoutManager manager = new LinearLayoutManager(getContext(), RecyclerView.VERTICAL,false);
        BookAdapter adapter = new BookAdapter();

        recyclerView.setAdapter(adapter);
        recyclerView.setLayoutManager(manager);

        DatabaseHelper dbHelper = new DatabaseHelper(getContext());
        SQLiteDatabase database = dbHelper.getReadableDatabase();

        Cursor cursor = database.rawQuery("select _id, title, author, description from book",null);
        int recordCount = cursor.getCount();

        for(int i=0; i<recordCount; i++){
            cursor.moveToNext();
            int id = cursor.getInt(0);
            String title = cursor.getString(1);
            String author = cursor.getString(2);
            String description = cursor.getString(3);

            adapter.addItem(new Book(id, title, author, description));
        }
        adapter.notifyDataSetChanged();

        return result;
    }
}