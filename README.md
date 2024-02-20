# Boots Scraper API

[![Oxylabs promo code](https://user-images.githubusercontent.com/129506779/250792357-8289e25e-9c36-4dc0-a5e2-2706db797bb5.png)](https://oxylabs.go2cloud.org/aff_c?offer_id=7&aff_id=877&url_id=112)

Oxylabs' [Boots Scraper](https://oxylabs.io/products/scraper-api/ecommerce/boots?utm_source=github&utm_medium=repositories&utm_campaign=product) is a data gathering solution allowing you to extract real-time information from an Boots website effortlessly. This brief guide showcases how Boots Scraper works, along with code examples to help you better understand how to use it hassle-free.

### How it works

You can get Boots results by providing your own URLs to our service. We can return the HTML for any page you like.

#### Python code example

The example below illustrates how you can get HTML of Boots page.

```python
import requests
from pprint import pprint

# Structure payload.
payload = {
    'source': 'universal_ecommerce',
    'url': 'https://www.boots.ie/sale?paging.index=0&paging.size=48&sortby=mostrelevant&criteria.category=sale'
}

# Get response.
response = requests.request(
    'POST',
    'https://realtime.oxylabs.io/v1/queries',
    auth=('user', 'pass1'),
    json=payload,
)

# Instead of response with job status and results url, this will return the
# JSON response with the result.
pprint(response.json())
```
Find code examples for other programming languages [**here**](https://github.com/oxylabs/boots-scraper/tree/main/code%20examples)

#### Output Example
```json
{
  "results": [
    {
      "content": " <!doctype HTML> <html xmlns:wairole=\"http://www.w3.org/2005/01/wai-rdf/GUIRoleTaxonomy#\"xmlns:waist ... </html>",
      "created_at": "2024-02-20 12:39:03",
      "updated_at": "2024-02-20 12:39:04",
      "page": 1,
      "url": "https://www.boots.ie/sale?paging.index=0&paging.size=48&sortby=mostrelevant&criteria.category=sale",
      "job_id": "7165686291437207553",
      "status_code": 200
    }
  ]
}
```
With our Boots Scraper, you can seamlessly extract public data from any Boots web page. Gather the exclusive product details you require, such as item availability, prices, customer reviews, or product descriptions, to scrutinize the market and keep an edge over your competition. If you encounter any queries, our support team is readily available to assist you through live chat or you can reach out to us via email at hello@oxylabs.io.