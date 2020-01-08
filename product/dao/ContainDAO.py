from product.models import Contain

# return tuple contain object for each(containId, store, product, price)
def getContainByPrice(productId):
	return Contain.objects.filter(productId = productId).order_by('price')

# return tuple contain object for each(containId, store, product, price)
def getContainByDistance(productId):
	# return Contain.objects.filter(productId = productId).select_related('storeId').order_by('Store.distance')
	a = Contain.objects.filter(productId = productId).select_related('storeId').order_by('product_store.distance')
	for o in a:
		print(o.storeId.distance)

	return a

def countStores(productId):
	return len(Contain.objects.filter(productId = productId))

