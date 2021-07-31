package org.techtown.mission14;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.os.Bundle;
import android.view.View;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        RecyclerView recyclerView = findViewById(R.id.recyclerView);

        GridLayoutManager gridLayoutManager = new GridLayoutManager(getApplicationContext(), 2);
        recyclerView.setLayoutManager(gridLayoutManager);

        ProductAdapter adapter = new ProductAdapter();
        adapter.setListener(new OnProductItemClickListener() {
            @Override
            public void onItemClick(ProductAdapter.ViewHolder viewHolder, View view, int position) {
                Product item = adapter.getItem(position);
                Toast.makeText(getApplicationContext(), "제품명 : " + item.getName() +"\n가격 : "+item.getPrice()+"원", Toast.LENGTH_LONG).show();
            }
        });

        adapter.addItem(new Product(R.drawable.cloth,"롱코트", 160000, "명절 기획상품"));
        adapter.addItem(new Product(R.drawable.shoes,"신발", 220000, "명절 기획상품"));
        adapter.addItem(new Product(R.drawable.sunglasses,"선글라스", 50000, "특가 상품"));
        adapter.addItem(new Product(R.drawable.glasses,"안경", 40000, "명절 기획상품"));
        adapter.addItem(new Product(R.drawable.watch,"시계", 390000, "특가 상품"));

        recyclerView.setAdapter(adapter);
    }
}