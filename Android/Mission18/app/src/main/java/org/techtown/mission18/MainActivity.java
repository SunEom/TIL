package org.techtown.mission18;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.provider.ContactsContract;
import android.provider.MediaStore;
import android.util.Log;
import android.widget.ImageView;
import android.widget.TextView;

import com.yanzhenjie.permission.Action;
import com.yanzhenjie.permission.AndPermission;
import com.yanzhenjie.permission.runtime.Permission;

import java.io.File;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class MainActivity extends AppCompatActivity {

    int index = 0;

    ArrayList<ImageResource> images = new ArrayList<ImageResource>();

    TextView textView;

    PhotoFragment photoFragment;

    Handler handler = new Handler();

    public static String getDate(long milliSeconds, String dateFormat)
    {
        // Create a DateFormatter object for displaying date in specified format.
        SimpleDateFormat formatter = new SimpleDateFormat(dateFormat);

        // Create a calendar object that will convert the date and time value in milliseconds to date.
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(milliSeconds);
        return formatter.format(calendar.getTime());
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        AndPermission.with(this)
                .runtime()
                .permission(Permission.READ_EXTERNAL_STORAGE)
                .onGranted(new Action<List<String>>() {
                    @Override
                    public void onAction(List<String> data) {

                    }
                })
                .onDenied(new Action<List<String>>() {
                    @Override
                    public void onAction(List<String> data) {

                    }
                })
                .start();

        Cursor c =  getContentResolver().query(
                MediaStore.Images.Media.EXTERNAL_CONTENT_URI,  // 조회할 컬럼명
                null, // 조회할 컬럼명
                null, // 조건 절
                null, // 조건절의 파라미터
                null);// 정렬 방향

        String str = ""; // 출력할 내용을 저장할 변수
        c.moveToFirst(); // 커서를 처음위치로 이동시킴
        do {

            Long id = c.getLong(c.getColumnIndex(MediaStore.Images.Media._ID));
            String date = getDate(c.getLong
                    (c.getColumnIndex(MediaStore.Images.Media.DATE_ADDED)), "dd/MM/yyyy hh:mm");

            Uri imageUri = ContentUris.withAppendedId(MediaStore.Images.Media.EXTERNAL_CONTENT_URI,id);

            images.add(new ImageResource(imageUri , date));

        } while (c.moveToNext());//데이터가 없을 때까지반복

        textView = findViewById(R.id.textView2);
        textView.setText("1/"+images.size());

        PhotoThread thread = new PhotoThread();
        thread.start();
    }


    public class PhotoThread extends Thread{
        public void run(){
            FragmentManager fragmentManager = getSupportFragmentManager();
            for(int i=0; i<100; i++){
                handler.post(new Runnable() {
                    @Override
                    public void run() {
                        photoFragment = new PhotoFragment();

                        textView.setText(index+1 +"/"+images.size());

                        Bundle bundle = new Bundle();
                        bundle.putString("imageUri",images.get(index).getRes().toString());
                        bundle.putString("date",images.get(index).getDate());
                        bundle.putString("imageUri2",images.get((index+1)%images.size()).getRes().toString());
                        bundle.putString("date2",images.get((index+1)%images.size()).getDate());

                        photoFragment.setArguments(bundle);


                        index = (index+2)%images.size();
                        fragmentManager.beginTransaction().setCustomAnimations(R.anim.enter_to_left,R.anim.exit_to_left).replace(R.id.container, photoFragment).commit();
                    }
                });


                try{
                    Thread.sleep(5000);
                } catch (Exception e){}
            }
        }
    }

}