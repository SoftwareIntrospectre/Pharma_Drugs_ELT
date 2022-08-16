import requests
import os

# using the openFDA API for drug data: https://open.fda.gov/apis/drug/drugsfda/

# Set environment variables
# api_key = os.getenv('OPEN_FDA_API_KEY')
# host_name = os.getenv('OPEN_FDA_HOST')

#url ='https://api.fda.gov/drug/drugsfda.json?search=products.marketing_status:"Prescription"&limit=1'
#url ='https://api.fda.gov/drug/drugsfda.json?limit=1'
#url = 'https://api.fda.gov/drug/drugsfda.json?count=sponsor_name'
url = 'https://api.fda.gov/drug/drugsfda.json?search=products.route:topical&count=sponsor_name'

response = requests.request("GET", url)#, headers=headers, params=querystring)

print(response.text)