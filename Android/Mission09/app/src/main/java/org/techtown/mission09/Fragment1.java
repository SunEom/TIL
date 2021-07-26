package org.techtown.mission09;

import android.app.DatePickerDialog;
import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Fragment1 extends Fragment {
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        ViewGroup rootView = (ViewGroup) inflater.inflate(R.layout.fragment1, container, false);
        Button birth = rootView.findViewById(R.id.birth);
        Date today = new Date();
        SimpleDateFormat format2 = new SimpleDateFormat("yyyy년 MM월 dd일");

        birth.setText(format2.format(today));
        birth.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                DatePickerDialog.OnDateSetListener listener = new DatePickerDialog.OnDateSetListener() {
                    @Override
                    public void onDateSet(DatePicker view, int year, int month, int dayOfMonth) {
                        birth.setText(year+"년 "+(month+1)+"월"+dayOfMonth+"일");
                    }
                };

                Calendar calendar = Calendar.getInstance();
                int mYear = calendar.get(Calendar.YEAR);
                int mMonth = calendar.get(Calendar.MONTH);
                int mDay = calendar.get(Calendar.DAY_OF_MONTH);

                DatePickerDialog dialog = new DatePickerDialog(getContext(), listener,mYear,mMonth,mDay);
                dialog.show();
            }
        });

        Button saveButton = rootView.findViewById(R.id.saveButton);
        saveButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                EditText name = rootView.findViewById(R.id.name);
                EditText age = rootView.findViewById(R.id.age);
                String data = "이름 : "+ name.getText().toString() +" 나이 : "+age.getText().toString()+
                        " 생년월일 : "+birth.getText().toString();
                Toast.makeText(getContext(), data ,Toast.LENGTH_LONG).show();
            }
        });

        return rootView;
    }
}