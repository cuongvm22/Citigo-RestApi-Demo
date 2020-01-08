from django.core.cache import cache
from product.models import Store

# add all stores from db to cache
# cache.get('stores') is a dictionary with key is storeID
def getAllStore():
	stores = Store.objects.all()
	for store in stores:
		result[store.id] = product
	cache.set("stores", result)
# return 3 nearest Store
def getTop3Distance(idProduct):
	rs = ContainDAO.getContainByDistance(idProduct)[:3]
	return rs