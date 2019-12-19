from django.db import models

# Create your models here.
class Picture(models.Model):
    field = models.ForeignKey(field)
    image = models.ImageField()
