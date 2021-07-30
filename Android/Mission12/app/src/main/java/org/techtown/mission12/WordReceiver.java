package org.techtown.mission12;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

public class WordReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context context, Intent intent) {
        String word = intent.getStringExtra("word");
//        Toast.makeText(context.getApplicationContext(), "서비스로 부터 받은 단어 : " + word , Toast.LENGTH_LONG).show();

        Intent boardcastIntent = new Intent(context.getApplicationContext(), MainActivity.class);
        boardcastIntent.putExtra("word", word);
        boardcastIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_SINGLE_TOP | Intent.FLAG_ACTIVITY_CLEAR_TOP);

        context.startActivity(boardcastIntent);
    }
}