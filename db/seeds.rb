# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
client1=Client.new(name:'Juan', lastname:'Gutierrez', rif:'E816343626',type_client:'Final')
client1.save! if client1.valid?
client2=Client.new(name:'Pedro', lastname:'Hernandez', rif:'V129921796',type_client:'Final')
client2.save! if client2.valid?
client3=Client.new(name:'Jose', lastname:'Gonzalez', rif:'V062149813',type_client:'Final')
client3.save! if client3.valid?
client4=Client.new(name:'Ana', lastname:'Rodriguez', rif:'V115463183',type_client:'Final')
client4.save! if client4.valid?
client5=Client.new(name:'Maria', lastname:'Garcia', rif:'V189242944',type_client:'Final')
client5.save! if client5.valid?
client6=Client.new(name:'Carlos', lastname:'Gutierrez', rif:'E816380629',type_client:'Final')
client6.save! if client6.valid?
client7=Client.new(name:'Antonio', lastname:'Hernandez', rif:'V129940553',type_client:'Final')
client7.save! if client7.valid?
client8=Client.new(name:'Fernando', lastname:'Gonzalez', rif:'V062144510',type_client:'Final')
client8.save! if client8.valid?
client9=Client.new(name:'Josefina', lastname:'Rodriguez', rif:'V115443182',type_client:'Final')
client9.save! if client9.valid?
client10=Client.new(name:'Carla', lastname:'Garcia', rif:'V189243240',type_client:'Final')
client10.save! if client10.valid?
client11=Client.new(name:'Marly', lastname:'Gutierrez', rif:'E814545620',type_client:'Final')
client11.save! if client11.valid?
client12=Client.new(name:'Ana', lastname:'Hernandez', rif:'V129946799',type_client:'Final')
client12.save! if client12.valid?
client13=Client.new(name:'Patricia', lastname:'Gonzalez', rif:'V066749815',type_client:'Final')
client13.save! if client13.valid?
client14=Client.new(name:'Teresa', lastname:'Rodriguez', rif:'V115783188',type_client:'Final')
client14.save! if client14.valid?
client15=Client.new(name:'Pedro', lastname:'Garcia', rif:'V189289940',type_client:'Final')
client15.save! if client15.valid?
client16=Client.new(name:'Aerocav', lastname:'CA', rif:'J306258698',type_client:'NVOCC')
client16.save! if client16.valid?
client17=Client.new(name:'SSL', lastname:'CA', rif:'J001614141',type_client:'NVOCC')
client17.save! if client17.valid?
client18=Client.new(name:'ATM', lastname:'SA', rif:'J305878277',type_client:'NVOCC')
client18.save! if client18.valid?
puts"Cargo Client"

company1=Company.new(company_name:'AGEMAR', rif:'J070060840', status:'OnGoing',type_company:'Naviera')
company1.save! if company1.valid?
company2=Company.new(company_name:'CONAVEN', rif:'J075433246', status:'OnGoing',type_company:'Naviera')
company2.save! if company2.valid?
company3=Company.new(company_name:'CCNI', rif:'J306559949', status:'OnGoing',type_company:'Naviera')
company3.save! if company3.valid?
company4=Company.new(company_name:'Aerocav', rif:'J306258698', status:'OnGoing',type_company:'NVOCC')
company4.save! if company4.valid?
company5=Company.new(company_name:'SSL', rif:'J001614141', status:'OnGoing',type_company:'NVOCC')
company5.save! if company5.valid?
company6=Company.new(company_name:'ATM', rif:'J305878277', status:'OnGoing',type_company:'NVOCC')
company6.save! if company6.valid?
puts"Cargo Company"

ships1=Ship.create(name:'Valentino', imo:'9195872', status: 'OnWay', type_ship: 'Portacontenedores')
ships2=Ship.create(name:'Vibrador', imo:'7372969', status: 'OnWay', type_ship: 'Portacontenedores')
ships3=Ship.create(name:'Monoco', imo:'9725055', status: 'OnWay', type_ship: 'Portacontenedores')
ships4=Ship.create(name:'Hope', imo:'6609212', status: 'OnWay', type_ship: 'Portacontenedores')
ships5=Ship.create(name:'Epidamn', imo:'8120595', status: 'OnWay', type_ship: 'Portacontenedores')
ships6=Ship.create(name:'Edarte I', imo:'7033123', status: 'OnWay', type_ship: 'Portacontenedores')
ships7=Ship.create(name:'Elbertor', imo:'8818075', status: 'OnWay', type_ship: 'Portacontenedores')
puts"Cargo  Ship"
Ship.where(id: 1).update(:company => Company.where(company_name: 'CONAVEN').first)
Ship.where(id: 2).update(:company => Company.where(company_name: 'AGEMAR').first)
Ship.where(id: 3).update(:company => Company.where(company_name: 'CCNI').first)
Ship.where(id: 4).update(:company => Company.where(company_name: 'AGEMAR').first)
Ship.where(id: 5).update(:company => Company.where(company_name: 'CONAVEN').first)
Ship.where(id: 6).update(:company => Company.where(company_name: 'AGEMAR').first)
Ship.where(id: 7).update(:company => Company.where(company_name: 'CCNI').first)
puts"Cargo  Ship Foreing Key"

trips1=Trip.create(embarking_country:'Venezuela', embarking_date:'2017-04-30 15:33:58.157819',
	disembarking_country:'United States', disembarking_date: '2017-06-09 15:33:58.157819' )
trips2=Trip.create(embarking_country:'Venezuela', embarking_date:'2017-03-23 15:33:58.157819',
	disembarking_country:'Canada', disembarking_date: '2017-07-23 15:33:58.157819' )
trips3=Trip.create(embarking_country:'Canada', embarking_date:'2017-05-12 15:33:58.157819',
	disembarking_country:'France', disembarking_date: '2017-06-14 15:33:58.157819' )
trips4=Trip.create(embarking_country:'France', embarking_date:'2017-02-12 15:33:58.157819',
	disembarking_country:'Peru', disembarking_date: '2017-07-14 15:33:58.157819' )
trips5=Trip.create(embarking_country:'Brazil', embarking_date:'2017-08-30 15:33:58.157819',
	disembarking_country:'Brazil', disembarking_date: '2017-10-30 15:33:58.157819' )
trips6=Trip.create(embarking_country:'United States', embarking_date:'2017-11-01 15:33:58.157819',
	disembarking_country:'Brazil', disembarking_date: '2017-12-23 15:33:58.157819' )
trips7=Trip.create(embarking_country:'Peru', embarking_date:'2017-07-11 15:33:58.157819',
	disembarking_country:'Peru', disembarking_date: '2017-09-16 15:33:58.157819' )
puts"Cargo Trip"
Trip.where(id: 1).update(:ship => Ship.where(imo: '9195872').first)
Trip.where(id: 2).update(:ship => Ship.where(imo:'7372969').first)
Trip.where(id: 3).update(:ship => Ship.where(imo:'9725055').first)
Trip.where(id: 4).update(:ship => Ship.where(imo:'6609212').first)
Trip.where(id: 5).update(:ship => Ship.where(imo:'8120595').first)
Trip.where(id: 6).update(:ship => Ship.where(imo:'7033123').first)
Trip.where(id: 7).update(:ship => Ship.where(imo:'8818075').first)
puts"Cargo Trip Foreing Key"

containers1=Container.create(type_container:'Dryvan Std',bic:'ASCU1023241')
containers2=Container.create(type_container:'Dryvan High',bic:'ATSU2345267')
containers3=Container.create(type_container:'Dryvan Std',bic:'AUSU1872434')
containers4=Container.create(type_container:'Dryvan Std',bic:'ASCU8723458')
containers5=Container.create(type_container:'Reefer Std',bic:'ASCU7634253')
containers6=Container.create(type_container:'Reefer High',bic:'ATSU8725367')
containers7=Container.create(type_container:'Dryvan Std',bic:'AUSU7354643')
containers8=Container.create(type_container:'Conair Std',bic:'ASCU7453722')
containers9=Container.create(type_container:'Reefer Std',bic:'ATSU6578349')
containers10=Container.create(type_container:'Conair High',bic:'AUSU8436284')
containers11=Container.create(type_container:'Dryvan Std',bic:'ATSU5463828')
containers12=Container.create(type_container:'Dryvan High',bic:'BTSU2345267')
containers13=Container.create(type_container:'Dryvan Std',bic:'BUSU1872434')
containers14=Container.create(type_container:'Dryvan Std',bic:'BSCU8723458')
containers15=Container.create(type_container:'Reefer Std',bic:'BSCU7634253')
containers16=Container.create(type_container:'Reefer High',bic:'BTSU8725367')
containers17=Container.create(type_container:'Dryvan Std',bic:'BUSU7354643')
containers18=Container.create(type_container:'Conair Std',bic:'BSCU7453722')
containers19=Container.create(type_container:'Reefer Std',bic:'BTSU6578349')
containers20=Container.create(type_container:'Conair High',bic:'BUSU8436284')
containers21=Container.create(type_container:'Dryvan Std',bic:'BTSU5463828')
puts"Cargo Container"
Container.where(bic: 'ASCU1023241').update(:company => Company.where(company_name: 'CONAVEN').first,:trip => Trip.where(embarking_country: 'Venezuela').first)
Container.where(bic: 'ATSU2345267').update(:company => Company.where(company_name: 'CCNI').first,:trip => Trip.where(embarking_country: 'United States').first)
Container.where(bic: 'AUSU1872434').update(:company => Company.where(company_name: 'AGEMAR').first,:trip => Trip.where(embarking_country: 'Brazil').first)
Container.where(bic: 'ASCU8723458').update(:company => Company.where(company_name: 'CONAVEN').first,:trip => Trip.where(embarking_country: 'Venezuela').first)
Container.where(bic: 'ASCU7634253').update(:company => Company.where(company_name: 'CCNI').first,:trip => Trip.where(embarking_country: 'United States').first)
Container.where(bic: 'ATSU8725367').update(:company => Company.where(company_name: 'CONAVEN').first,:trip => Trip.where(embarking_country: 'Canada').first)
Container.where(bic: 'AUSU7354643').update(:company => Company.where(company_name: 'CCNI').first,:trip => Trip.where(embarking_country: 'Peru').first)
Container.where(bic: 'ASCU7453722').update(:company => Company.where(company_name: 'AGEMAR').first,:trip => Trip.where(embarking_country: 'Brazil').first)
Container.where(bic: 'ATSU6578349').update(:company => Company.where(company_name: 'AGEMAR').first,:trip => Trip.where(embarking_country: 'France').first)
Container.where(bic: 'AUSU8436284').update(:company => Company.where(company_name: 'CONAVEN').first,:trip => Trip.where(embarking_country: 'Peru').first)
Container.where(bic: 'ATSU5463828').update(:company => Company.where(company_name: 'CONAVEN').first,:trip => Trip.where(embarking_country: 'Venezuela').first)
Container.where(bic: 'BTSU2345267').update(:company => Company.where(company_name: 'CCNI').first,:trip => Trip.where(embarking_country: 'United States').first)
Container.where(bic: 'BUSU1872434').update(:company => Company.where(company_name: 'AGEMAR').first,:trip => Trip.where(embarking_country: 'Brazil').first)
Container.where(bic: 'BSCU8723458').update(:company => Company.where(company_name: 'CONAVEN').first,:trip => Trip.where(embarking_country: 'Venezuela').first)
Container.where(bic: 'BSCU7634253').update(:company => Company.where(company_name: 'CCNI').first,:trip => Trip.where(embarking_country: 'United States').first)
Container.where(bic: 'BTSU8725367').update(:company => Company.where(company_name: 'CONAVEN').first,:trip => Trip.where(embarking_country: 'Canada').first)
Container.where(bic: 'BUSU7354643').update(:company => Company.where(company_name: 'CCNI').first,:trip => Trip.where(embarking_country: 'Peru').first)
Container.where(bic: 'BSCU7453722').update(:company => Company.where(company_name: 'AGEMAR').first,:trip => Trip.where(embarking_country: 'Brazil').first)
Container.where(bic: 'BTSU6578349').update(:company => Company.where(company_name: 'AGEMAR').first,:trip => Trip.where(embarking_country: 'France').first)
Container.where(bic: 'BUSU8436284').update(:company => Company.where(company_name: 'CONAVEN').first,:trip => Trip.where(embarking_country: 'Peru').first)
Container.where(bic: 'BTSU5463828').update(:company => Company.where(company_name: 'CONAVEN').first,:trip => Trip.where(embarking_country: 'Venezuela').first)
puts"Cargo Container Foreing Key" 


BillOfLanding.create(client: client16, company: company1, type_bl: 'Master', container: containers1)
BillOfLanding.create(client: client17, company: company1, type_bl: 'Master', container: containers2)
BillOfLanding.create(client: client18, company: company1, type_bl: 'Master', container: containers3)
BillOfLanding.create(client: client16, company: company1, type_bl: 'Master', container: containers4)
BillOfLanding.create(client: client17, company: company3, type_bl: 'Master', container: containers5)
BillOfLanding.create(client: client18, company: company3, type_bl: 'Master', container: containers6)
BillOfLanding.create(client: client16, company: company3, type_bl: 'Master', container: containers7)
BillOfLanding.create(client: client17, company: company3, type_bl: 'Master', container: containers8)
BillOfLanding.create(client: client18, company: company2, type_bl: 'Master', container: containers9)
BillOfLanding.create(client: client16, company: company2, type_bl: 'Master', container: containers10)
BillOfLanding.create(client: client17, company: company2, type_bl: 'Master', container: containers11)
BillOfLanding.create(client: client18, company: company2, type_bl: 'Master', container: containers12)
BillOfLanding.create(client: client16, company: company1, type_bl: 'Master', container: containers13)
BillOfLanding.create(client: client17, company: company2, type_bl: 'Master', container: containers14)
BillOfLanding.create(client: client18, company: company3, type_bl: 'Master', container: containers15)
BillOfLanding.create(client: client16, company: company2, type_bl: 'Master', container: containers16)
BillOfLanding.create(client: client17, company: company2, type_bl: 'Master', container: containers17)
BillOfLanding.create(client: client18, company: company2, type_bl: 'Master', container: containers18)
BillOfLanding.create(client: client16, company: company2, type_bl: 'Master', container: containers19)
BillOfLanding.create(client: client17, company: company1, type_bl: 'Master', container: containers20)
BillOfLanding.create(client: client18, company: company2, type_bl: 'Master', container: containers21)

BillOfLanding.create(client: client1, company: company4, type_bl: 'House', container: containers1)
BillOfLanding.create(client: client2, company: company5, type_bl: 'House', container: containers2)
BillOfLanding.create(client: client3, company: company6, type_bl: 'House', container: containers3)
BillOfLanding.create(client: client4, company: company4, type_bl: 'House', container: containers4)
BillOfLanding.create(client: client5, company: company5, type_bl: 'House', container: containers5)
BillOfLanding.create(client: client6, company: company6, type_bl: 'House', container: containers6)
BillOfLanding.create(client: client7, company: company4, type_bl: 'House', container: containers7)
BillOfLanding.create(client: client8, company: company5, type_bl: 'House', container: containers8)
BillOfLanding.create(client: client9, company: company6, type_bl: 'House', container: containers9)
BillOfLanding.create(client: client10, company: company4, type_bl: 'House', container: containers10)
BillOfLanding.create(client: client11, company: company5, type_bl: 'House', container: containers11)
BillOfLanding.create(client: client12, company: company6, type_bl: 'House', container: containers12)
BillOfLanding.create(client: client13, company: company4, type_bl: 'House', container: containers13)
BillOfLanding.create(client: client14, company: company5, type_bl: 'House', container: containers14)
BillOfLanding.create(client: client15, company: company6, type_bl: 'House', container: containers15)
BillOfLanding.create(client: client1, company: company4, type_bl: 'House', container: containers16)
BillOfLanding.create(client: client2, company: company5, type_bl: 'House', container: containers17)
BillOfLanding.create(client: client3, company: company6, type_bl: 'House', container: containers18)
BillOfLanding.create(client: client4, company: company4, type_bl: 'House', container: containers19)
BillOfLanding.create(client: client5, company: company5, type_bl: 'House', container: containers20)
BillOfLanding.create(client: client6, company: company6, type_bl: 'House', container: containers21)
puts"Cargar BillOfLanding" 

puts"Final"
