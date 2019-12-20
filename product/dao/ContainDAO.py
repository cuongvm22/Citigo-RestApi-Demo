from product.models import Contain

# return tuple contain object for each(containId, store, product, price)
def getContainByProductId(productId):
	return Contain.objects.filter(productId = productId).order_by('price')