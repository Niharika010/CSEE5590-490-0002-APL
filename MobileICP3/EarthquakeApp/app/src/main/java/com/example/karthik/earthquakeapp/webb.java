package com.example.karthik.earthquakeapp;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Toast;

public class webb extends AppCompatActivity {

    WebView webView;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_webb);
        webView = (WebView)findViewById(R.id.webview1);
        WebSettings webSettings = webView.getSettings();
        Intent intent = getIntent();
        String url = intent.getStringExtra("uri");
        webSettings.setJavaScriptEnabled(true);
        webView.loadUrl(url);
    }
}
