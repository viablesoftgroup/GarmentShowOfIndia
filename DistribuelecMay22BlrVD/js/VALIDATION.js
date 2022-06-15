//trim leading and trailing spaces from a text box
function trimFld(myfield) {
    myfield.value = trim(myfield.value);
}

//remove leading & trailing spaces
function trim(strText) {
    strText = strText.replace(/^\s+/, ""); //remove leading spaces
    strText = strText.replace(/\s+$/, ""); //remove trailing spaces
    return strText;
}

function lettersOnly(e) {
    evt = (e) ? e : event;
    var charCode = (e.charCode) ? e.charCode : ((e.keyCode) ? e.keyCode : ((e.which) ? e.which : 0));

    if (charCode > 32 && (charCode < 65 || charCode > 90) && (charCode < 97 || charCode > 122)) {
        alert("Enter letters only.");
        return false;
    }
    return true;
}

function checkStartAN(e) {
    var str = e.value;

    var urlregex = /^(\w.*)?$/;
    if (str.match(urlregex)) {
        return (true);
    }
    alert("Field cannot start with a special character.");
    e.value = "";
    return (false);
}

function KeyCheck(e) {
    var keycode;
    if (window.event) keycode = window.event.keyCode;
    else if (e) keycode = e.which;
    else return true;
    if (((keycode > 47) && (keycode < 58)) || (keycode == 0) || (keycode == 127) || (keycode == 9) || (keycode == 8) || (keycode == 13)) { return true; }
    else {
        alert("Please type in numbers 0-9 only. No spaces please");
        return false;
    }
}

var isIE = document.all ? true : false;
var isDOM = document.getElementById ? true : false;
var isNS4 = document.layers ? true : false;

function ShowHide(hide, _w) {
    if (isDOM) {
        if (!hide) {
            document.getElementById(_w).style.display = 'inline';
            document.getElementById(_w).style.visibility = 'visible';
        }
        else {
            document.getElementById(_w).style.display = 'none';
            document.getElementById(_w).style.visibility = 'hidden';
        }
    }
    else if (isIE) {
        if (!hide) {
            eval("document.all." + _w + ".style.display='inline';");
            eval("document.all." + _w + ".style.visibility='visible';");
        }
        else {
            eval("document.all." + _w + ".style.display='none';");
            eval("document.all." + _w + ".style.visibility='hidden';");
        }
    }
    else if (isNS4) {
        if (!hide) {
            eval("document.layers['" + _w + "'].display='inline';");
            eval("document.layers['" + _w + "'].visibility='show';");
        }
        else {
            eval("document.layers['" + _w + "'].display='none';");
            eval("document.layers['" + _w + "'].visibility='hide';");
        }
    }
}

function Country_onChange(form1 ,_w) {
    var countryCode = (form1.country.value == "" ? "" : objCountries[form1.country.value]["IDD"]); 
    form1.ccode.strText = countryCode; 
	 
}

function ShowOther(form1, _w) {
    ShowHide(false, _w);
    form1.State_Other.focus();
}

function checkEmail(str) {
    var at = "@"
    var dot = "."
    var lat = str.indexOf(at)
    var lstr = str.length
    var ldot = str.indexOf(dot)
    if (str.indexOf(at) == -1) {
        return false
    }

    if (str.indexOf(at) == -1 || str.indexOf(at) == 0 || str.indexOf(at) == lstr) {
        return false
    }

    if (str.indexOf(dot) == -1 || str.indexOf(dot) == 0 || str.indexOf(dot) == lstr) {
        return false
    }

    if (str.indexOf(at, (lat + 1)) != -1) {
        return false
    }

    if (str.substring(lat - 1, lat) == dot || str.substring(lat + 1, lat + 3) == dot) {
        return false
    }

    if (str.indexOf(dot, (lat + 3)) == -1) {
        return false
    }

    if (str.indexOf(" ") != -1) {
        return false
    }

    return true;
}

function checkURL(websiteURL) {
    var urlregex = new RegExp("^(http:\/\/www|https:\/\/www|ftp:\/\/www|www)\.([a-zA-Z0-9\.\-]+(\:[a-zA-Z0-9\.&amp;%\$\-]+)*@)*((25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9])\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[0-9])|([a-zA-Z0-9\-]+\.)*[a-zA-Z0-9\-]+\.(com|edu|gov|int|mil|net|org|biz|arpa|info|name|pro|aero|coop|museum|[a-zA-Z]{2}))(\:[0-9]+)*(/($|[a-zA-Z0-9\.\,\?\'\\\+&amp;%\$#\=~_\-]+))*$");
    if (urlregex.test(websiteURL)) {
        return (true);
    }

    return (false);
}

function printPage() {
    if (window.print)
        window.print();
    else
        alert("Sorry, your browser doesn't support this feature. Please print from the browser menu bar.");
}

/* DMG Country List */
var objCountries = {
    "Afghanistan": { "IDD": "93" },
    "Albania": { "IDD": "355" },
    "Algeria": { "IDD": "213" },
    "Andorra": { "IDD": "376" },
    "Angola": { "IDD": "244" },
    "Anguilla": { "IDD": "1264" },
    "Antigua & Barbuda": { "IDD": "1268" },
    "Argentina": { "IDD": "54" },
    "Armenia": { "IDD": "374" },
    "Aruba": { "IDD": "297" },
    "Australia": { "IDD": "61" },
    "Austria": { "IDD": "43" },
    "Azerbaijan": { "IDD": "994" },
    "Bahamas": { "IDD": "1242" },
    "Bahrain": { "IDD": "973" },
    "Bangladesh": { "IDD": "880" },
    "Barbados": { "IDD": "1246" },
    "Belarus": { "IDD": "375" },
    "Belgium": { "IDD": "32" },
    "Belize": { "IDD": "501" },
    "Benin": { "IDD": "229" },
    "Bermuda": { "IDD": "1441" },
    "Bhutan": { "IDD": "975" },
    "Bolivia": { "IDD": "591" },
    "Bosnia-Herzegovina": { "IDD": "387" },
    "Botswana": { "IDD": "267" },
    "Brazil": { "IDD": "55" },
    "British Virgin Islands": { "IDD": "1284" },
    "Brunei": { "IDD": "673" },
    "Bulgaria": { "IDD": "359" },
    "Burkina Faso": { "IDD": "226" },
    "Burundi": { "IDD": "257" },
    "Cambodia": { "IDD": "855" },
    "Cameroon": { "IDD": "237" },
    "Canada": { "IDD": "1" },
    "Cape Verde Islands": { "IDD": "238" },
    "Cayman Islands": { "IDD": "1345" },
    "Central African Republic": { "IDD": "236" },
    "Chad": { "IDD": "235" },
    "Chile": { "IDD": "56" },
    "China": { "IDD": "86" },
    "Christmas Island": { "IDD": "61" },
    "Cocos (Keeling) Islands": { "IDD": "61" },
    "Colombia": { "IDD": "57" },
    "Comoros": { "IDD": "269" },
    "Congo": { "IDD": "242" },
    "Congo Dr": { "IDD": "243" },
    "Cook Islands": { "IDD": "682" },
    "Costa Rica": { "IDD": "506" },
    "Cote D'ivoire": { "IDD": "225" },
    "Croatia": { "IDD": "385" },
    "Cuba": { "IDD": "53" },
    "Cyprus": { "IDD": "357" },
    "Czech Republic": { "IDD": "420" },
    "Denmark": { "IDD": "45" },
    "Djibouti": { "IDD": "253" },
    "Dominica": { "IDD": "1767" },
    "Dominican Republic": { "IDD": "1809" },
    "East Timor": { "IDD": "670" },
    "Ecuador": { "IDD": "593" },
    "Egypt": { "IDD": "20" },
    "Equatorial Guinea": { "IDD": "240" },
    "Eritrea": { "IDD": "291" },
    "Estonia": { "IDD": "372" },
    "Ethiopia": { "IDD": "251" },
    "Faroe Islands": { "IDD": "298" },
    "Fiji": { "IDD": "679" },
    "Finland": { "IDD": "358" },
    "France": { "IDD": "33" },
    "French Polynesia": { "IDD": "689" },
    "Gabon": { "IDD": "241" },
    "Gambia": { "IDD": "220" },
    "Georgia": { "IDD": "995" },
    "Germany": { "IDD": "49" },
    "Ghana": { "IDD": "233" },
    "Gibraltar": { "IDD": "350" },
    "Greece": { "IDD": "30" },
    "Greenland": { "IDD": "299" },
    "Guatemala": { "IDD": "502" },
    "Guinea": { "IDD": "224" },
    "Guyana": { "IDD": "592" },
    "Honduras": { "IDD": "504" },
    "Hong Kong": { "IDD": "852" },
    "Hungary": { "IDD": "36" },
    "Iceland": { "IDD": "354" },
    "India": { "IDD": "91" },
    "Indonesia": { "IDD": "62" },
    "Iran": { "IDD": "98" },
    "Iraq": { "IDD": "964" },
    "Ireland": { "IDD": "353" },
    "Israel": { "IDD": "972" },
    "Italy": { "IDD": "39" },
    "Jamaica": { "IDD": "1876" },
    "Japan": { "IDD": "81" },
    "Jersey": { "IDD": "44" },
    "Jordan": { "IDD": "962" },
    "Kazakhstan": { "IDD": "7" },
    "Kenya": { "IDD": "254" },
    "Kiribati": { "IDD": "686" },
    "Kosovo": { "IDD": "381" },
    "Kuwait": { "IDD": "965" },
    "Kyrgyzstan": { "IDD": "996" },
    "Laos": { "IDD": "856" },
    "Latvia": { "IDD": "371" },
    "Lebanon": { "IDD": "961" },
    "Lesotho": { "IDD": "266" },
    "Liberia": { "IDD": "231" },
    "Libya": { "IDD": "218" },
    "Liechtenstein": { "IDD": "423" },
    "Lithuania": { "IDD": "370" },
    "Luxembourg": { "IDD": "352" },
    "Macau": { "IDD": "853" },
    "Macedonia": { "IDD": "389" },
    "Madagascar": { "IDD": "261" },
    "Malawi": { "IDD": "265" },
    "Malaysia": { "IDD": "60" },
    "Maldives": { "IDD": "960" },
    "Mali": { "IDD": "223" },
    "Malta": { "IDD": "356" },
    "Marshall Islands": { "IDD": "692" },
    "Mauritania": { "IDD": "222" },
    "Mauritius": { "IDD": "230" },
    "Mexico": { "IDD": "52" },
    "Micronesia": { "IDD": "691" },
    "Moldova": { "IDD": "373" },
    "Monaco": { "IDD": "377" },
    "Mongolia": { "IDD": "976" },
    "Montenegro": { "IDD": "382" },
    "Morocco": { "IDD": "212" },
    "Mozambique": { "IDD": "258" },
    "Myanmar": { "IDD": "95" },
    "Namibia": { "IDD": "264" },
    "Nepal": { "IDD": "977" },
    "Netherlands": { "IDD": "31" },
    "Netherlands Antilles": { "IDD": "599" },
    "New Caledonia": { "IDD": "687" },
    "New Zealand": { "IDD": "64" },
    "Nicaragua": { "IDD": "505" },
    "Niger": { "IDD": "227" },
    "Nigeria": { "IDD": "234" },
    "Niue": { "IDD": "683" },
    "North Korea": { "IDD": "850" },
    "Norway": { "IDD": "47" },
    "Oman": { "IDD": "968" },
	"Other": { "IDD": "" },
	"Pakistan": { "IDD": "92" },
    "Palestine": { "IDD": "970" },
    "Panama": { "IDD": "507" },
    "Papua New Guinea": { "IDD": "675" },
    "Paraguay": { "IDD": "595" },
    "Peru": { "IDD": "51" },
    "Philippines": { "IDD": "63" },
    "Poland": { "IDD": "48" },
    "Portugal": { "IDD": "351" },
    "Puerto Rico": { "IDD": "1787" },
    "Qatar": { "IDD": "974" },
    "Republic of Nauru": { "IDD": "674" },
    "Republic of Palau": { "IDD": "680" },
    "Reunion": { "IDD": "262" },
    "Romania": { "IDD": "40" },
    "Russia": { "IDD": "7" },
    "Rwanda": { "IDD": "250" },
    "Samoa": { "IDD": "685" },
    "San Marino": { "IDD": "378" },
    "Saudi Arabia": { "IDD": "966" },
    "Senegal": { "IDD": "221" },
    "Serbia": { "IDD": "381" },
    "Seychelles": { "IDD": "248" },
    "Sierra Leone": { "IDD": "232" },
    "Singapore": { "IDD": "65" },
    "Slovakia": { "IDD": "421" },
    "Slovenia": { "IDD": "386" },
    "Solomon Islands": { "IDD": "677" },
    "Somalia": { "IDD": "252" },
    "South Africa": { "IDD": "27" },
    "South Korea": { "IDD": "82" },
    "Spain": { "IDD": "34" },
    "Sri Lanka": { "IDD": "94" },
    "Sudan": { "IDD": "249" },
    "Swaziland": { "IDD": "268" },
    "Sweden": { "IDD": "46" },
    "Switzerland": { "IDD": "41" },
    "Syria": { "IDD": "963" },
    "Taiwan": { "IDD": "886" },
    "Tajikistan": { "IDD": "992" },
    "Tanzania": { "IDD": "255" },
    "Thailand": { "IDD": "66" },
    "Togo": { "IDD": "228" },
    "Tonga": { "IDD": "676" },
    "Trinidad & Tobago": { "IDD": "1868" },
    "Tunisia": { "IDD": "216" },
    "Turkey": { "IDD": "90" },
    "Turkmenistan": { "IDD": "993" },
    "Uganda": { "IDD": "256" },
    "Ukraine": { "IDD": "380" },
    "United Arab Emirates": { "IDD": "971" },
    "United Kingdom": { "IDD": "44" },
    "United States": { "IDD": "1" },
    "Uruguay": { "IDD": "598" },
    "US Virgin Islands": { "IDD": "1340" },
    "Uzbekistan": { "IDD": "998" },
    "Vanuatu": { "IDD": "678" },
    "Venezuela": { "IDD": "58" },
    "Vietnam": { "IDD": "84" },
    "Yemen": { "IDD": "967" },
    "Zambia": { "IDD": "260" },
    "Zimbabwe": { "IDD": "263" }
	
	
}