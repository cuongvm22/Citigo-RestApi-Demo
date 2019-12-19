INSTALLED_APPS = [
	'product.apps.ProductConfig',
]

# Cache with Pylibmc
servers = os.environ['MEMCACHIER_SERVERS']
username = os.environ['MEMCACHIER_USERNAME']
password = os.environ['MEMCACHIER_PASSWORD']

CACHES = {
    'default': {
        # Use pylibmc
        'BACKEND': 'django.core.cache.backends.memcached.PyLibMCCache',

        # TIMEOUT is not the connection timeout! It's the default expiration
        # timeout that should be applied to keys! Setting it to `None`
        # disables expiration.
        'TIMEOUT': None,

        'LOCATION': servers,
        # 'LOCATION': "127.0.0.1:8100",

        'OPTIONS': {
            # Use binary memcache protocol (needed for authentication)
            'binary': True,
            'username': username,
            'password': password,
            'behaviors': {
                # Enable faster IO
               'no_block': True,
               'tcp_nodelay': True,

                # Keep connection alive
               'tcp_keepalive': True,

                # Timeout settings
                'connect_timeout': 2000, # ms
                'send_timeout': 750 * 1000, # us
                'receive_timeout': 750 * 1000, # us
                '_poll_timeout': 2000, # ms

                # Better failover
                'ketama': True,
                'remove_failed': 1,
                'retry_timeout': 2,
                'dead_timeout': 30,
            }
        }
    }
}

from django.conf import settings
settings.configure(CACHES=CACHES)

# #set cache data
# from product.models import product
# from django.core.cache import cache

# def getProductDict():
# 	a = Product.objects.all()
# 	dic = {}
# 	for p in a:
# 		ap = {}
# 		ap["title"] = p.name
# 		ap["author"] = p.author
# 		ap['average rating'] = p.rating
# 		ap['quantity'] = p.quantity
# 		ap['your price'] = p.price
# 		ap['thumburl'] = p.thumburl
# 		ap['infourl'] = p.infourl
# 		dic['{}.json'.format(p.title)] = ap
# 	return dic

# dic = getProductDict()
# for (k,v) in dic.items():
# 	cache.set(k,v)

# print(cache.get("cafe.json"))
