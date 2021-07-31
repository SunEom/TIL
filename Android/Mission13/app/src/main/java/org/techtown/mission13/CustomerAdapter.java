package org.techtown.mission13;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;

public class CustomerAdapter extends RecyclerView.Adapter<CustomerAdapter.ViewHolder>{

    ArrayList<Customer> items = new ArrayList<Customer>();

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int viewType) {
        LayoutInflater layoutInflater = LayoutInflater.from(viewGroup.getContext());
        View itemView = layoutInflater.inflate(R.layout.customer_item, viewGroup, false);

        return new ViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(@NonNull CustomerAdapter.ViewHolder holder, int position) {
        Customer item = items.get(position);
        holder.setItem(item);
    }

    @Override
    public int getItemCount() {
        return items.size();
    }

    public void addItem(Customer item){
        items.add(item);
    }

    public void setItems(ArrayList<Customer> items){
        this.items = items;
    }

    public Customer getItem(int position){
        return items.get(position);
    }

    public void setItem(int position, Customer item){
        items.set(position, item);
    }

    static class ViewHolder extends RecyclerView.ViewHolder{
        TextView textView;
        TextView textView2;
        TextView textView3;

        public ViewHolder(@NonNull View itemView) {
            super(itemView);

            textView = itemView.findViewById(R.id.textView3);
            textView2 = itemView.findViewById(R.id.textView4);
            textView3 = itemView.findViewById(R.id.textView5);
        }

        public void setItem(Customer customer){
            textView.setText(customer.getName());
            textView2.setText(customer.getBirth());
            textView3.setText(customer.getMobile());
        }
    }
}
