'use strict'

isMobileChrome = navigator.userAgent.match 'CriOS'

if isMobileChrome
  document.documentElement.classList.add 'mobile-chrome-keep-address-bar'
else
  smoothScroll = require 'smooth-scroll'
  smoothScroll.init()
