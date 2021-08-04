package org.techtown.mission20;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;

public class SsrAdapter extends RecyclerView.Adapter<SsrAdapter.ViewHolder>{
    ArrayList<Article> items = new ArrayList<Article>();

    public void addItem(Article item){
        items.add(item);
    }

    public void setItems(ArrayList<Article> items){
        this.items = items;
    }

    public void setItem(int position, Article item){
        items.set(position, item);
    }

    public Article getItem(int position){
        return items.get(position);
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        LayoutInflater inflater = LayoutInflater.from(viewGroup.getContext());
        View itemView = inflater.inflate(R.layout.rss_item, viewGroup, false);

        return new ViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull SsrAdapter.ViewHolder holder, int position) {
        Article item = items.get(position);
        holder.setItem(item);
    }

    @Override
    public int getItemCount() {
        return items.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder{
        TextView textView;
        TextView textView2;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);

            textView = itemView.findViewById(R.id.textView2);
            textView2 = itemView.findViewById(R.id.textView3);
        }

        public void setItem(Article item){
            textView.setText(item.getTitle());
            textView2.setText(item.getDesc());
        }
    }
}
