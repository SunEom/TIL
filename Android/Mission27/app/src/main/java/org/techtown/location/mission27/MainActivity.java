package org.techtown.location.mission27;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import android.widget.Toast;

import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapsInitializer;
import com.google.android.gms.maps.OnMapReadyCallback;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.yanzhenjie.permission.Action;
import com.yanzhenjie.permission.AndPermission;
import com.yanzhenjie.permission.runtime.Permission;

import java.util.List;

public class MainActivity extends AppCompatActivity {

    SupportMapFragment mapFragment;
    GoogleMap map;

    GPSListener listener;
    LocationManager manager;

    MarkerOptions friendMarker;
    MarkerOptions friendMarker2;

    LatLng friendLocation1 = new LatLng(37.5496, 126.8683);
    LatLng friendLocation2 = new LatLng(37.5400, 126.876119);

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        AndPermission.with(this)
                .runtime()
                .permission(Permission.ACCESS_COARSE_LOCATION, Permission.ACCESS_FINE_LOCATION)
                .onGranted(new Action<List<String>>() {
                    @Override
                    public void onAction(List<String> data) {
                        Toast.makeText(getApplicationContext(), "허용된 권한의 개수 : "+data.size(),Toast.LENGTH_LONG).show();
                    }
                })
                .onDenied(new Action<List<String>>() {
                    @Override
                    public void onAction(List<String> data) {
                        Toast.makeText(getApplicationContext(), "거부된 권한의 개수 : "+data.size(),Toast.LENGTH_LONG).show();
                    }
                })
                .start();

        mapFragment = (SupportMapFragment) getSupportFragmentManager().findFragmentById(R.id.map);
        mapFragment.getMapAsync(new OnMapReadyCallback() {
            @Override
            public void onMapReady(@NonNull GoogleMap googleMap) {
                map = googleMap;
            }
        });

        try{
            MapsInitializer.initialize(this);
        } catch(Exception e){
            e.printStackTrace();
        }

        startLocationService();

    }

    public void startLocationService(){
        try{
            listener = new GPSListener();

            manager = (LocationManager) getSystemService(Context.LOCATION_SERVICE);
            manager.requestLocationUpdates(LocationManager.GPS_PROVIDER,10000, 0, listener);
        } catch(SecurityException e){
            e.printStackTrace();
        }
    }

    class GPSListener implements LocationListener{
        @Override
        public void onLocationChanged(@NonNull Location location) {
            Double latitude = location.getLatitude();
            Double longitude = location.getLongitude();

            showCurrentLocation(latitude,longitude);
        }

        @Override
        public void onStatusChanged(String provider, int status, Bundle extras) {

        }

        @Override
        public void onProviderEnabled(@NonNull String provider) {

        }

        @Override
        public void onProviderDisabled(@NonNull String provider) {

        }
    }

    private void showCurrentLocation(Double latitude, Double longitude){
        LatLng curPos = new LatLng(latitude, longitude);
        map.animateCamera(CameraUpdateFactory.newLatLngZoom(curPos,15));

        map.setMyLocationEnabled(true);



        friendMarker = new MarkerOptions();
        friendMarker.position(friendLocation1);
        friendMarker.title("친구1");
        friendMarker.icon(BitmapDescriptorFactory.fromResource(R.drawable.friend));

        friendMarker2 = new MarkerOptions();
        friendMarker2.position(friendLocation2);
        friendMarker2.title("친구2");
        friendMarker2.icon(BitmapDescriptorFactory.fromResource(R.drawable.friend));

        map.addMarker(friendMarker);
        map.addMarker(friendMarker2);

        map.setOnMarkerClickListener(new GoogleMap.OnMarkerClickListener() {
            @Override
            public boolean onMarkerClick(@NonNull Marker marker) {
                Log.d("Marker",marker.getTitle());
                if (marker.getTitle().equals("친구1")){
                    Toast.makeText(getApplicationContext(), "친구 1의 위치입니다.",Toast.LENGTH_LONG).show();
                }else if(marker.getTitle().equals("친구2")){
                    Toast.makeText(getApplicationContext(), "친구 2의 위치입니다.",Toast.LENGTH_LONG).show();
                }
                return true;
            }
        });
    }
}
