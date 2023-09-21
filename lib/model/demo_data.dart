import 'dart:ui';

import 'package:fintech/model/profile_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List paymentList = [
  {"image": "assets/icons/arrows-repeat.png", "title": "Transfer"},
  {"image": "assets/icons/usd-circle.png", "title": "Request"},
  {"image": "assets/icons/credit-card.png", "title": "Bill"},
  {"image": "assets/icons/wallet.png", "title": "Top-up"},
  {"image": "assets/icons/menu-dots.png", "title": "More"},
];

List transactionsHistory = [
  {
    "image": "https://pngimg.com/uploads/paypal/paypal_PNG7.png",
    "title": "Paypal",
    "subTitle": "Freelance Payment",
    "amount": "\$2,225",
    "time": "March14,2021"
  },
  {
    "image":
        "https://www.pngitem.com/pimgs/m/104-1041504_n-netflix-logo-netflix-logo-png-transparent-png.png",
    "title": "Netflix",
    "subTitle": "Subscript Fee",
    "amount": "\$1,528",
    "time": "March14,2021"
  },
  {
    "image": "https://pngimg.com/uploads/paypal/paypal_PNG7.png",
    "title": "Paypal",
    "subTitle": "Subscript Fee",
    "amount": "\$2,225",
    "time": "March14,2021"
  },
  {
    "image":
        "https://static.vecteezy.com/system/resources/previews/018/930/750/non_2x/spotify-app-logo-spotify-icon-transparent-free-png.png",
    "title": "Spotify",
    "subTitle": "Subscript Fee",
    "amount": "\$4,44",
    "time": "March14,2021"
  },
  {
    "image":
        "https://static.vecteezy.com/system/resources/previews/018/930/750/non_2x/spotify-app-logo-spotify-icon-transparent-free-png.png",
    "title": "Spotify",
    "subTitle": "Subscript Fee",
    "amount": "\$4,44",
    "time": "March14,2021"
  },
];

List notificationToday = [
  {
    "image": "assets/images/woman.png",
    "title": "Received Money",
    "subTitle": "\$50 received form Masud",
    "time": "10m ago"
  },
  {
    "image": "assets/images/woman.png",
    "title": "Received Money",
    "subTitle": "\$50 received form Masud",
    "time": "10m ago"
  },
  {
    "image": "assets/images/woman.png",
    "title": "Received Money",
    "subTitle": "\$50 received form Masud",
    "time": "40m ago"
  },
  {
    "image": "assets/images/woman.png",
    "title": "Received Money",
    "subTitle": "\$50 received form Masud",
    "time": "2h ago"
  }
];

List notificationYesterday = [
  {
    "image": "assets/images/woman.png",
    "title": "Top up",
    "subTitle": "\$5000 top up form the card",
    "time": "Aug 6"
  },
  {
    "image": "assets/images/woman.png",
    "title": "Money Transfer",
    "subTitle": "\$400 received form Masud",
    "time": "Aug 6"
  },
  // {
  //   "image": "assets/images/woman.png",
  //   "title": "Money Transfer",
  //   "subTitle": "\$50 received form Masud",
  //   "time": "40 m ago"
  // },
  {
    "image": "assets/images/woman.png",
    "title": "Received Money",
    "subTitle": "\$50 received form Masud",
    "time": "Aug 6"
  }
];

List moreServices = [
  {"image": "assets/icons/arrows-repeat.png", "title": "Transfer"},
  {"image": "assets/icons/usd-circle.png", "title": "Request"},
  {"image": "assets/icons/credit-card.png", "title": "Bill"},
  {"image": "assets/icons/wallet.png", "title": "Top-up"},
  {"image": "assets/icons/menu-dots.png", "title": "Withdraw"},
  {"image": "assets/icons/arrows-repeat.png", "title": "Pay "},
  {"image": "assets/icons/usd-circle.png", "title": "Top up"},
  {"image": "assets/icons/credit-card.png", "title": "Scan"},
  {"image": "assets/icons/wallet.png", "title": "Electric"},
  {"image": "assets/icons/menu-dots.png", "title": "Internet"},
  {"image": "assets/icons/arrows-repeat.png", "title": "Vauture"},
  {"image": "assets/icons/usd-circle.png", "title": "Assurenc"},
  // {"image": "assets/icons/credit-card.png", "title": "Bill"},
  // {"image": "assets/icons/wallet.png", "title": "Top-up"},
  // {"image": "assets/icons/menu-dots.png", "title": "More"},
];
List sendMoneyList = [
  {
    "image": "assets/images/woman.png",
    "title": "Masud rana",
    "subTitle": "Send money",
    "money": "-156"
  },
  {
    "image": "assets/images/woman.png",
    "title": "Mr. Karim",
    "subTitle": "Received money",
    "money": "+5,000"
  },
  {
    "image": "assets/images/woman.png",
    "title": "Mickel Jankis",
    "subTitle": "Received money",
    "money": "+6,450"
  },
  {
    "image": "assets/images/woman.png",
    "title": "Elinor Rose",
    "subTitle": "Send money",
    "money": "-6,000"
  }
];

List creditCardList = [
  {
    "date": "16/2025",
    "card-number": "xxxx xxxx xxxx 2563",
    "name": "Black Cat"
  },
  {
    "date": "16/2025",
    "card-number": "xxxx xxxx xxxx 1562",
    "name": "Natasha Black"
  },
  {
    "date": "16/2025",
    "card-number": "xxxx xxxx xxxx 1756",
    "name": "Philip Smith"
  },
];
//
List profleList = [
  {
    "title": "My Account",
  },
  {
    "title": "My Language",
  },
  {
    "title": "Contact List",
  },
  {
    "title": "Settings",
  },
  {
    "title": "Help Center",
  },
  {
    "title": "Log Out",
  }
];

final List<ListItem> items = [
  ListItem("My Account", Icons.person),
  ListItem('My Language', Icons.language),
  ListItem('Contact List', Icons.phone),
  ListItem('Setting', Icons.settings),
  ListItem("Help Center", Icons.help_center),
  ListItem("Log out", null)
];
