//Create Map variable name world then inside it create countries Map,
// Key will be the name country & country value will have another map
//having capitalCity, currency and language to it. by using any
//country key print all the value of Capital & Currency.
void main() {
  Map <dynamic , dynamic> world = { 'countries' : { 
                                                                'Pakistan': {
                                                                  'capitalCity': 'Islamabad',
                                                                  'currency': 'Pakistani Rupee',
                                                                  'language': 'Urdu',
                                                                  },
                                                                'Saudi Arabia': {
                                                                  'capitalCity': 'Riyadh',
                                                                  'currency': 'Saudi Riyal',
                                                                  'language': 'Arabic',
                                                                },
                                                                'Turkey': {
                                                                  'capitalCity': 'Ankara',
                                                                  'currency': 'Turkish Lira',
                                                                  'language': 'Turkish',
                                                                },
                                                                'Egypt': {
                                                                  'capitalCity': 'Cairo',
                                                                  'currency': 'Egyptian Pound',
                                                                  'language': 'Arabic',
                                                                },
                                                                'Indonesia': {
                                                                  'capitalCity': 'Jakarta',
                                                                  'currency': 'Indonesian Rupiah',
                                                                  'language': 'Indonesian',
                                                                },
                                                                'Bangladesh': {
                                                                  'capitalCity': 'Dhaka',
                                                                  'currency': 'Bangladeshi Taka',
                                                                  'language': 'Bengali',
                                                                },
                                                                'Malaysia': {
                                                                  'capitalCity': 'Kuala Lumpur',
                                                                  'currency': 'Malaysian Ringgit',
                                                                  'language': 'Malay',
                                                                },
                                                                'United Arab Emirates': {
                                                                  'capitalCity': 'Abu Dhabi',
                                                                  'currency': 'UAE Dirham',
                                                                  'language': 'Arabic',
                                                                },
                                                                'Morocco': {
                                                                  'capitalCity': 'Rabat',
                                                                  'currency': 'Moroccan Dirham',
                                                                  'language': 'Arabic',
                                                                },
                                                                'Jordan': {
                                                                  'capitalCity': 'Amman',
                                                                  'currency': 'Jordanian Dinar',
                                                                  'language': 'Arabic',
                                                                },
  },
  };

  print('-------------------------------------------');
  Map <dynamic , dynamic> countries = world["countries"];
  countries.forEach((countries, data) {
    String capital = data['capitalCity'];
    String currency = data['currency'];
    print('Country: $countries');
    print('Capital: $capital');
    print('Currency: $currency');
    print('------------------');
  }
  );


}
