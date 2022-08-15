import requests
import os

# using the openFDA API for drug data: https://open.fda.gov/apis/drug/drugsfda/

# Set environment variables
# api_key = os.getenv('OPEN_FDA_API_KEY')
# host_name = os.getenv('OPEN_FDA_HOST')

url ='https://api.fda.gov/drug/drugsfda.json?search=products.marketing_status:"Prescription"&limit=1'


# 1 = Prescription
# 4 = Over-the-coutner

# headers = {
# 	"X-RapidAPI-Key": api_key,
# 	"X-RapidAPI-Host": host_name
# }

response = requests.request("GET", url)#, headers=headers, params=querystring)

print(response.text)