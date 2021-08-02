package org.techtown.mission17;

import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

public class CustomerInfo extends Fragment {

    TextView textView;
    TextView textView2;
    TextView textView3;


    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {

        View result = inflater.inflate(R.layout.fragment_customer_info, container, false);

        textView = result.findViewById(R.id.textView3);
        textView2 = result.findViewById(R.id.textView4);
        textView3 = result.findViewById(R.id.textView5);

        Bundle info = this.getArguments();

        textView.setText(info.getString("name"));
        textView2.setText(info.getString("mobile"));
        textView3.setText(info.getString("address"));

        return result;
    }
}