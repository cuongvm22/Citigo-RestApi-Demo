from product.models import Contain
from product.dao import ContainDAO

# return top 3 best price
# return contain object = [id, storeObject, productsObject, price]
def getStoresAndPrices(idProduct):
	rs = ContainDAO.getContainByProductId(idProduct)[:3]
	return rs