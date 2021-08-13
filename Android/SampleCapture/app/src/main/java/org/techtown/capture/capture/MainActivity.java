package org.techtown.capture.capture;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.hardware.Camera;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.Toast;

import com.yanzhenjie.permission.Action;
import com.yanzhenjie.permission.AndPermission;
import com.yanzhenjie.permission.runtime.Permission;

import java.util.List;

public class MainActivity extends AppCompatActivity {
    CameraSurfaceView cameraView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        FrameLayout previewFrame = findViewById(R.id.previewFrame);
        cameraView = new CameraSurfaceView(this);
        previewFrame.addView(cameraView);

        Button button = findViewById(R.id.button);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                takePicture();
            }
        });

        AndPermission.with(this)
                .runtime()
                .permission(
                        Permission.CAMERA,
                        Permission.READ_EXTERNAL_STORAGE,
                        Permission.WRITE_EXTERNAL_STORAGE)
                .onGranted(new Action<List<String>>() {
                    @Override
                    public void onAction(List<String> permissions) {
                        showToast("허용된 권한 개수: " +permissions.size());
                    }
                })
                .onDenied(new Action<List<String>>() {
                    @Override
                    public void onAction(List<String> permissions) {
                        showToast("거부된 권한 개수: "+permissions.size());
                    }
                })
                .start();
    }

    public void showToast(String data){
        Toast.makeText(getApplicationContext(), data, Toast.LENGTH_LONG).show();
    }

    public void takePicture(){
        cameraView.capture(new Camera.PictureCallback() {
                public void onPictureTaken ( byte[] data, Camera camera){
                    try {
                        Bitmap bitmap = BitmapFactory.decodeByteArray(data, 0, data.length);
                        String outUriStr = MediaStore.Images.Media.insertImage(
                                getContentResolver(),
                                bitmap,
                                "Captured Image",
                                "Captured Image using Camera");
                        if (outUriStr == null) {
                            Log.d("SampleCapture", "Image insert failed.");
                            return;
                        } else {
                            Uri outUri = Uri.parse(outUriStr);
                            sendBroadcast(new Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE, outUri));
                        }

                        camera.startPreview();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
        });
    }

}

class CameraSurfaceView extends SurfaceView implements SurfaceHolder.Callback{
    private SurfaceHolder mHolder;
    private Camera camera = null;

    public CameraSurfaceView(Context context){
        super(context);

        mHolder = getHolder();
        mHolder.addCallback(this);
    }

    public void surfaceCreated(SurfaceHolder holder){
        camera = Camera.open();

        try {
            camera.setPreviewDisplay(mHolder);
        } catch(Exception e){
            e.printStackTrace();
        }
    }

    public void surfaceChanged(SurfaceHolder holder, int format, int width, int height) {
        camera.startPreview();
    }

    public void surfaceDestroyed(SurfaceHolder holder){
        camera.stopPreview();
        camera.release();
        camera = null;
    }

    public boolean capture(Camera.PictureCallback handler){
        if(camera != null ){
           camera.takePicture(null, null, handler);
           return true;
        } else {
            return false;
        }
    }
}