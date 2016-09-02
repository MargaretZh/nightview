/*---AIRPORTS----*/
#air_restrictions [zoom>=10] {
  polygon-fill: #ff8a65;
  opacity: 0.1;
} 

#runway_strip [zoom>=10] {
  polygon-fill: darken(#bdbdbd,50%);
}
#air_strips [zoom>=10] {
  polygon-fill: #ff8a65;
  opacity: 0.2;
}
#runway_strip_icon [zoom>=9] {
  [objectname='Пулково'] {
  marker-file: url(icons/plane.svg);
  marker-width: 18;
  marker-fill: #d84315;
  }
   [objectname!='Пулково'] {
  marker-file: url(icons/jet.svg);
  marker-width: 13;
  marker-fill: #d84315;
  marker-allow-overlap: true;
  }
}
#runway_strip_label [zoom>=10]{
  text-face-name: @sans_italic;
  text-name: '[objectname]';
  text-size: 12;
  text-fill:  #d84315;
  text-placement: point;
  text-halo-radius: 2;
  text-character-spacing: 0.7;
  text-halo-fill:darken(#bdbdbd,70%);
  text-horizontal-alignment: left;
  text-dx: -10;

}
#unioned_restrictions [zoom>=10] {
  line-color: #d84315;
  line-width:1;
  opacity: 0.2;
 }
