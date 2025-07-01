# Otaku Shop

Otaku Shop is a simple Ruby on Rails web application for managing products, taxes, clients, and invoices (bills) for a small shop. The app allows you to:

- Manage products and assign multiple taxes to each product.
- Manage clients.
- Create invoices (bills) for clients, adding products and automatically calculating subtotals and totals with taxes.
- View, edit, and delete products, taxes, clients, and invoices.

## Requirements

- Ruby 3.x
- Rails 7.x (or 6.x if using webpacker)
- SQLite3 (default, or configure another database)
- Node.js and Yarn (if using webpacker or Rails 7 with jsbundling)
- Git (recommended)

## Setup Instructions

1. **Clone the repository:**
   ```sh
   git clone <repo-url>
   cd otaku-shop
   ```

2. **Install dependencies:**
   ```sh
   bundle install
   ```

3. **Set up the database:**
   ```sh
   rails db:create
   rails db:migrate
   ```

4. **(Optional) Seed the database with sample data:**
   ```sh
   rails db:seed
   ```

5. **Install JavaScript dependencies (if using webpacker or jsbundling):**
   ```sh
   yarn install
   ```

6. **Start the Rails server:**
   ```sh
   rails server
   ```

7. **Open your browser and go to:**
   ```
   http://localhost:3000
   ```

## Usage

- Use the navigation links on the home page to manage Products, Taxes, Clients, and Bills.
- Assign taxes to products from the Taxes section.
- Create a new bill, select a client, and add products to the bill. The app will calculate subtotals and totals including taxes automatically.

## Notes

- The app uses Rails UJS for delete links. Make sure your JavaScript is properly set up.
- All calculations for taxes and totals are handled automatically in the models.
- You can customize or extend the app as needed for your shop.

---

**Enjoy managing your otaku shop!**
