package org.techtown.diary;

import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.FileProvider;
import androidx.fragment.app.Fragment;

import com.github.channguyen.rsv.RangeSliderView;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Date;

public class Fragment2 extends Fragment {
    private static final String TAG ="Fragment2";

    Context context;
    OnTabItemSelectedListener listener;
    OnRequestListener requestListener;

    ImageView weatherIcon;
    TextView dateTextView;
    TextView locationTextView;

    EditText contentsInput;
    ImageView pictureImageView;

    boolean isPhotoCaptured;
    boolean isPhotoFileSaved;
    boolean isPhotoCanceled;

    int selectedPhotoMenu;

    Uri uri;
    File file;
    Bitmap resultPhotoBitmap;

    int mMode = AppConstants.MODE_INSERT;
    int _id = -1;
    int weatherIndex = 0;

    RangeSliderView moodSlider;
    int moodIndex = 2;

    Note item;

    @Override
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);

        this.context = context;

        if(context instanceof OnTabItemSelectedListener){
            listener = (OnTabItemSelectedListener) context;
        }

        if(context instanceof OnRequestListener){
            requestListener = (OnRequestListener) context;
        }
    }

    @Override
    public void onDetach() {
        super.onDetach();

        if(context != null ){
            context = null;
            listener = null;
            requestListener = null;
        }
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        ViewGroup rootView = (ViewGroup) inflater.inflate(R.layout.fragment2, container, false);

        initUI(rootView);

        if(requestListener != null ){
            requestListener.onRequest("getCurrentLocation");
        }

        return rootView;
    }

    private void initUI(ViewGroup rootView){

        weatherIcon = rootView.findViewById(R.id.weatherIcon);
        locationTextView = rootView.findViewById(R.id.locationTextView);
        dateTextView = rootView.findViewById(R.id.dateTextView);

        contentsInput = rootView.findViewById(R.id.contentsInput);
        pictureImageView = rootView.findViewById(R.id.pictureImageView);
        pictureImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(isPhotoCaptured || isPhotoFileSaved){
                    showDialog(AppConstants.CONTENT_PHOTO_EX);
                } else {
                    showDialog(AppConstants.CONTENT_PHOTO);
                }
            }
        });

        Button saveButton = rootView.findViewById(R.id.saveButton);
        saveButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
              if(mMode == AppConstants.MODE_INSERT){
                  saveNote();
              } else if(mMode == AppConstants.MODE_MODIFY){
                  modifyNote();
              }

              if(listener != null){
                  listener.onTabSelected(0);
              }
            }
        });

        Button deleteButton = rootView.findViewById(R.id.deleteButton);
        deleteButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                deleteNote();

                if(listener != null ){
                    listener.onTabSelected(0);
                }
            }
        });

        Button closeButton = rootView.findViewById(R.id.closeButton);
        closeButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if(listener != null ){
                    listener.onTabSelected(0);
                }
            }
        });

        RangeSliderView sliderView = rootView.findViewById(R.id.sliderView);
        sliderView.setOnSlideListener(new RangeSliderView.OnSlideListener() {
            @Override
            public void onSlide(int index) {
                Toast.makeText(context, "moodIndex changed to "+index, Toast.LENGTH_LONG).show();
            }
        });

        sliderView.setInitialIndex(2);
    }

    private void saveNote(){
        String address = locationTextView.getText().toString();
        String contents = contentsInput.getText().toString();

        String picturePath = savePicture();

        String sql = "insert into "+ NoteDatabase.TABLE_NOTE + "(WEATHER, ADDRESS, LOCATION_X, LOCATION_Y, CONTENTS, MOOD, PICTURE) VALUES(" +
                "'"+weatherIndex+"', " +
                "'"+address+"', " +
                "'"+""+"', " +
                "'"+""+"', " +
                "'"+contents+"', " +
                "'"+moodIndex+"', " +
                "'"+picturePath+"',)";

        Log.d(TAG,"sql : "+ sql);
        NoteDatabase database = NoteDatabase.getInstance(context);
        database.execSQL(sql);
    }

    private void modifyNote(){
        if(item != null){
            String address = locationTextView.getText().toString();
            String contents = contentsInput.getText().toString();

            String picturePath = savePicture();

            String sql ="update "+NoteDatabase.TABLE_NOTE +
                    " set " +
                    " WEATHER = '" + weatherIndex +"'" +
                    " ,ADDRESS = '" +address+"'" +
                    " ,LOCATION_X = '"+""+"'"+
                    " ,LOCATION_Y = '"+""+"'"+
                    " ,CONTENTS = '"+contents+"'" +
                    " ,MOOD = '" + moodIndex+"'" +
                    " ,PICTURE = '"+picturePath+"'" +
                    " where " +
                    " _id = "+item._id;

            Log.d(TAG,"sql : "+sql);
            NoteDatabase database = NoteDatabase.getInstance(context);
            database.execSQL(sql);
        }
    }

    private void deleteNote(){
        AppConstants.println("deleteNote called.");

        if(item != null){
            String sql = "delete from "+NoteDatabase.TABLE_NOTE +
                    " where " +
                    " _id = "+item._id;
            Log.d(TAG,"sql : "+ sql);
            NoteDatabase database = NoteDatabase.getInstance(context);
            database.execSQL(sql);
        }
    }

    private String savePicture(){
        if(resultPhotoBitmap == null ){
            AppConstants.println("No picture to be saved.");
            return "";
        }

        File photoFolder = new File(AppConstants.FOLDER_PHOTO);

        if(!photoFolder.isDirectory()){
            Log.d(TAG, "creating photo folder : "+photoFolder);
            photoFolder.mkdirs();
        }

        String photoFilename = createFilename();
        String picturePath = photoFolder + File.separator + photoFilename;

        try {
            FileOutputStream outstream = new FileOutputStream(picturePath);
            resultPhotoBitmap.compress(Bitmap.CompressFormat.PNG, 100, outstream);
            outstream.close();
        } catch(Exception e){
            e.printStackTrace();
        }

        return picturePath;
    }

    public void setWeather(String data){
        if(data != null){
            if(data.equals("맑음")){
                weatherIcon.setImageResource(R.drawable.weather_1);
            } else if(data.equals("구름 조금")){
                weatherIcon.setImageResource(R.drawable.weather_2);
            } else if(data.equals("구름 많음")){
                weatherIcon.setImageResource(R.drawable.weather_3);
            } else if(data.equals("흐림")){
                weatherIcon.setImageResource(R.drawable.weather_4);
            } else if(data.equals("비")){
                weatherIcon.setImageResource(R.drawable.weather_5);
            } else if(data.equals("눈/비")){
                weatherIcon.setImageResource(R.drawable.weather_6);
            } else if(data.equals("눈")){
                weatherIcon.setImageResource(R.drawable.weather_7);
            } else {
                Log.d("Fragment2","Unknown weather string : "+data);
            }
        }
    }

    public void setAddress(String data){
        locationTextView.setText(data);
    }

    public void setDateString(String dateString){
        dateTextView.setText(dateString);
    }

    public void showDialog(int id){
        AlertDialog.Builder builder = null;

        switch(id){

            case AppConstants.CONTENT_PHOTO:
                builder = new AlertDialog.Builder(context);

                builder.setTitle("사진 메뉴 선택");
                builder.setSingleChoiceItems(R.array.array_photo, 0, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int whichButton) {
                        selectedPhotoMenu = whichButton;
                    }
                });
                builder.setPositiveButton("선택", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        if(selectedPhotoMenu == 0){
                            showPhotoCaptureActivity();
                        } else if (selectedPhotoMenu == 1){
                            showPhotoSelectionActivity();
                        }
                    }
                });
                builder.setNegativeButton("취소", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {

                    }
                });
                break;

                case AppConstants.CONTENT_PHOTO_EX:
                    builder = new AlertDialog.Builder(context);

                    builder.setTitle("사진 메뉴 선택");
                    builder.setSingleChoiceItems(R.array.array_photo_ex, 0, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int whichButton) {
                            selectedPhotoMenu = whichButton;
                        }
                    });
                    builder.setPositiveButton("선택", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            if(selectedPhotoMenu == 0){
                                showPhotoCaptureActivity();
                            } else if(selectedPhotoMenu == 1){
                                showPhotoSelectionActivity();
                            } else if(selectedPhotoMenu == 2){
                                isPhotoCanceled = true;
                                isPhotoCaptured = false;

                                pictureImageView.setImageResource(R.drawable.picture1);
                            }
                        }
                    });
                    builder.setNegativeButton("취소", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {

                        }
                    });

                    break;

            default:
                break;
        }

        AlertDialog dialog = builder.create();
        dialog.show();
    }

    public void showPhotoCaptureActivity(){
        try {
            file = createFile();
            if(file.exists()){
                file.delete();
            }

            file.createNewFile();
        } catch(Exception e){
            e.printStackTrace();
        }

        if(Build.VERSION.SDK_INT >= 24 ){
            uri = FileProvider.getUriForFile(context, BuildConfig.APPLICATION_ID, file);
        } else {
            uri = uri.fromFile(file);
        }

        Intent intent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
        intent.putExtra(MediaStore.EXTRA_OUTPUT, uri);

        startActivityForResult(intent, AppConstants.REQ_PHOTO_CAPTURE);
    }

    private File createFile(){
        String filename = createFilename();
        File outFile = new File(context.getFilesDir(), filename);
        Log.d("Main", "File path : "+outFile.getAbsolutePath());

        return outFile;
    }

    public void showPhotoSelectionActivity(){
        Intent intent = new Intent();
        intent.setType("image/*");
        intent.setAction(Intent.ACTION_GET_CONTENT);

        startActivityForResult(intent, AppConstants.REQ_PHOTO_SELECTION);
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, @Nullable Intent intent) {
        super.onActivityResult(requestCode, resultCode, intent);

        if(intent != null){
            switch(requestCode){
                case AppConstants.REQ_PHOTO_CAPTURE:
                    Log.d(TAG, "onActivityResult() for REQ_PHOTO_CAPTURE.");

                    Log.d(TAG, "resultCode : "+resultCode);

                    resultPhotoBitmap = decodeSampleBitmapFromResource(file, pictureImageView.getWidth(), pictureImageView.getHeight());
                    pictureImageView.setImageBitmap(resultPhotoBitmap);

                    break;

                case AppConstants.REQ_PHOTO_SELECTION:

                    Log.d(TAG, "onActivityResult() for REQ_PHOTO_SELECTION.");
                    Uri fileUri = intent.getData();
                    ContentResolver resolver = context.getContentResolver();

                    try {
                        InputStream inputStream = resolver.openInputStream(fileUri);
                        resultPhotoBitmap = BitmapFactory.decodeStream(inputStream);
                        pictureImageView.setImageBitmap(resultPhotoBitmap);

                        inputStream.close();
                        isPhotoCaptured = true;
                    } catch(Exception e){
                        e.printStackTrace();
                    }

                    break;
            }
        }
    }

    public static Bitmap decodeSampleBitmapFromResource(File res, int reqWidth, int reqHeight){
        final BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(res.getAbsolutePath(), options);

        options.inSampleSize = calculateInSampleSize(options, reqWidth, reqHeight);
        options.inJustDecodeBounds = false;

        return BitmapFactory.decodeFile(res.getAbsolutePath(),options);
    }

    public static int calculateInSampleSize(BitmapFactory.Options options, int reqWidth, int reqHeight){
        final int height = options.outHeight;
        final int width = options.outWidth;
        int inSampleSize = 1;

        if(height > reqHeight || width > reqWidth){
            final int halfHeight = height;
            final int halfWidth = width;
            while((halfHeight/inSampleSize) >= reqHeight && (halfWidth/inSampleSize)>=reqWidth){
                inSampleSize*=2;
            }
        }
        return  inSampleSize;
    }

    private String createFilename(){
        Date curDate = new Date();
        String curDateStr = String.valueOf(curDate.getTime());

        return curDateStr;
    }
}
