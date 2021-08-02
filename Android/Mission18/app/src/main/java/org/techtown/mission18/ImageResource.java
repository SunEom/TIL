package org.techtown.mission18;

import android.net.Uri;

public class ImageResource {
    Uri res;
    String date;

    public Uri getRes() {
        return res;
    }

    public String getDate() {
        return date;
    }

    public ImageResource(Uri res, String date) {
        this.res = res;
        this.date = date;
    }
}
