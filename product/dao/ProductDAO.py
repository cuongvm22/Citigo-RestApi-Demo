from django.core.cache import cache
from product.models import Product

# add all product from db to cache
# cache.get('products') is a dictionary with key is id
def getAllProduct():
	products = Product.objects.all()
	result = {}
	for product in products:
		result[product.id] = product
	print(len(products))
	cache.set("products", result)
