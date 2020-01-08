from django.core.cache import cache
from product.services import ContainServices
from product.models import Contain
from product.dao import ContainDAO
# return a contain list: for each (store object, price)
def getStoresAndPrices(idProduct):
	contains = ContainServices.getStoresAndPrices(idProduct)
	return contains


def countStores(idProduct):
	numOfStores = ContainDAO.countStores(idProduct)
	return numOfStores

