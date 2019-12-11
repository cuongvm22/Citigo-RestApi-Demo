import json

class JsonData(object):
	"""docstring for JsonData"""
	def __init__(self, arg):
		with open(arg, 'r',encoding='utf-8') as handle:
			string = handle.read()
			self.data = json.loads(string)

def getJson(productName, filePath):
	data = JsonData(filePath).data
	return(data[productName])

if __name__ == '__main__':
	print(getJson('cafe.json','data/db.json'))
