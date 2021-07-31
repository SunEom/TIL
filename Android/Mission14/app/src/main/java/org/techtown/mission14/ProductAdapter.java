package org.techtown.mission14;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;

public class ProductAdapter extends RecyclerView.Adapter<ProductAdapter.ViewHolder> implements OnProductItemClickListener{
    ArrayList<Product> items = new ArrayList<Product>();
    OnProductItemClickListener listener;

    @Override
    public void onItemClick(ViewHolder viewHolder, View view, int position) {
        if(listener != null){
            listener.onItemClick(viewHolder, view, position);
        }
    }

    public void setListener(OnProductItemClickListener listener) {
        this.listener = listener;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        LayoutInflater layoutInflater = LayoutInflater.from(viewGroup.getContext());
        View itemView = layoutInflater.inflate(R.layout.product_item, viewGroup, false);

        return new ViewHolder(itemView, this);
    }

    @Override
    public void onBindViewHolder(@NonNull ProductAdapter.ViewHolder holder, int position) {
        Product item = items.get(position);
        holder.setItem(item);
    }

    @Override
    public int getItemCount() {
        return items.size();
    }

    public void addItem(Product item){
        items.add(item);
    }

    public void setItems(ArrayList<Product> items){
        this.items = items;
    }

    public Product getItem(int position){
        return items.get(position);
    }

    public void setItem(int position, Product item){
        items.set(position, item);
    }

    static class ViewHolder extends RecyclerView.ViewHolder{
        ImageView imageView;
        TextView textView;
        TextView textView2;
        TextView textView3;

        public ViewHolder(@NonNull View itemView, OnProductItemClickListener listener) {
            super(itemView);

            imageView = itemView.findViewById(R.id.imageView);
            textView = itemView.findViewById(R.id.textView);
            textView2 = itemView.findViewById(R.id.textView2);
            textView3 = itemView.findViewById(R.id.textView3);

            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    if(listener != null){
                        listener.onItemClick(ViewHolder.this, v, getAdapterPosition());
                    }
                }
            });


        }

        public void setItem(Product item){
            imageView.setImageResource(item.getImageResId());
            textView.setText(item.getName());
            textView2.setText(item.getPrice()+"원");
            textView3.setText(item.getInfo());
        }
    }
}
