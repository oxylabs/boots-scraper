curl --user user:pass \
'https://realtime.oxylabs.io/v1/queries' \
-H "Content-Type: application/json" \
-d '{"source": "universal_ecommerce", "url": "https://www.boots.ie/sale?paging.index=0&paging.size=48&sortby=mostrelevant&criteria.category=sale"}'