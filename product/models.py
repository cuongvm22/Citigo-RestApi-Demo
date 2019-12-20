from django.db import models

class Product(models.Model):
	title = models.CharField(max_length=200)
	name = models.CharField(max_length=200)
	rating = models.IntegerField()
	thumburl = models.CharField(max_length=200)
	infourl = models.CharField(max_length=200)

	def __str__(self):
		return '{} {} {} {} {}'.format(self.title, self.name, self.rating, self.thumburl, self.infourl)

class Store(models.Model):
	name = models.CharField(max_length=200)
	adress = models.CharField(max_length=200)

	def __str__(self):
		return '{} {}'.format(self.name, self.adress)


class Contain(models.Model):
	storeId = models.ForeignKey(Store)
	productId = models.ForeignKey(Product)
	price = models.IntegerField()

	def __str__(self):
		return '{} {} {}'.format(self.storeId, self.productId, self.price)
		