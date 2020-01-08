from django.core.cache import cache
from product.services import ContainServices
from product.models import Contain
from product.dao import ContainDAO, StoreDAO
# return a contain list: for each (store object, price)
def getTop3Distance(idProduct):
	contains = StoreDAO.getStoresAndPrices(idProduct)
	return contains

# count store which contain product
def countStores(idProduct):
	numOfStores = ContainDAO.countStores(idProduct)
	return numOfStores

