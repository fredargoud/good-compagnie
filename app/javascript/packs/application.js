import "bootstrap";
import $ from 'jquery';
import 'select2';
import 'mapbox-gl/dist/mapbox-gl.css';
import flatpickr from "flatpickr";
import { France } from "flatpickr/dist/l10n/fr.js";
import '../plugins/date';
import '../components/quote_form';

import '../components/truncate.js';
import '../components/tooltip';



// internal imports
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
