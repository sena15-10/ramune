import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import $ from 'jquery';
import "channels"
//= require jquery
//= require jquery_ujs
Rails.start()
Turbolinks.start()
ActiveStorage.start()
window.$ = $;
window.jQuery = $;

console.log("ここでは通常通り動きます")
import "../top"
