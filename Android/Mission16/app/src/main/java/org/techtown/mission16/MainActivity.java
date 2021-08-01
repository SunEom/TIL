package org.techtown.mission16;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.text.Layout;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.google.android.material.floatingactionbutton.FloatingActionButton;

public class MainActivity extends AppCompatActivity {
    boolean isPanelOpen = true;

    EditText editText;
    WebView webView;
    LinearLayout layout;
    FloatingActionButton floatingActionButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        layout = findViewById(R.id.panel);
        floatingActionButton = findViewById(R.id.floatingActionButton);
        editText = findViewById(R.id.editText);

        webView = findViewById(R.id.webView);
        WebSettings webSettings = webView.getSettings();
        webSettings.setJavaScriptEnabled(true);
        webView.setWebViewClient(new ViewClient());

        Button button = findViewById(R.id.button);
        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                InputMethodManager inputMethodManager = (InputMethodManager) getSystemService(INPUT_METHOD_SERVICE);
                inputMethodManager.hideSoftInputFromWindow(getCurrentFocus().getWindowToken(),0);
                hidePanel();
                webView.loadUrl(editText.getText().toString());
            }
        });

        floatingActionButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                showPanel();
            }
        });
    }

    private void hidePanel(){
        Animation anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.hide_panel);
        layout.startAnimation(anim);
        layout.setVisibility(View.GONE);
        isPanelOpen = false;
        showFloatingButton();
    }

    private void showPanel(){
        Animation anim = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.show_panel);
        layout.startAnimation(anim);
        layout.setVisibility(View.VISIBLE);
        isPanelOpen = true;
        hideFloatingButton();
    }

    private void showFloatingButton(){
        floatingActionButton.setVisibility(View.VISIBLE);
    }

    private void hideFloatingButton(){
        floatingActionButton.setVisibility(View.GONE);
    }

    private class ViewClient extends WebViewClient{
        @Override
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            webView.loadUrl(url);

            return true;
        }
    }
}