

class FI_RES:
    #urls
    homeURL='https://qubilea.fi/'
    servicesURL='https://qubilea.fi/palvelut/'
    companyURL='https://qubilea.fi/yritys/'
    jobsURL='https://qubilea.fi/rekry/'

    #selectors
    #main nav
    home='//li[@data-item-id="106"]'
    services='//li[@data-item-id="108"]'
    company='//li[@data-item-id="109"]'
    jobs='//li[@data-item-id="173"]'
    #auxillary nav
    home_aux_nav="//ul[@id='menu-main-menu-1']//a[@href='https://qubilea.fi/']"
    services_aux_nav="//ul[@id='menu-main-menu-1']//a[@href='https://qubilea.fi/palvelut/']"
    company_aux_nav="//ul[@id='menu-main-menu-1']//a[@href='https://qubilea.fi/yritys/']"
    jobs_aux_nav="//ul[@id='menu-main-menu-1']//a[@href='https://qubilea.fi/rekry/']"
    #change lang
    changeLang='//li[@data-item-id="940-en"]'
    all_contact_info="//html//section[@id='content']/div/div/div[7]/div/div[2]//a[@href='/yritys/']"
    phone="//a[@href='tel:050 487 3265']"
    #locators
    home_locator='TESTAUSPALVELUMME'
    services_locator='PALVELUT'
    company_locator='YRITYS'
    jobs_locator='REKRY'

class EN_RES:
    #urls
    homeURL='https://qubilea.fi/en/'
    servicesURL='https://qubilea.fi/en/services/'
    companyURL='https://qubilea.fi/en/company/'
    jobsURL='https://qubilea.fi/en/jobs/'

    #selectors
    #main nav
    home='//li[@data-item-id="857"]'
    services='//li[@data-item-id="856"]'
    company='//li[@data-item-id="855"]'
    jobs='//li[@data-item-id="854"]' 
    #auxillary nav
    home_aux_nav="//ul[@id='menu-main-menu-en-1']//a[@href='https://qubilea.fi/en/']"
    services_aux_nav="//ul[@id='menu-main-menu-en-1']//a[@href='https://qubilea.fi/en/services/']"
    company_aux_nav="//ul[@id='menu-main-menu-en-1']//a[@href='https://qubilea.fi/en/company/']"
    jobs_aux_nav="//ul[@id='menu-main-menu-en-1']//a[@href='https://qubilea.fi/en/jobs/']"
    #change lang
    changeLang='//li[@data-item-id="929-fi"]'
    all_contact_info="//html//section[@id='content']/div/div/div[7]/div/div[2]//a[@href='/company/']"
    phone='//a[@href="tel:+358504873265"]'

    #locators
    home_locator='OUR TESTING SERVICE'
    services_locator='SERVICES'
    company_locator='COMPANY'
    jobs_locator='JOBS'

def get_language(id):
    if id == "fi/":
        return FI
    else: 
        return EN

FI = FI_RES()
EN = EN_RES()

