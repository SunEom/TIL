package org.techtown.mission25;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;

public class mPhotoAdapter extends RecyclerView.Adapter<mPhotoAdapter.ViewHolder>{
    ArrayList<mPhoto> items = new ArrayList<mPhoto>();

    public void addItem(mPhoto item){
        items.add(item);
    }

    public mPhoto getItem(int position){
        return items.get(position);
    }

    public void setItem(int position, mPhoto item){
        items.set(position, item);
    }

    public void setItems(ArrayList<mPhoto> items){
        this.items = items;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(viewGroup.getContext());
        View itemView = inflater.inflate(R.layout.photo_item, viewGroup, false);

        return new ViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull mPhotoAdapter.ViewHolder holder, int position) {
        mPhoto item = items.get(position);
        holder.setItem(item);
    }

    @Override
    public int getItemCount() {
        return items.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder{
        ImageView imageView;
        TextView textView;
        TextView textView2;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);

            imageView = itemView.findViewById(R.id.imageView);
            textView = itemView.findViewById(R.id.textView3);
            textView2 = itemView.findViewById(R.id.textView4);
        }

        public void setItem(mPhoto item){
            imageView.setImageURI(item.imageUri);
            textView.setText(item.getTitle());
            textView2.setText(item.getAddedDate());
        }
    }
}
