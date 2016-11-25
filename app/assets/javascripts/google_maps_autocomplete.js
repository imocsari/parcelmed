function onPlaceChanged() {
  var place = this.getPlace();
  var components = getAddressComponents(place);

  $('#input_to_autocomplete').trigger('blur').val(components.zip_code);
  $('postcode').val(components.zip_code)
  $('#user_town').val(components.city)
  $('#user_county').val(components.county)
  $('#user_country').val(components.country_code)
  $('#user_company_address').val(components.address)

  // $('#booking_zip_code').val(components.zip_code);
  // $('#flat_city').val(components.city);
  // if (components.country_code) {
  //   $('#flat_country').val(components.country_code);
  // }
}

function getAddressComponents(place) {
  console.log(place)
  // If you want lat/lng, you can look at:
  // - place.geometry.location.lat()
  // - place.geometry.location.lng()

  var street_number = null;
  var route = null;
  var zip_code = null;
  var city = null;
  var county = null;
  var country_code = null;
  for (var i in place.address_components) {
    var component = place.address_components[i];
    for (var j in component.types) {
      var type = component.types[j];
      if (type == 'street_number') {
        street_number = component.long_name;
      } else if (type == 'route') {
        route = component.long_name;
      } else if (type == 'postal_code') {
        zip_code = component.long_name;
      } else if (type == 'administrative_area_level_2') {
        county = component.long_name;
      } else if (type == 'locality') {
        city = component.long_name;
      } else if (type == 'country') {
        country_code = component.short_name;
      }
    }
  }

  return {
    address: street_number == null ? route : (street_number + ' ' + route),
    zip_code: zip_code,
    city: city,
    county: county,
    country_code: country_code
  };
}
