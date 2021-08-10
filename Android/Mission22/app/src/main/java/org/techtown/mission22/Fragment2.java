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
        int recordCount
        adapter.addItem(new Book("asd","qwe","12345"));
        adapter.addItem(new Book("asd","qwe","12345"));
        adapter.addItem(new Book("asd","qwe","12345"));
        adapter.addItem(new Book("asd","qwe","12345"));
        adapter.addItem(new Book("asd","qwe","12345"));
        adapter.addItem(new Book("asd","qwe","12345"));
        adapter.notifyDataSetChanged();

        return result;
    }
}