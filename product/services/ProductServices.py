from django.core.cache import cache
from product.dao import ProductDAO

# return a id of productTitle
def getIdProductByTitle(productTitle):
	if cache.get('products')== None:
		ProductDAO.getAllProduct()
	for product in cache.get('products').values():
		if productTitle == product.title.lower():
			return product.id
	return -1

# return a product object
def getProduct(productId):
	if cache.get('products') == None:
		ProductDAO.getAllProduct()
	return cache.get('products')[productId]	
