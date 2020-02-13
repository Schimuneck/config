#!/bin/bash

wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add 

sudo apt update

sudo apt install -y zlib1g-dev

sudo apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev build-essential python-dev

cd Downloads
wget https://www.python.org/ftp/python/3.6.8/Python-3.6.8.tgz
tar -xvzf Python-3.6.8.tgz
cd Python-3.6.8/
./configure
make
make test
sudo make install
cd ..
rm -rf Python-3.6.8
rm -rf Python-3.6.8.tgz

sudo apt install tmux
sudo apt install fish
sudo apt install ruby
gem install teamocil


sudo apt install -y git
cd 
mkdir Projects
cd Projects/
git config --global user.name "Matias Schimuneck"
git config --global user.email "matias.schimuneck@blueface.com"
git config --global credential.helper cache
git clone https://schimuneck@bitbucket.org/bluefacedevs/corelibutils.git

#git fetch && git checkout ALX-3436
#git commit -am "ALX-3436 - add suicide prevention destination check"
#git push
#git checkout master
#git branch --delete ALX-3436 
#git status
#git branch


cd
sudo pip3 install virtualenv
cd Projects/corelibutils/
mkdir env
virtualenv -p python3 env
source env/bin/activate
python setup.py install
#pip install --upgrade -r requirements.txt
#Run test
python setup.py test
python -m pytest tests/
#Run app
env FLASK_APP=wsgi.py APP_ENV=local FLASK_ENV=development flask run
deactivate

wget https://download.jetbrains.com/python/pycharm-community-2019.3.2.tar.gz
cd 
tar -xvzf Downloads/pycharm-community-2019.3.2.tar.gz
cd pycharm-community-2019.3.2/bin/
PATH=$PATH:~/pycharm-community-2019.3.2/bin/
cd 
./pycharm.sh 
# Open ~/Projects/corelibutils | File->Settings->Project->Project Interpreter | Add ~/Projects/corelibutils/env/bin/python3.6

sudo apt install postgresql-server-dev-10

sudo apt install pgadmin3
#bfpostgres:tqbfjo55@bfievddb01.prod.blueface.com

cd
cd Downloads/
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.2.0-amd64.deb
sudo dpkg -i slack-desktop-4.2.0-amd64.deb
sudo apt-get install -f

git commit-am "adding cost to get_itens in subscriptions"









echo 'End'







curl -d "sip_from_user=x7284ttLRHawEFH8QqtV&sip_auth_realm=cust-ucdev-ie.blueface.com&sip_from_host=cust-ucdev-ie.blueface.com" -H "Content-Type: application/x-www-form-urlencoded" -X POST http://iwebsvcs.dev.blueface.com/callmgr/directory/

curl -d "Caller-Username=x7284ttLRHawEFH8QqtV&FreeSWITCH-Hostname=bfievfscor03&FreeSWITCH-IPv4=194.213.29.114&Channel-Name=sofia/edge-h3g-01/x7284ttLRHawEFH8QqtV%40cust-ucdev-ie.blueface.com&Unique-ID=94ffde0a-8d28-11e9-a15e-5d73e2368949&Caller-Destination-Number=988&Caller-Context=public&variable_sip_h_X-AUTH-IP=89.101.131.120&Call-Direction=inbound&variable_callmgr_customer_id=51cb012c-26c8-11e8-b1c0-9cb6d0e592c5&variable_callmgr_third_party_reference=None&variable_callmgr_reseller_id=4132e934-ebc0-4f4e-bfed-43a1c23a159c&variable_callmgr_whitelabel=blueface&variable_callmgr_domain=cust-ucdev-ie.blueface.com&variable_callmgr_sip_account_enabled=True&variable_callmgr_codec_list=PCMA&variable_callmgr_customer_mode=0&variable_callmgr_customer_uan=433182975&variable_callmgr_account_code=7tc1xz8vjj238ejumr3h&variable_callmgr_legal_intercept=False&variable_callmgr_customer_time_zone=Europe/Dublin&variable_callmgr_device_limit=3&variable_callmgr_caller_id_overwrite=0&variable_callmgr_account_info=False&variable_callmgr_mobility_enabled=False&variable_callmgr_trusted_device=False&variable_callmgr_trunk_device=False&variable_callmgr_device_id=9c9a558a-7635-4d7a-9dd5-844e267d8dba&variable_absolute_codec_string=PCMA&variable_callmgr_secure_rtp=False&variable_callmgr_fax_t38=False&variable_callmgr_country_code=US&variable_callmgr_customer_country_code=IE&variable_callmgr_account_limit=3&variable_callmgr_max_concurrency=0&variable_callmgr_moh=6748ff28-78dc-440a-9980-aa19ba91409f&variable_callmgr_recording=0&variable_callmgr_user_id=b5a367c4-14e6-42bb-869f-c8469dfd7280&variable_callmgr_caller_id_name=Agostino Pinna&variable_callmgr_user_locked=True&variable_callmgr_barring=0&variable_callmgr_caller_id_name_external=Agostino Pinna&variable_callmgr_caller_id_name_internal=Agostino Pinna&variable_callmgr_caller_id_number_external=0035315310937&variable_callmgr_caller_id_number_internal=2040&variable_callmgr_clir=False&variable_callmgr_location_id=9425fd09-a61e-4b3e-bbb8-8afbd9fec932&variable_effective_callee_id_name=Outbound Call" -H "Content-Type: application/x-www-form-urlencoded" -X POST http://localhost:5000/dialplan/

##########################################

task regular

insert raw cdr
get taks scheduler
send a task with id and date
queu billing engine
add task to raw cdr
define to route 

needs to insert cdr by myself

change id and date
send to task queu


print the raw cdr in the script



curl 'https://portal-dev.blueface.com/api/v1/quotes?customer_id=71e19710-5b23-4ff4-8694-2dadf8554093' -H 'cookie: _ga=GA1.2.1463795260.1580207254; _gid=GA1.2.595631291.1580826385; session=83a0539a-0076-47f7-8f27-c541715ca398' --compressed

curl 'https://portal-dev.blueface.com/api/v1/resellers/commissions?end_date=2020-02-05T14:23:25.775Z&fields=id,country_code,currency,inserted,last_updated,period,total,id,country_code,currency,reseller,tier,total,period,adjustments,total&limit=10&offset=0&order_by=-total&start_date=2020-01-05T14:23:25.775Z' -H 'accept-encoding: gzip, deflate, br' -H 'accept-language: en-US,en;q=0.9' -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36' -H 'accept: application/json, text/plain, */*' -H 'referer: https://portal-dev.blueface.com/billing/commission-management' -H 'authority: portal-dev.blueface.com' -H 'cookie: _ga=GA1.2.1463795260.1580207254; _gid=GA1.2.595631291.1580826385; session=83a0539a-0076-47f7-8f27-c541715ca398' --compressed

    """
    @api {get} /v1/subscriptions/<subscription_id>/items Gets the subscription items
    @apiDescription TODO
    @apiVersion 1.0.0
    @apiName get_items
    @apiGroup Subscriptions
    @apiPermission subscription_items.read:whitelabel
    @apiPermission subscription_items.read:reseller
    @apiPermission subscription_items.read:customer

    @apiHeader {String}         Authorization                                             The OAuth2 access token.

    @apiParam {UUID}            subscription_id                                           The ID of the subscription.

    @apiSuccess {Array}         items                                                     The list of subscription items
    @apiSuccess {UUID}          items.id                                                  The ID of the subscription
                                                                                          item.
    @apiSuccess {Object}        items.product                                             The product of the
                                                                                          subscription item.
    @apiSuccess {UUID}          items.product.id                                          The ID of the product.
    @apiSuccess {String}        items.product.description                                 The name of the product.
    @apiSuccess {Integer}       items.product.product_category_id                         The category ID of the product
    @apiSuccess {Integer}       items.product.max_discount                                The maximum discount available
                                                                                          for the product.
    @apiSuccess {Float}         items.product.cost                                        The cost of the product.
    @apiSuccess {Object}        items.package                                             The package of the
                                                                                          subscription item.
    @apiSuccess {UUID}          items.package.id                                          The ID of the package.
    @apiSuccess {String}        items.package.name                                        The name of the package.
    @apiSuccess {Object}        items.package.billing_package                             The billing package of the
                                                                                          subscription package.
    @apiSuccess {UUID}          items.package.billing_package.id                          The ID of the billing package.
    @apiSuccess {String}        items.package.billing_package.name                        The name of the billing
                                                                                          package.
    @apiSuccess {Boolean}       items.package.billing_package.base_package                True for package that cover
                                                                                          all destinations.
    @apiSuccess {Boolean}       items.package.billing_package.legacy_package              True if the package is legacy.
    @apiSuccess {Object}        items.package.billing_package.product                     The product of the billing
                                                                                          package.
    @apiSuccess {UUID}          items.package.billing_package.product.id                  The ID of the product.
    @apiSuccess {String}        items.package.billing_package.product.description         The name of the product.
    @apiSuccess {Integer}       items.package.billing_package.product.product_category_id The category ID of the product
    @apiSuccess {Integer}       items.package.billing_package.product.max_discount        The maximum discount available
                                                                                          for the product.
    @apiSuccess {Date}          items.payment_end_date                                    The end date of the payment.
    @apiSuccess {Integer}       items.quantity                                            The quantity of items
                                                                                          purchased.
    @apiSuccess {Integer}       discount                                                  Discount applicable to the
                                                                                          product.
    <p>Permission required: <code>subscription_items_discount.read</code> or
        <code>subscription_items_discount.update</code></p>
    @apiSuccess {DateTime}      discount_expiry                                           Expiration date for the
                                                                                          discount.
    <p>Permission required: <code>subscription_items_discount.read</code> or
        <code>subscription_items_discount.update</code></p>
    @apiSuccess {Boolean}       discount_notify                                           When True we will notify the
                                                                                          staff when this discount
                                                                                          expires.
    <p>Permission required: <code>subscription_items_discount.read</code> or
        <code>subscription_items_discount.update</code></p>

    @apiError {Array}           errors                                                    The list of errors.
    @apiError {String}          errors.code                                               The reason that the API
                                                                                          request failed.
    @apiError {String}          errors.message                                            The description of the error.
    @apiError {String}          errors.location                                           The information about the
                                                                                          context in the request that
                                                                                          failed.
    @apiError {String}          errors.field                                              The information about the
                                                                                          field in the request that
                                                                                          failed.
    """
