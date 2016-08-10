@sans_bold: "PT Sans Bold";
@sans_book: "PT Sans Regular";
@sans_italic: "PT Sans Italic";
@halo: black;
@oopt: seagreen;
@highway: #F8B878;
@highway_outline: black;
@stlmnts: white;
@marker_stlm: hotpink;
@water: #192A3D;
@water_labels: #A4CCF2;


Map {
  background-color: black;
  srs: '+proj=eqdc +lat_1=56 +lat_2=57 +lat_0=60 +lon_0=31';
  font-directory: url(./fonts/);  
}

#landuse [zoom>=12]{
  [landuse='residential'],
  [landuse='allotments'],
  [landuse='industrial'] {
   polygon-fill: white;
   opacity: 0.05;
    }
 } 

#buildings [zoom>=15]{
   polygon-fill: white;
   opacity: 0.2;
}  

#buildings_labels [zoom>=17]{ 
    text-face-name: @sans_book;
    text-name: '[a_hsnmbr]';
    text-fill: white;
    text-opacity: 0.7;
    text-size: 9;
    text-halo-radius: 1;
    text-halo-fill:@halo;
    text-allow-overlap: true;
}  

#boundaries_pol {
    polygon-fill: black;
    opacity: 1;
} 

#boundaries_line { 
    ::outline {
    line-offset: -2;
    line-color: hotpink;
    line-opacity: 0.2;
    line-width: 4; 
    line-join: round;
    line-cap: round;
  }
    line-color: hotpink;
    line-width: 0.2;
    line-join: round;
    line-cap: round;
}  

#boundaries_line [zoom>=10] {
    line-color: hotpink;
    line-width: 0.5;
    line-opacity: 0.7;
    line-join: round;
    line-cap: round;
}
#boundaries_inwater {
    line-color: hotpink;
    line-width: 0.3;
    line-dasharray: 5,8; 
}



#boundaries_labels [zoom=8] {
    text-face-name: @sans_bold;
    text-name: '[name]';
    text-size: 12;
    text-fill: #C48AA3;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-allow-overlap: false;
    text-wrap-width: 30;
    text-spacing: 20;
    text-character-spacing:1.2; 
}  
   
#railways [zoom<=10][zoom>=8] [service!='siding']{
    line-color: darken(darkgray, 35%);
    line-width: 2;
    line-join: round;
    line-cap: round;
       ::outline {
       line-color: black;
       line-width: 1;
       line-dasharray: 4,6;
       line-join: round;  
     }
}

#settlements [zoom>=9][place='town']{
    text-face-name: @sans_bold;
    text-name: '[name]';
    text-size: 8;
    text-fill: @stlmnts;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-allow-overlap: true;
    text-horizontal-alignment: right;
    text-dx: 5;
    text-transform:uppercase;
    text-line-spacing:1;
    marker-fill: @marker_stlm;
    marker-file: url(icons/star-15.svg);
    marker-width: 8;
    marker-allow-overlap:true;
    text-min-distance: 20;
} 
#settlements[zoom>=10][place='town']{
    text-face-name: @sans_bold;
    text-name: '[name]';
    text-size: 12;
    text-fill: @stlmnts;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-allow-overlap: true;
    text-horizontal-alignment: right;
    text-dx: 5;
} 
#settlements[zoom=11][place='village']{
    text-face-name: @sans_book;
    text-name: '[name]';
    text-size: 10;
    text-fill: @stlmnts;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-horizontal-alignment: right;
    text-allow-overlap: false;
    text-dx: 5;
    text-wrap-width: 35;
    marker-file: url(icons/circle-stroked-15.svg);
    marker-fill: @marker_stlm;
    marker-width: 5;
    marker-allow-overlap:true;
}  

#settlements [zoom=12]{
    [place='town']{
    text-face-name: @sans_bold;
    text-name: '[name]';
    text-size: 14;
    text-fill: @stlmnts;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-horizontal-alignment: right;
    text-dx: 5;
    text-wrap-width: 60;
    }
    [place='village']{
    text-face-name: @sans_book;
    text-name: '[name]';
    text-size: 12;
    text-fill: @stlmnts;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-horizontal-alignment: right;
    text-dx: 5;
    text-wrap-width: 60;
    marker-file: url(icons/circle-stroked-15.svg);
    marker-fill: @marker_stlm;
    marker-width: 5;
    marker-allow-overlap:false;
    }
}  
#settlements [zoom>=13]{  
    [place='hamlet']{
    text-face-name: @sans_italic;
    text-name: '[name]';
    text-size: 11;
    text-fill: @stlmnts;
    text-allow-overlap: false;
    text-halo-fill:@halo;
    text-wrap-width: 15;
    text-halo-radius: 2;
    } 
    [place='town']{
    text-face-name: @sans_bold;
    text-name: '[name]';
    text-size: 16;
    text-fill: @stlmnts;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-horizontal-alignment: right;
    text-dx: 5;
    text-wrap-width: 60;
    }
    [place='village']{
    text-face-name: @sans_book;
    text-name: '[name]';
    text-size: 14;
    text-fill: @stlmnts;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-horizontal-alignment: right;
    text-dx: 5;
    text-wrap-width: 60;
    marker-file: url(icons/circle-stroked-15.svg);
    marker-fill: @marker_stlm;
    marker-width: 5;
    marker-allow-overlap:true;  
        }
}
    
#water {
    polygon-fill: @water;
} 

#lakes [waterway!='drain']{
    polygon-fill: @water;
}  

#rivers [waterway!='drain']{
    line-color: @water;
    line-width: 0.3; 
} 
#rivers [waterway!='drain'][zoom>=14]{
    line-color: @water;
    line-width: 0.5; 
} 

#water [name_2!='Сосновоборский городской округ']{ 
    text-face-name: @sans_bold;
    text-name: '[name]';
    text-size: 12;
    text-fill: #A4CCF2;  
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-allow-overlap: true;
    text-line-spacing:1;
    text-min-distance: 20;
    text-wrap-width: 30;
    text-placement-type:simple;
    text-spacing: 20;
    text-character-spacing: 1.1;
}    

#lakes_labels [area>=1000000][zoom>10][zoom<15][waterway!='riverbank']{
    text-face-name: @sans_italic;
    text-name: '[name]';
    text-size: 10;
    text-fill: @water_labels;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-allow-overlap: false;
}  
#lakes_labels [area<=1000000][area>=200000]
              [zoom>=15][waterway!='riverbank']{
    text-face-name: @sans_italic;
    text-name: '[name]';
    text-size: 12;
    text-fill: @water_labels;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-allow-overlap: true;
}  

#rivers_labels [zoom>=11]{
    text-face-name: @sans_italic;
    text-name: [name];
    text-size: 9;
    text-character-spacing: 1.1;
    text-fill: @water_labels;
    text-placement: line;
    text-halo-radius: 2;
    text-halo-fill:@halo;
    text-allow-overlap: false;
    text-min-distance:400;
    text-spacing: 300; 
    text-dy: -7;
}

   
