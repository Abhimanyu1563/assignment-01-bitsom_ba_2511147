// OP1: insertMany() — insert all 3 documents

db.products.insertMany([
  {
    _id: "P1001",
    name: "Smartphone X",
    category: "Electronics",
    price: 30000,
    brand: "TechCorp",
    specifications: {
      warranty_years: 2,
      voltage: "220V",
      battery: "5000mAh"
    },
    ratings: [4, 5, 5, 3]
  },
  {
    _id: "P2001",
    name: "Men's T-Shirt",
    category: "Clothing",
    price: 799,
    brand: "FashionHub",
    attributes: {
      size: "L",
      fabric: "Cotton",
      color: "Black"
    },
    available_sizes: ["S", "M", "L", "XL"]
  },
  {
    _id: "P3001",
    name: "Organic Milk",
    category: "Groceries",
    price: 60,
    brand: "FarmFresh",
    details: {
      expiry_date: ISODate("2024-12-01"),
      weight: "1L",
      is_organic: true
    },
    nutrition: {
      calories: 150,
      protein: "8g",
      fat: "5g"
    }
  }
]);


// OP2: find() — Electronics with price > 20000

db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});


// OP3: find() — Groceries expiring before 2025-01-01

db.products.find({
  category: "Groceries",
  "details.expiry_date": { $lt: ISODate("2025-01-01") }
});


// OP4: updateOne() — add discount_percent field

db.products.updateOne(
  { _id: "P1001" },
  { $set: { discount_percent: 10 } }
);


// OP5: createIndex() — index on category

db.products.createIndex({ category: 1 });

// This index improves query performance when filtering by category,
// as MongoDB can quickly locate matching documents instead of scanning the entire collection.
