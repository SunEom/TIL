package org.techtown.mission11;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.widget.Toast;

public class NewService extends Service {
    public NewService() {
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        String word = intent.getStringExtra("word");
        Toast.makeText(this, "전달받은 단어 : " + word, Toast.LENGTH_LONG).show();

        Intent serviceIntent = new Intent(getApplicationContext(), MainActivity.class);
        serviceIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK| Intent.FLAG_ACTIVITY_SINGLE_TOP | Intent.FLAG_ACTIVITY_CLEAR_TOP);
        serviceIntent.putExtra("word", word);

        startActivity(serviceIntent);

        return super.onStartCommand(intent, flags, startId);
    }

    @Override
    public IBinder onBind(Intent intent) {
        // TODO: Return the communication channel to the service.
        throw new UnsupportedOperationException("Not yet implemented");
    }
}