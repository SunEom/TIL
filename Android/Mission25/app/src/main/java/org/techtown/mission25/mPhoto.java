package org.techtown.mission25;

import android.net.Uri;

public class mPhoto {
    String title;
    String addedDate;
    Uri imageUri;

    public mPhoto(String title, String addedDate, Uri imageUri) {
        this.title = title;
        this.addedDate = addedDate;
        this.imageUri = imageUri;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(String addedDate) {
        this.addedDate = addedDate;
    }

    public Uri getImageUri() {
        return imageUri;
    }

    public void setImageUri(Uri imageUri) {
        this.imageUri = imageUri;
    }
}
