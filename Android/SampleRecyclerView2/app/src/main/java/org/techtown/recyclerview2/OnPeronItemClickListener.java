package org.techtown.recyclerview2;

import android.view.View;

public interface OnPeronItemClickListener {
    public void onItemClick(PersonAdapter.ViewHolder holder, View view, int position);
}
