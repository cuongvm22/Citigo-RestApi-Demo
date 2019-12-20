from django.core.cache import cache
from product.services import ContainServices
from product.models import Contain

# return a contain list: for each (store object, price)
def getStoresAndPrices(idProduct):
	contains = ContainServices.getStoresAndPrices(idProduct)
	return contains

