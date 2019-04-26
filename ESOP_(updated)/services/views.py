from django.shortcuts import render
from django.contrib.auth import authenticate, login
from django.contrib.auth import logout

from .forms import UserForm,CustomerForm,ProfileForm,HistoryForm
from .models import UserProfile, Customer, Seller, User,History
from django.http import *
import re
from django.views.decorators.csrf import csrf_exempt

# *******************************************************************************
# imports for GMAIL API
import httplib2
import os
import oauth2client
from oauth2client import client, tools,file
import base64
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from apiclient import errors, discovery
import mimetypes
from email.mime.image import MIMEImage
from email.mime.audio import MIMEAudio
from email.mime.base import MIMEBase
from base64 import urlsafe_b64encode
import datetime



SCOPES = 'https://mail.google.com/'

CLIENT_SECRET_FILE = 'client_secret.json'
APPLICATION_NAME = 'Gmail API Python Send Email'

def get_credentials():
    home_dir = os.path.expanduser('~')
    credential_dir = os.path.join(home_dir, '.credentials')
    if not os.path.exists(credential_dir):
        os.makedirs(credential_dir)
    credential_path = os.path.join(credential_dir,'gmail-python-email-send.json')
    store = oauth2client.file.Storage(credential_path)
    credentials = store.get()
    if not credentials or credentials.invalid:
        flow = client.flow_from_clientsecrets(CLIENT_SECRET_FILE, SCOPES)
        flow.user_agent = APPLICATION_NAME
        credentials = tools.run_flow(flow, store)
        print('Storing credentials to ' + credential_path)
    return credentials

def SendMessage(sender, to, subject, msgHtml, msgPlain, attachmentFile=None):
    credentials = get_credentials()
    http = credentials.authorize(httplib2.Http())
    service = discovery.build('gmail', 'v1', http=http)
    if attachmentFile:
        message1 = createMessageWithAttachment(sender, to, subject, msgHtml, msgPlain, attachmentFile)
    else: 
        message1 = CreateMessageHtml(sender, to, subject, msgHtml, msgPlain)
    result = SendMessageInternal(service, "me", message1)
    print(result)
    print(result['labelIds'])
    print(len(result['labelIds']))
    if len(result['labelIds'])>1:
    	return "OK"
    return "NOT OK"

def SendMessageInternal(service, user_id, message):
    try:
        message = (service.users().messages().send(userId=user_id, body=message).execute())
        print('Message Id: %s' % message['id'])
        return message
    except errors.HttpError as error:
        print('An error occurred: %s' % error)
        return "Error"
    return "OK"

def CreateMessageHtml(sender, to, subject, msgHtml, msgPlain):
    msg = MIMEMultipart('alternative')
    msg['Subject'] = subject
    msg['From'] = sender
    msg['To'] = to
    msg.attach(MIMEText(msgPlain, 'plain'))
    msg.attach(MIMEText(msgHtml, 'html'))
    enc = urlsafe_b64encode(msg.as_bytes())
    return {'raw': enc.decode()}

def createMessageWithAttachment(sender, to, subject, msgHtml, msgPlain, attachmentFile):
    """Create a message for an email.

    Args:
      sender: Email address of the sender.
      to: Email address of the receiver.
      subject: The subject of the email message.
      msgHtml: Html message to be sent
      msgPlain: Alternative plain text message for older email clients          
      attachmentFile: The path to the file to be attached.

    Returns:
      An object containing a base64url encoded email object.
    """
    message = MIMEMultipart('mixed')
    message['to'] = to
    message['from'] = sender
    message['subject'] = subject

    messageA = MIMEMultipart('alternative')
    messageR = MIMEMultipart('related')

    messageR.attach(MIMEText(msgHtml, 'html'))
    messageA.attach(MIMEText(msgPlain, 'plain'))
    messageA.attach(messageR)

    message.attach(messageA)

    print("create_message_with_attachment: file: %s" % attachmentFile)
    content_type, encoding = mimetypes.guess_type(attachmentFile)

    if content_type is None or encoding is not None:
        content_type = 'application/octet-stream'
    main_type, sub_type = content_type.split('/', 1)
    if main_type == 'text':
        fp = open(attachmentFile, 'rb')
        msg = MIMEText(fp.read(), _subtype=sub_type)
        fp.close()
    elif main_type == 'image':
        fp = open(attachmentFile, 'rb')
        msg = MIMEImage(fp.read(), _subtype=sub_type)
        fp.close()
    elif main_type == 'audio':
        fp = open(attachmentFile, 'rb')
        msg = MIMEAudio(fp.read(), _subtype=sub_type)
        fp.close()
    else:
        fp = open(attachmentFile, 'rb')
        msg = MIMEBase(main_type, sub_type)
        msg.set_payload(fp.read())
        fp.close()
    filename = os.path.basename(attachmentFile)
    msg.add_header('Content-Disposition', 'attachment', filename=filename)
    message.attach(msg)

    return {'raw': base64.urlsafe_b64encode(message.as_string())}


# ******************************************************************************************************************************************






# Create your views here.
def register(request):

    # form = UserForm(request.POST or None)
    # #return render(request, 'services/register.html', {'error_message': form})

    # if form.is_valid():
    #     user = form.save(commit=False)
    #     username = form.cleaned_data['username']
    #     password = form.cleaned_data['password']


    #     #password2 = form.cleaned_data['password2']
    #     if password == password:

    #         email = form.cleaned_data['email']
    #         user.set_password(password)
    #         user.username = username
    #         user.email = email
    #         user.is_active = True
    #         user.save()
    #         request.session['username'] = username
    #         user = authenticate(username = username, password = password)
    #     else :
    return render(request, 'services/register.html')


    #     if user is not None:
    #         if user.is_active:
    #             login(request, user)
    #             return render(request, 'services/index.html')
    # else:
    #     context = {
    #         "form" : form,
    #     }


    #     return render(request, 'services/register.html', context)

def logout_user(request):

    logout(request)
    try:
       	# del request.session['username']
       	request.session['username'] = None
    except KeyError:
        pass
    #logout(request)
    # form = UserForm(request.POST or None)
    # context = {
    #     "form": form,
    # }
    
    return render(request,'services/login.html') 


def login_user(request):

	if 'username' not in request.session:
		request.session['username'] = None

	if request.session['username'] != None:
		return render(request,'services/index.html')

	if request.method == "POST":
		username = request.POST['username']
		password = request.POST['password']
		user = authenticate(username = username, password = password)
		if user is not None:
			if user.is_active:
				login(request, user)
				request.session['username'] = username
				u = request.user
				user_role = UserProfile.objects.filter(id = u.id)
				return render(request, 'services/index.html', {'user_role': user_role,'username':username})
			else:
				return render(request,'services/login.html', {'error_message': 'Your account has been disabled'})
		else:
			return render(request, 'services/login.html', {'error_message': 'Invalid login'})

	request.session['username'] = None  
	return render(request, 'services/login.html')




def index(request):
	if 'username' not in request.session:
		request.session['username'] = None

	if request.session['username'] != None:
		return render(request,'services/index.html')
	else:
		username = request.session['username']
		return render(request,'services/login.html')


def barber(request):
	if 'username' not in request.session:
		request.session['username'] = None
	if request.session['username'] != None:
		return render(request,'services/about.html')
	else :
		return render(request,'services/login.html')


def laundary(request):
	if 'username' not in request.session:
		request.session['username'] = None
	if request.session['username'] != None:
		return render(request,'services/services.html')
	else :
		return render(request,'services/login.html')

def mbs(request):
	if 'username' not in request.session:
		request.session['username'] = None
	if request.session['username'] != None:
		return render(request,'services/restro.html')
	else :
		return render(request,'services/login.html')

def profile(request):
	if 'username' not in request.session:
		request.session['username'] = None
	if request.session['username'] != None:
		id = User.objects.filter(username = request.session['username'])
		id = id[0]
		if Customer.objects.filter(username = id).exists():
			user = Customer.objects.get(username = id)
			first_name = user.first_name
			last_name = user.last_name
			email = user.email
			ref_ids = []
			if History.objects.filter(user = request.session['username']).exists():
				for orders in History.objects.filter(user = request.session['username']):
					ref_ids.append(orders.ref_id)

			print(len(ref_ids))
			phone = user.phone
			address = user.address
			return render(request, 'services/profile.html', {'orders':ref_ids,'n_orders': len(ref_ids),'first_name':first_name,'last_name':last_name,'email':email,'phone':phone,'address':address})
		else:
			first_name = ''
			last_name = ''
			email = ''
			phone = ''
			address = ''
			return render(request, 'services/profile.html', {'first_name':first_name,'last_name':last_name,'email':email,'phone':phone,'address':address})
	else:
		print('Yes')
		return render(request,'services/login.html')

def erick(request):
	if 'username' not in request.session:
		request.session['username'] = None
	if request.session['username'] != None:
		return render(request,'services/erick.html')
	else :
		return render(request,'services/login.html')
def meat(request):
	if 'username' not in request.session:
		request.session['username'] = None
	if request.session['username'] != None:
		return render(request,'services/meat_eat.html')
	else :
		return render(request,'services/login.html')

# ajax functions
@csrf_exempt 
def validate_username(request):
	username = request.POST['str']
	
	data = {
	    'is_taken': User.objects.filter(username=username).exists()
	}
	return JsonResponse(data)

@csrf_exempt
def reg_username(request):
	
	username = request.POST['str']
	
	length = (len(username) >= 4)
	data = {
	    'is_taken': User.objects.filter(username=username).exists(),
	    'alnum': (username.isalnum() and length)
	}
	return JsonResponse(data)

@csrf_exempt
def reg_email(request):
	
	email = request.POST['str']
	true = 0
	present = 0
	if len(email) > 7:
		match = re.match('^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$', email)
		if match != None:
			true = 1
	
	present = User.objects.filter(email=email).exists()
	data = {
	    'email':true,
	    'present':present
	}
	return JsonResponse(data)

@csrf_exempt
def reg_password(request):
	
	st = request.POST['str']
	password = st.split(',')
	true = 0
	if (password[0] == password[1]) and (len(password[0])>=8) and (len(password[1])>=8):
		true = 1
	
	data = {
	    'password': true
	    
	}
	return JsonResponse(data)

@csrf_exempt
def reg_submit(request):
	if request.session['username'] != None:
		return render(request,'services/index.html')

	form = UserForm()
	user = form.save(commit = False)


	elem = request.POST['str']
	added = 0
	
	elem = elem.split(',')
	username = elem[0]
	email = elem[1]
	password = elem[2]
	role = elem[3]

	
	data = {
	    'is_taken': User.objects.filter(username=username).exists()
	}
	# print(username)
	if data['is_taken']:
		added=0
	else:
		user.username = username
		user.set_password(password)
		user.email = email
		user.is_active = True
		user.save()
		added=1
	data={
	"isAdded":added
	}

	if role=='customer':
		user = User.objects.filter(username = username)
		id = user[0]
		form = ProfileForm()

		profile = form.save(commit = False)
		profile.username = id
		profile.user = username
		profile.email = email
		profile.save()


	
	return JsonResponse(data)


def update_profile(request):

	if request.method == "POST":
		form = ProfileForm()

		profile = form.save(commit = False)
		username = request.POST['username']

		user = User.objects.filter(username = username)
		print(user)
		id = user[0]
		first_name = request.POST['first_name']
		last_name = request.POST['last_name']
		mobile = request.POST['mobile'] 
		if len(str(mobile))==10:        
			mobile = '+91'+mobile
		email = request.POST['email']
		address = request.POST['address']
		print(username)
		if not Customer.objects.filter(username = id).exists():
			profile.username = id
			profile.user = username
			profile.first_name = first_name
			profile.last_name = last_name
			profile.phone = mobile
			profile.email = email
			profile.address = address
			profile.save()

		elif Customer.objects.filter(username = id).exists():
			print('NO')
			p = Customer.objects.get(user=username)
			p.user = username
			p.first_name = first_name
			p.last_name =last_name
			p.phone = mobile
			p.email = email
			p.address = address
			p.save()

	return render(request,'services/index.html')


def payment(request):
	val = "hello"
	if request.method == "POST":
		val = request.POST.get('temp_sub')
	
	print(val)

	s = val.split(' ')
	print(s)

	items = []
	t_amount = 0
	str_item = ''
	for i in range(len(s)-1):
		x = s[i].split(',')
		st = str(x[0])+" x "+str(x[1])
		str_item += str(x[0])+"-"+str(x[1])+","
		items.append(st)
		t_amount += int(x[2])


	
	return render(request,'services/payment.html',{'order':t_amount,'items':items,'s_items':str_item})

def mail_pay(request):
	st = request.POST.get('str')
	print(st)
	s = st.split(" ")


	

	now = datetime.datetime.now()

	name = s[0]
	amt = s[1]
	ref_id = s[2]
	date = str(now)
	items = s[3]

	user = User.objects.filter(username = name)
	print(user)
	id = user[0]

	form = HistoryForm()

	history = form.save(commit = False)

	history.username = id
	history.user = name
	history.amount = amt
	history.date = date
	history.items = items
	history.ref_id = ref_id

	history.save()





	print(st+" "+str(now))
	user = User.objects.get(username = name)
	mail_id = user.email
	sender = "esopservices100@gmail.com"
	to = str(mail_id)
	subject = 'ESOP: Your ORDER'
	msgHtml = 'Hi '+name+",\nAmount: "+amt+"\nRef. ID: "+ref_id+"\nTime: "+date+"\n\nThank You for using our services. Have a good time."
	msgPlain = "Sent from ESOP.INC Co-founders- (Praveen,Abhinav,Bhadwa_Aayush_aka_Nikku)"
	print(msgHtml)
	x = SendMessage(sender, to, subject, msgHtml, msgPlain)
	# print(st)
	data={
		"mail":1,
		"pay":1
	}


	return JsonResponse(data)

@csrf_exempt
def get_items(request):
	ref_id = request.POST['str']
	order = History.objects.get(ref_id = ref_id)

	
	amount = order.amount
	order = order.items
	print("inside")
	print("hi: ",ref_id)
	print(order)

	data = {
		'items':order,
		'amount':amount
	}
	return JsonResponse(data)