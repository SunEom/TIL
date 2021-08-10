package org.techtown.mission22;

import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class Fragment1 extends Fragment {

    EditText editText;
    EditText editText2;
    EditText editText3;

    SQLiteOpenHelper dbHelper;
    SQLiteDatabase database;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View result =  inflater.inflate(R.layout.fragment1, container, false);

        editText = result.findViewById(R.id.editText);
        editText2 = result.findViewById(R.id.editText2);
        editText3 = result.findViewById(R.id.editText3);

        dbHelper = new DatabaseHelper(getContext());
        database = dbHelper.getWritableDatabase();

        Button button = result.findViewById(R.id.button);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String title = editText.getText().toString();
                String author = editText2.getText().toString();
                String description = editText3.getText().toString();

                database.execSQL("insert into book(title, author, description) values('" +
                        title+"', '"+author+ "', '"+description+"')");

                Toast.makeText(getContext(),"정상적으로 저장되었습니다!",Toast.LENGTH_LONG).show();
                editText.setText("");
                editText2.setText("");
                editText3.setText("");
            }
        });

        return result;
    }
}