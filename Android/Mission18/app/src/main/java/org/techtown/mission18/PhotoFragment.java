package org.techtown.mission18;

import android.net.Uri;
import android.os.Bundle;

import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

public class PhotoFragment extends Fragment {

    ImageView imageView;
    ImageView imageView2;

    TextView textView;
    TextView textView2;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View result = inflater.inflate(R.layout.fragment_photo, container, false);

        imageView = result.findViewById(R.id.imageView);
        imageView2 = result.findViewById(R.id.imageView2);

        textView = result.findViewById(R.id.textView3);
        textView2 = result.findViewById(R.id.textView4);

        imageView.setImageURI(Uri.parse(getArguments().getString("imageUri")));
        imageView2.setImageURI(Uri.parse(getArguments().getString("imageUri2")));

        textView.setText(getArguments().getString("date"));
        textView2.setText(getArguments().getString("date2"));

        return result;
    }
}