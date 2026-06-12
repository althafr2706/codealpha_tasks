# ShopDjango — E-Commerce Store

A full-featured e-commerce store built with Django, HTML, CSS, and JavaScript.

## Features
- Product listings with categories & search
- Product detail pages
- User registration & login
- Shopping cart (add, update, remove items)
- Checkout & order placement
- Order history & detail pages
- Django Admin for managing products, categories, orders

## Quick Start

### 1. Install dependencies
```bash
pip install -r requirements.txt
```

### 2. Run migrations
```bash
python manage.py migrate
```

### 3. Create a superuser (for admin access)
```bash
python manage.py createsuperuser
```

### 4. Load sample data (optional)
```bash
python manage.py shell
```
Then in the shell:
```python
from store.models import Category, Product
c = Category.objects.create(name='Electronics', slug='electronics')
Product.objects.create(name='Wireless Headphones', description='Premium sound quality.', price=79.99, stock=20, category=c)
Product.objects.create(name='USB-C Hub', description='7-in-1 hub for all your devices.', price=34.99, stock=50, category=c)
exit()
```

### 5. Start the server
```bash
python manage.py runserver
```

Visit http://127.0.0.1:8000 — your store is live!

Admin panel: http://127.0.0.1:8000/admin/

## Project Structure
```
ecommerce/         # Django project settings & URLs
store/             # Products, Cart, Orders app
users/             # Registration, login, profile app
templates/         # HTML templates
static/css/        # Stylesheet
manage.py
requirements.txt
```
