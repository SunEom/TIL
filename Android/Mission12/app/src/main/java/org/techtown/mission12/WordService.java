package org.techtown.mission12;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.widget.Toast;

public class WordService extends Service {
    public WordService() {
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        String word = intent.getStringExtra("word");
//        Toast.makeText(this, word, Toast.LENGTH_LONG).show();
        Intent serviceIntent = new Intent(getApplicationContext(), WordReceiver.class);
        serviceIntent.putExtra("word",word);
        sendBroadcast(serviceIntent);
        return super.onStartCommand(intent, flags, startId);
    }

    @Override
    public IBinder onBind(Intent intent) {
        // TODO: Return the communication channel to the service.
        throw new UnsupportedOperationException("Not yet implemented");
    }
}