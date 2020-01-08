from product.models import Contain
from product.dao import ContainDAO

# return top 3 best price
# return contain object = [id, storeObject, productsObject, price]
def getTop3Price(idProduct):
	rs = ContainDAO.getContainByPrice(idProduct)[:3]
	return rs

def getTop3Distance(idProduct):
	rs = ContainDAO.getContainByDistance(idProduct)[:3]
	return rs