from django.shortcuts import render
from django.http import Http404
from rest_framework.views import APIView
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status
from django.http import JsonResponse
from django.core import serializers
from django.conf import settings
from product.jsonparse import *
import json
from product.models import Product
from django.core.cache import cache

# Create your views here.
file = 'product/data/db.json'

@api_view(["GET"])
def addProduct(heightdata):
	if len(Product.objects.all()) == 0:
		p = Product(idProduct = 1, title = 'cafe', name = 'Vinacafe', author='VINACAFE', rating=4.00, quantity=41, price=45000.00, thumburl='https://vinacafebienhoa-cms-production.s3-ap-southeast-1.amazonaws.com/iblock/b56/b56fb678d8abcbd85957eb7b27f2e587.png', infourl='https://www.kiotviet.vn/')
		p.save()
		p = Product(idProduct = 2, title = 'cozz', name = 'COZZ CANDY', author='DHG PHARMA', rating=3.00, quantity=10, price=10000.00, thumburl='http://www.dhgpharma.com.vn/images/stories/virtuemart/product/cozz%20Hop%2012.png', infourl='https://www.kiotviet.vn/')
		p.save()
		p = Product(idProduct = 3, title = 'lipton', name = 'Trà  lipton', author='Unilever', rating=2.00, quantity=10, price=40000.00, thumburl='http://htmart.org/wp-content/uploads/2018/11/18-2.jpg', infourl='https://www.kiotviet.vn/')
		p.save()
		p = Product(idProduct = 4, title = 'afc', name = 'Bánh AFC Lúa Mì', author='Kinh Đô', rating=5.00, quantity=15, price=25000.00, thumburl='https://cdn.tgdd.vn/Products/Images/3357/79550/bhx/banh-dd-afc-lua-mi-hop-200g-2-org.jpg', infourl='https://www.kiotviet.vn/')
		p.save()
		p = Product(idProduct = 5, title = 'lavie', name = 'Nước đóng chai lavie 350ml', author='Nestle', rating=4.00, quantity=22, price=5000.00, thumburl='https://www.nuocsuoi.vn/wp-content/uploads/2018/08/nuoc-khoang-lavie-350ml-0304.jpg', infourl='https://www.kiotviet.vn/')
		p.save()
		return JsonResponse({'status':'complete'})
	else:
		return JsonResponse({'status':'Data exists'})

@api_view(["GET"])
def getAllProducts(request):
	a = Product.objects.all()
	dic = {}
	for p in a:
		ap = {}
		ap["title"] = p.name
		ap["author"] = p.author
		ap['average rating'] = '\"{}\"'.format(p.rating)
		ap['quantity'] = '\"{}\"'.format(p.quantity)
		ap['your price'] = '\"{}\"'.format(p.price)
		ap['thumburl'] = p.thumburl
		ap['infourl'] = p.infourl
		dic['{}.json'.format(p.title)] = ap
	for (k,v) in dic.items():
		cache.set(k,v)
	return JsonResponse(dic, safe = False, json_dumps_params={'ensure_ascii':False})



@api_view(["GET"])
def getProduct(request,productName):
    try:
        result = cache.get(productName.lower())
        if (result == None ):
            getAllProducts(request)
            result = cache.get(productName.lower())
        return JsonResponse(result,json_dumps_params={'indent': 2,'ensure_ascii':False},safe=False)

    except ValueError as e:
        print(e)
        return Response(e.args[0],status.HTTP_400_BAD_REQUEST)
