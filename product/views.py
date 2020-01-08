from django.shortcuts import render
from django.http import Http404
from rest_framework.views import APIView
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status
from django.http import JsonResponse
from django.core import serializers
from django.conf import settings
from product.services import ProductServices, ContainServices, StoreServices

@api_view(["GET"])
# productName is *.json
def getProduct(request,productTitle):
    try:
        # remove '.json' in productTitle
        pdTitle = productTitle.split(".")[0].lower()
        # return id - int var
        idProduct = ProductServices.getIdProductByTitle(pdTitle)
        # return object product
        product = ProductServices.getProduct(idProduct)
        # return a containList: for each (containId, stroreId, productId ,price)
        contains = ContainServices.getStoresAndPrices(idProduct)
        rs = {}

        rs["name"] = product.name
        rs["rating"] = str(product.rating)
        rs["thumburl"] = product.thumburl
        rs["infourl"] = product.infourl
        i = 0
        for contain in contains:
        	rs["store{}id".format(i+1)] = contain.storeId.id
        	rs["store{}name".format(i+1)] = contain.storeId.name
        	rs["price{}".format(i+1)] =  contain.price
        	i += 1
        rs["contains"] = StoreServices.countStores(idProduct)

        return JsonResponse(rs,json_dumps_params={'indent': 2,'ensure_ascii':False},safe=False)
    except ValueError as e:
        print(e)
        return Response(e.args[0],status.HTTP_400_BAD_REQUEST)
