---
title: "By-election par scores"
layout: textlay
excerpt: "Work out by par score for each party if a by-election were called"
custom_css: parscores
---

<script src="{{ site.url }}{{ site.baseurl }}/js/byelx_seat_data_display.js"></script>
<script src="{{ site.url }}{{ site.baseurl }}/js/jquery.min.js"></script>
<script src="{{ site.url }}{{ site.baseurl }}/js/math.min.js"></script>
<script src="{{ site.url }}{{ site.baseurl }}/js/jstat.min.js"></script>
<script src="{{ site.url }}{{ site.baseurl }}/js/selectize.min.js"></script>
<script src="{{ site.url }}{{ site.baseurl }}/js/byelx_seat_data.js"></script>
<script src="{{ site.url }}{{ site.baseurl }}/js/byelx_fe_lab.js"></script>
<script src="{{ site.url }}{{ site.baseurl }}/js/byelx_fe_lib.js"></script>
<script src="{{ site.url }}{{ site.baseurl }}/js/byelx_fe_nat.js"></script>
<script src="{{ site.url }}{{ site.baseurl }}/js/byelx_fe_oth.js"></script>
<script src="{{ site.url }}{{ site.baseurl }}/js/byelx_phi.js"></script>
<script src="{{ site.url }}{{ site.baseurl }}/js/byelx_parscores.js"></script>
<form onsubmit = "formhandler(); return false">
      <div class = "control-group">
	  <h5>Which seat is having a by-election?</h5>
      <label for = "select-seat">Choose a seat to predict:</label>
      <select id = "select-seat" class = "demo-default" placeholder = "Select a seat...">
	<option value =''>Select a seat by typing in the name...</option>
	<option value ='1'>Aberafan Maesteg</option>
 <option value ='2'>Aberdeen North</option>
 <option value ='3'>Aberdeen South</option>
 <option value ='4'>Aberdeenshire North and Moray East</option>
 <option value ='5'>Airdrie and Shotts</option>
 <option value ='6'>Aldershot</option>
 <option value ='7'>Aldridge-Brownhills</option>
 <option value ='8'>Alloa and Grangemouth</option>
 <option value ='9'>Altrincham and Sale West</option>
 <option value ='10'>Alyn and Deeside</option>
 <option value ='11'>Amber Valley</option>
 <option value ='12'>Angus and Perthshire Glens</option>
 <option value ='13'>Arbroath and Broughty Ferry</option>
 <option value ='14'>Argyll, Bute and South Lochaber</option>
 <option value ='15'>Arundel and South Downs</option>
 <option value ='16'>Ashfield</option>
 <option value ='17'>Ashford</option>
 <option value ='18'>Ashton-under-Lyne</option>
 <option value ='19'>Aylesbury</option>
 <option value ='20'>Ayr, Carrick and Cumnock</option>
 <option value ='21'>Banbury</option>
 <option value ='22'>Bangor Aberconwy</option>
 <option value ='23'>Barking</option>
 <option value ='24'>Barnsley North</option>
 <option value ='25'>Barnsley South</option>
 <option value ='26'>Barrow and Furness</option>
 <option value ='27'>Basildon and Billericay</option>
 <option value ='28'>Basingstoke</option>
 <option value ='29'>Bassetlaw</option>
 <option value ='30'>Bath</option>
 <option value ='31'>Bathgate and Linlithgow</option>
 <option value ='32'>Battersea</option>
 <option value ='33'>Beaconsfield</option>
 <option value ='34'>Beckenham and Penge</option>
 <option value ='35'>Bedford</option>
 <option value ='36'>Bermondsey and Old Southwark</option>
 <option value ='37'>Berwickshire, Roxburgh and Selkirk</option>
 <option value ='38'>Bethnal Green and Stepney</option>
 <option value ='39'>Beverley and Holderness</option>
 <option value ='40'>Bexhill and Battle</option>
 <option value ='41'>Bexleyheath and Crayford</option>
 <option value ='42'>Bicester and Woodstock</option>
 <option value ='43'>Birkenhead</option>
 <option value ='44'>Birmingham Edgbaston</option>
 <option value ='45'>Birmingham Erdington</option>
 <option value ='46'>Birmingham Hall Green and Moseley</option>
 <option value ='47'>Birmingham Hodge Hill and Solihull North</option>
 <option value ='48'>Birmingham Ladywood</option>
 <option value ='49'>Birmingham Northfield</option>
 <option value ='50'>Birmingham Perry Barr</option>
 <option value ='51'>Birmingham Selly Oak</option>
 <option value ='52'>Birmingham Yardley</option>
 <option value ='53'>Bishop Auckland</option>
 <option value ='54'>Blackburn</option>
 <option value ='55'>Blackley and Middleton South</option>
 <option value ='56'>Blackpool North and Fleetwood</option>
 <option value ='57'>Blackpool South</option>
 <option value ='58'>Blaenau Gwent and Rhymney</option>
 <option value ='59'>Blaydon and Consett</option>
 <option value ='60'>Blyth and Ashington</option>
 <option value ='61'>Bognor Regis and Littlehampton</option>
 <option value ='62'>Bolsover</option>
 <option value ='63'>Bolton North East</option>
 <option value ='64'>Bolton South and Walkden</option>
 <option value ='65'>Bolton West</option>
 <option value ='66'>Bootle</option>
 <option value ='67'>Boston and Skegness</option>
 <option value ='68'>Bournemouth East</option>
 <option value ='69'>Bournemouth West</option>
 <option value ='70'>Bracknell</option>
 <option value ='71'>Bradford East</option>
 <option value ='72'>Bradford South</option>
 <option value ='73'>Bradford West</option>
 <option value ='74'>Braintree</option>
 <option value ='75'>Brecon, Radnor and Cwm Tawe</option>
 <option value ='76'>Brent East</option>
 <option value ='77'>Brent West</option>
 <option value ='78'>Brentford and Isleworth</option>
 <option value ='79'>Brentwood and Ongar</option>
 <option value ='80'>Bridgend</option>
 <option value ='81'>Bridgwater</option>
 <option value ='82'>Bridlington and The Wolds</option>
 <option value ='83'>Brigg and Immingham</option>
 <option value ='84'>Brighton Kemptown and Peacehaven</option>
 <option value ='85'>Brighton Pavilion</option>
 <option value ='86'>Bristol Central</option>
 <option value ='87'>Bristol East</option>
 <option value ='88'>Bristol North East</option>
 <option value ='89'>Bristol North West</option>
 <option value ='90'>Bristol South</option>
 <option value ='91'>Broadland and Fakenham</option>
 <option value ='92'>Bromley and Biggin Hill</option>
 <option value ='93'>Bromsgrove</option>
 <option value ='94'>Broxbourne</option>
 <option value ='95'>Broxtowe</option>
 <option value ='96'>Buckingham and Bletchley</option>
 <option value ='97'>Burnley</option>
 <option value ='98'>Burton and Uttoxeter</option>
 <option value ='99'>Bury North</option>
 <option value ='100'>Bury South</option>
 <option value ='101'>Bury St Edmunds and Stowmarket</option>
 <option value ='102'>Caerfyrddin</option>
 <option value ='103'>Caerphilly</option>
 <option value ='104'>Caithness, Sutherland and Easter Ross</option>
 <option value ='105'>Calder Valley</option>
 <option value ='106'>Camborne and Redruth</option>
 <option value ='107'>Cambridge</option>
 <option value ='108'>Cannock Chase</option>
 <option value ='109'>Canterbury</option>
 <option value ='110'>Cardiff East</option>
 <option value ='111'>Cardiff North</option>
 <option value ='112'>Cardiff South and Penarth</option>
 <option value ='113'>Cardiff West</option>
 <option value ='114'>Carlisle</option>
 <option value ='115'>Carshalton and Wallington</option>
 <option value ='116'>Castle Point</option>
 <option value ='117'>Central Ayrshire</option>
 <option value ='118'>Central Devon</option>
 <option value ='119'>Central Suffolk and North Ipswich</option>
 <option value ='120'>Ceredigion Preseli</option>
 <option value ='121'>Chatham and Aylesford</option>
 <option value ='122'>Cheadle</option>
 <option value ='123'>Chelmsford</option>
 <option value ='124'>Chelsea and Fulham</option>
 <option value ='125'>Cheltenham</option>
 <option value ='126'>Chesham and Amersham</option>
 <option value ='127'>Chester North and Neston</option>
 <option value ='128'>Chester South and Eddisbury</option>
 <option value ='129'>Chesterfield</option>
 <option value ='130'>Chichester</option>
 <option value ='131'>Chingford and Woodford Green</option>
 <option value ='132'>Chippenham</option>
 <option value ='133'>Chipping Barnet</option>
 <option value ='134'>Chorley</option>
 <option value ='135'>Christchurch</option>
 <option value ='136'>Cities of London and Westminster</option>
 <option value ='137'>City of Durham</option>
 <option value ='138'>Clacton</option>
 <option value ='139'>Clapham and Brixton Hill</option>
 <option value ='140'>Clwyd East</option>
 <option value ='141'>Clwyd North</option>
 <option value ='142'>Coatbridge and Bellshill</option>
 <option value ='143'>Colchester</option>
 <option value ='144'>Colne Valley</option>
 <option value ='145'>Congleton</option>
 <option value ='146'>Corby and East Northamptonshire</option>
 <option value ='147'>Coventry East</option>
 <option value ='148'>Coventry North West</option>
 <option value ='149'>Coventry South</option>
 <option value ='150'>Cowdenbeath and Kirkcaldy</option>
 <option value ='151'>Cramlington and Killingworth</option>
 <option value ='152'>Crawley</option>
 <option value ='153'>Crewe and Nantwich</option>
 <option value ='154'>Croydon East</option>
 <option value ='155'>Croydon South</option>
 <option value ='156'>Croydon West</option>
 <option value ='157'>Cumbernauld and Kirkintilloch</option>
 <option value ='158'>Dagenham and Rainham</option>
 <option value ='159'>Darlington</option>
 <option value ='160'>Dartford</option>
 <option value ='161'>Daventry</option>
 <option value ='162'>Derby North</option>
 <option value ='163'>Derby South</option>
 <option value ='164'>Derbyshire Dales</option>
 <option value ='165'>Dewsbury and Batley</option>
 <option value ='166'>Didcot and Wantage</option>
 <option value ='167'>Doncaster Central</option>
 <option value ='168'>Doncaster East and the Isle of Axholme</option>
 <option value ='169'>Doncaster North</option>
 <option value ='170'>Dorking and Horley</option>
 <option value ='171'>Dover and Deal</option>
 <option value ='172'>Droitwich and Evesham</option>
 <option value ='173'>Dudley</option>
 <option value ='174'>Dulwich and West Norwood</option>
 <option value ='175'>Dumfries and Galloway</option>
 <option value ='176'>Dumfriesshire, Clydesdale and Tweeddale</option>
 <option value ='177'>Dundee Central</option>
 <option value ='178'>Dunfermline and Dollar</option>
 <option value ='179'>Dunstable and Leighton Buzzard</option>
 <option value ='180'>Dwyfor Meirionnydd</option>
 <option value ='181'>Ealing Central and Acton</option>
 <option value ='182'>Ealing North</option>
 <option value ='183'>Ealing Southall</option>
 <option value ='184'>Earley and Woodley</option>
 <option value ='185'>Easington</option>
 <option value ='186'>East Grinstead and Uckfield</option>
 <option value ='187'>East Ham</option>
 <option value ='188'>East Hampshire</option>
 <option value ='189'>East Kilbride and Strathaven</option>
 <option value ='190'>East Renfrewshire</option>
 <option value ='191'>East Surrey</option>
 <option value ='192'>East Thanet</option>
 <option value ='193'>East Wiltshire</option>
 <option value ='194'>East Worthing and Shoreham</option>
 <option value ='195'>Eastbourne</option>
 <option value ='196'>Eastleigh</option>
 <option value ='197'>Edinburgh East and Musselburgh</option>
 <option value ='198'>Edinburgh North and Leith</option>
 <option value ='199'>Edinburgh South</option>
 <option value ='200'>Edinburgh South West</option>
 <option value ='201'>Edinburgh West</option>
 <option value ='202'>Edmonton and Winchmore Hill</option>
 <option value ='203'>Ellesmere Port and Bromborough</option>
 <option value ='204'>Eltham and Chislehurst</option>
 <option value ='205'>Ely and East Cambridgeshire</option>
 <option value ='206'>Enfield North</option>
 <option value ='207'>Epping Forest</option>
 <option value ='208'>Epsom and Ewell</option>
 <option value ='209'>Erewash</option>
 <option value ='210'>Erith and Thamesmead</option>
 <option value ='211'>Esher and Walton</option>
 <option value ='212'>Exeter</option>
 <option value ='213'>Exmouth and Exeter East</option>
 <option value ='214'>Falkirk</option>
 <option value ='215'>Fareham and Waterlooville</option>
 <option value ='216'>Farnham and Bordon</option>
 <option value ='217'>Faversham and Mid Kent</option>
 <option value ='218'>Feltham and Heston</option>
 <option value ='219'>Filton and Bradley Stoke</option>
 <option value ='220'>Finchley and Golders Green</option>
 <option value ='221'>Folkestone and Hythe</option>
 <option value ='222'>Forest of Dean</option>
 <option value ='223'>Frome and East Somerset</option>
 <option value ='224'>Fylde</option>
 <option value ='225'>Gainsborough</option>
 <option value ='226'>Gateshead Central and Whickham</option>
 <option value ='227'>Gedling</option>
 <option value ='228'>Gillingham and Rainham</option>
 <option value ='229'>Glasgow East</option>
 <option value ='230'>Glasgow North</option>
 <option value ='231'>Glasgow North East</option>
 <option value ='232'>Glasgow South</option>
 <option value ='233'>Glasgow South West</option>
 <option value ='234'>Glasgow West</option>
 <option value ='235'>Glastonbury and Somerton</option>
 <option value ='236'>Glenrothes and Mid Fife</option>
 <option value ='237'>Gloucester</option>
 <option value ='238'>Godalming and Ash</option>
 <option value ='239'>Goole and Pocklington</option>
 <option value ='240'>Gordon and Buchan</option>
 <option value ='241'>Gorton and Denton</option>
 <option value ='242'>Gosport</option>
 <option value ='243'>Gower</option>
 <option value ='244'>Grantham and Bourne</option>
 <option value ='245'>Gravesham</option>
 <option value ='246'>Great Grimsby and Cleethorpes</option>
 <option value ='247'>Great Yarmouth</option>
 <option value ='248'>Greenwich and Woolwich</option>
 <option value ='249'>Guildford</option>
 <option value ='250'>Hackney North and Stoke Newington</option>
 <option value ='251'>Hackney South and Shoreditch</option>
 <option value ='252'>Halesowen</option>
 <option value ='253'>Halifax</option>
 <option value ='254'>Hamble Valley</option>
 <option value ='255'>Hamilton and Clyde Valley</option>
 <option value ='256'>Hammersmith and Chiswick</option>
 <option value ='257'>Hampstead and Highgate</option>
 <option value ='258'>Harborough, Oadby and Wigston</option>
 <option value ='259'>Harlow</option>
 <option value ='260'>Harpenden and Berkhamsted</option>
 <option value ='261'>Harrogate and Knaresborough</option>
 <option value ='262'>Harrow East</option>
 <option value ='263'>Harrow West</option>
 <option value ='264'>Hartlepool</option>
 <option value ='265'>Harwich and North Essex</option>
 <option value ='266'>Hastings and Rye</option>
 <option value ='267'>Havant</option>
 <option value ='268'>Hayes and Harlington</option>
 <option value ='269'>Hazel Grove</option>
 <option value ='270'>Hemel Hempstead</option>
 <option value ='271'>Hendon</option>
 <option value ='272'>Henley and Thame</option>
 <option value ='273'>Hereford and South Herefordshire</option>
 <option value ='274'>Herne Bay and Sandwich</option>
 <option value ='275'>Hertford and Stortford</option>
 <option value ='276'>Hertsmere</option>
 <option value ='277'>Hexham</option>
 <option value ='278'>Heywood and Middleton North</option>
 <option value ='279'>High Peak</option>
 <option value ='280'>Hinckley and Bosworth</option>
 <option value ='281'>Hitchin</option>
 <option value ='282'>Holborn and St Pancras</option>
 <option value ='283'>Honiton and Sidmouth</option>
 <option value ='284'>Hornchurch and Upminster</option>
 <option value ='285'>Hornsey and Friern Barnet</option>
 <option value ='286'>Horsham</option>
 <option value ='287'>Houghton and Sunderland South</option>
 <option value ='288'>Hove and Portslade</option>
 <option value ='289'>Huddersfield</option>
 <option value ='290'>Huntingdon</option>
 <option value ='291'>Hyndburn</option>
 <option value ='292'>Ilford North</option>
 <option value ='293'>Ilford South</option>
 <option value ='294'>Inverclyde and Renfrewshire West</option>
 <option value ='295'>Inverness, Skye and West Ross-shire</option>
 <option value ='296'>Ipswich</option>
 <option value ='297'>Isle of Wight East</option>
 <option value ='298'>Isle of Wight West</option>
 <option value ='299'>Islington North</option>
 <option value ='300'>Islington South and Finsbury</option>
 <option value ='301'>Jarrow and Gateshead East</option>
 <option value ='302'>Keighley and Ilkley</option>
 <option value ='303'>Kenilworth and Southam</option>
 <option value ='304'>Kensington and Bayswater</option>
 <option value ='305'>Kettering</option>
 <option value ='306'>Kilmarnock and Loudoun</option>
 <option value ='307'>Kingston and Surbiton</option>
 <option value ='308'>Kingston upon Hull East</option>
 <option value ='309'>Kingston upon Hull North and Cottingham</option>
 <option value ='310'>Kingston upon Hull West and Haltemprice</option>
 <option value ='311'>Kingswinford and South Staffordshire</option>
 <option value ='312'>Knowsley</option>
 <option value ='313'>Lancaster and Wyre</option>
 <option value ='314'>Leeds Central and Headingley</option>
 <option value ='315'>Leeds East</option>
 <option value ='316'>Leeds North East</option>
 <option value ='317'>Leeds North West</option>
 <option value ='318'>Leeds South</option>
 <option value ='319'>Leeds South West and Morley</option>
 <option value ='320'>Leeds West and Pudsey</option>
 <option value ='321'>Leicester East</option>
 <option value ='322'>Leicester South</option>
 <option value ='323'>Leicester West</option>
 <option value ='324'>Leigh and Atherton</option>
 <option value ='325'>Lewes</option>
 <option value ='326'>Lewisham East</option>
 <option value ='327'>Lewisham North</option>
 <option value ='328'>Lewisham West and East Dulwich</option>
 <option value ='329'>Leyton and Wanstead</option>
 <option value ='330'>Lichfield</option>
 <option value ='331'>Lincoln</option>
 <option value ='332'>Liverpool Garston</option>
 <option value ='333'>Liverpool Riverside</option>
 <option value ='334'>Liverpool Walton</option>
 <option value ='335'>Liverpool Wavertree</option>
 <option value ='336'>Liverpool West Derby</option>
 <option value ='337'>Livingston</option>
 <option value ='338'>Llanelli</option>
 <option value ='339'>Lothian East</option>
 <option value ='340'>Loughborough</option>
 <option value ='341'>Louth and Horncastle</option>
 <option value ='342'>Lowestoft</option>
 <option value ='343'>Luton North</option>
 <option value ='344'>Luton South and South Bedfordshire</option>
 <option value ='345'>Macclesfield</option>
 <option value ='346'>Maidenhead</option>
 <option value ='347'>Maidstone and Malling</option>
 <option value ='348'>Makerfield</option>
 <option value ='349'>Maldon</option>
 <option value ='350'>Manchester Central</option>
 <option value ='351'>Manchester Rusholme</option>
 <option value ='352'>Manchester Withington</option>
 <option value ='353'>Mansfield</option>
 <option value ='354'>Melksham and Devizes</option>
 <option value ='355'>Melton and Syston</option>
 <option value ='356'>Meriden and Solihull East</option>
 <option value ='357'>Merthyr Tydfil and Aberdare</option>
 <option value ='358'>Mid and South Pembrokeshire</option>
 <option value ='359'>Mid Bedfordshire</option>
 <option value ='360'>Mid Buckinghamshire</option>
 <option value ='361'>Mid Cheshire</option>
 <option value ='362'>Mid Derbyshire</option>
 <option value ='363'>Mid Dorset and North Poole</option>
 <option value ='364'>Mid Dunbartonshire</option>
 <option value ='365'>Mid Leicestershire</option>
 <option value ='366'>Mid Norfolk</option>
 <option value ='367'>Mid Sussex</option>
 <option value ='368'>Middlesbrough and Thornaby East</option>
 <option value ='369'>Middlesbrough South and East Cleveland</option>
 <option value ='370'>Midlothian</option>
 <option value ='371'>Milton Keynes Central</option>
 <option value ='372'>Milton Keynes North</option>
 <option value ='373'>Mitcham and Morden</option>
 <option value ='374'>Monmouthshire</option>
 <option value ='375'>Montgomeryshire and Glyndŵr</option>
 <option value ='376'>Moray West, Nairn and Strathspey</option>
 <option value ='377'>Morecambe and Lunesdale</option>
 <option value ='378'>Motherwell, Wishaw and Carluke</option>
 <option value ='379'>Na h-Eileanan an Iar</option>
 <option value ='380'>Neath and Swansea East</option>
 <option value ='381'>New Forest East</option>
 <option value ='382'>New Forest West</option>
 <option value ='383'>Newark</option>
 <option value ='384'>Newbury</option>
 <option value ='385'>Newcastle upon Tyne Central and West</option>
 <option value ='386'>Newcastle upon Tyne East and Wallsend</option>
 <option value ='387'>Newcastle upon Tyne North</option>
 <option value ='388'>Newcastle-under-Lyme</option>
 <option value ='389'>Newport East</option>
 <option value ='390'>Newport West and Islwyn</option>
 <option value ='391'>Newton Abbot</option>
 <option value ='392'>Newton Aycliffe and Spennymoor</option>
 <option value ='393'>Normanton and Hemsworth</option>
 <option value ='394'>North Ayrshire and Arran</option>
 <option value ='395'>North Bedfordshire</option>
 <option value ='396'>North Cornwall</option>
 <option value ='397'>North Cotswolds</option>
 <option value ='398'>North Devon</option>
 <option value ='399'>North Dorset</option>
 <option value ='400'>North Durham</option>
 <option value ='401'>North East Cambridgeshire</option>
 <option value ='402'>North East Derbyshire</option>
 <option value ='403'>North East Fife</option>
 <option value ='404'>North East Hampshire</option>
 <option value ='405'>North East Hertfordshire</option>
 <option value ='406'>North East Somerset and Hanham</option>
 <option value ='407'>North Herefordshire</option>
 <option value ='408'>North Norfolk</option>
 <option value ='409'>North Northumberland</option>
 <option value ='410'>North Shropshire</option>
 <option value ='411'>North Somerset</option>
 <option value ='412'>North Warwickshire and Bedworth</option>
 <option value ='413'>North West Cambridgeshire</option>
 <option value ='414'>North West Essex</option>
 <option value ='415'>North West Hampshire</option>
 <option value ='416'>North West Leicestershire</option>
 <option value ='417'>North West Norfolk</option>
 <option value ='418'>Northampton North</option>
 <option value ='419'>Northampton South</option>
 <option value ='420'>Norwich North</option>
 <option value ='421'>Norwich South</option>
 <option value ='422'>Nottingham East</option>
 <option value ='423'>Nottingham North and Kimberley</option>
 <option value ='424'>Nottingham South</option>
 <option value ='425'>Nuneaton</option>
 <option value ='426'>Old Bexley and Sidcup</option>
 <option value ='427'>Oldham East and Saddleworth</option>
 <option value ='428'>Oldham West, Chadderton and Royton</option>
 <option value ='429'>Orkney and Shetland</option>
 <option value ='430'>Orpington</option>
 <option value ='431'>Ossett and Denby Dale</option>
 <option value ='432'>Oxford East</option>
 <option value ='433'>Oxford West and Abingdon</option>
 <option value ='434'>Paisley and Renfrewshire North</option>
 <option value ='435'>Paisley and Renfrewshire South</option>
 <option value ='436'>Peckham</option>
 <option value ='437'>Pendle and Clitheroe</option>
 <option value ='438'>Penistone and Stocksbridge</option>
 <option value ='439'>Penrith and Solway</option>
 <option value ='440'>Perth and Kinross-shire</option>
 <option value ='441'>Peterborough</option>
 <option value ='442'>Plymouth Moor View</option>
 <option value ='443'>Plymouth Sutton and Devonport</option>
 <option value ='444'>Pontefract, Castleford and Knottingley</option>
 <option value ='445'>Pontypridd</option>
 <option value ='446'>Poole</option>
 <option value ='447'>Poplar and Limehouse</option>
 <option value ='448'>Portsmouth North</option>
 <option value ='449'>Portsmouth South</option>
 <option value ='450'>Preston</option>
 <option value ='451'>Putney</option>
 <option value ='452'>Queen's Park and Maida Vale</option>
 <option value ='453'>Rawmarsh and Conisbrough</option>
 <option value ='454'>Rayleigh and Wickford</option>
 <option value ='455'>Reading Central</option>
 <option value ='456'>Reading West and Mid Berkshire</option>
 <option value ='457'>Redcar</option>
 <option value ='458'>Redditch</option>
 <option value ='459'>Reigate</option>
 <option value ='460'>Rhondda and Ogmore</option>
 <option value ='461'>Ribble Valley</option>
 <option value ='462'>Richmond and Northallerton</option>
 <option value ='463'>Richmond Park</option>
 <option value ='464'>Rochdale</option>
 <option value ='465'>Rochester and Strood</option>
 <option value ='466'>Romford</option>
 <option value ='467'>Romsey and Southampton North</option>
 <option value ='468'>Rossendale and Darwen</option>
 <option value ='469'>Rother Valley</option>
 <option value ='470'>Rotherham</option>
 <option value ='471'>Rugby</option>
 <option value ='472'>Ruislip, Northwood and Pinner</option>
 <option value ='473'>Runcorn and Helsby</option>
 <option value ='474'>Runnymede and Weybridge</option>
 <option value ='475'>Rushcliffe</option>
 <option value ='476'>Rutherglen</option>
 <option value ='477'>Rutland and Stamford</option>
 <option value ='478'>Salford</option>
 <option value ='479'>Salisbury</option>
 <option value ='480'>Scarborough and Whitby</option>
 <option value ='481'>Scunthorpe</option>
 <option value ='482'>Sefton Central</option>
 <option value ='483'>Selby</option>
 <option value ='484'>Sevenoaks</option>
 <option value ='485'>Sheffield Brightside and Hillsborough</option>
 <option value ='486'>Sheffield Central</option>
 <option value ='487'>Sheffield Hallam</option>
 <option value ='488'>Sheffield Heeley</option>
 <option value ='489'>Sheffield South East</option>
 <option value ='490'>Sherwood Forest</option>
 <option value ='491'>Shipley</option>
 <option value ='492'>Shrewsbury</option>
 <option value ='493'>Sittingbourne and Sheppey</option>
 <option value ='494'>Skipton and Ripon</option>
 <option value ='495'>Sleaford and North Hykeham</option>
 <option value ='496'>Slough</option>
 <option value ='497'>Smethwick</option>
 <option value ='498'>Solihull West and Shirley</option>
 <option value ='499'>South Basildon and East Thurrock</option>
 <option value ='500'>South Cambridgeshire</option>
 <option value ='501'>South Cotswolds</option>
 <option value ='502'>South Derbyshire</option>
 <option value ='503'>South Devon</option>
 <option value ='504'>South Dorset</option>
 <option value ='505'>South East Cornwall</option>
 <option value ='506'>South Holland and The Deepings</option>
 <option value ='507'>South Leicestershire</option>
 <option value ='508'>South Norfolk</option>
 <option value ='509'>South Northamptonshire</option>
 <option value ='510'>South Ribble</option>
 <option value ='511'>South Shields</option>
 <option value ='512'>South Shropshire</option>
 <option value ='513'>South Suffolk</option>
 <option value ='514'>South West Devon</option>
 <option value ='515'>South West Hertfordshire</option>
 <option value ='516'>South West Norfolk</option>
 <option value ='517'>South West Wiltshire</option>
 <option value ='518'>Southampton Itchen</option>
 <option value ='519'>Southampton Test</option>
 <option value ='520'>Southend East and Rochford</option>
 <option value ='521'>Southend West and Leigh</option>
 <option value ='522'>Southgate and Wood Green</option>
 <option value ='523'>Southport</option>
 <option value ='524'>Spelthorne</option>
 <option value ='525'>Spen Valley</option>
 <option value ='526'>St Albans</option>
 <option value ='527'>St Austell and Newquay</option>
 <option value ='528'>St Helens North</option>
 <option value ='529'>St Helens South and Whiston</option>
 <option value ='530'>St Ives</option>
 <option value ='531'>St Neots and Mid Cambridgeshire</option>
 <option value ='532'>Stafford</option>
 <option value ='533'>Staffordshire Moorlands</option>
 <option value ='534'>Stalybridge and Hyde</option>
 <option value ='535'>Stevenage</option>
 <option value ='536'>Stirling and Strathallan</option>
 <option value ='537'>Stockport</option>
 <option value ='538'>Stockton North</option>
 <option value ='539'>Stockton West</option>
 <option value ='540'>Stoke-on-Trent Central</option>
 <option value ='541'>Stoke-on-Trent North</option>
 <option value ='542'>Stoke-on-Trent South</option>
 <option value ='543'>Stone, Great Wyrley and Penkridge</option>
 <option value ='544'>Stourbridge</option>
 <option value ='545'>Stratford and Bow</option>
 <option value ='546'>Stratford-on-Avon</option>
 <option value ='547'>Streatham and Croydon North</option>
 <option value ='548'>Stretford and Urmston</option>
 <option value ='549'>Stroud</option>
 <option value ='550'>Suffolk Coastal</option>
 <option value ='551'>Sunderland Central</option>
 <option value ='552'>Surrey Heath</option>
 <option value ='553'>Sussex Weald</option>
 <option value ='554'>Sutton and Cheam</option>
 <option value ='555'>Sutton Coldfield</option>
 <option value ='556'>Swansea West</option>
 <option value ='557'>Swindon North</option>
 <option value ='558'>Swindon South</option>
 <option value ='559'>Tamworth</option>
 <option value ='560'>Tatton</option>
 <option value ='561'>Taunton and Wellington</option>
 <option value ='562'>Telford</option>
 <option value ='563'>Tewkesbury</option>
 <option value ='564'>The Wrekin</option>
 <option value ='565'>Thirsk and Malton</option>
 <option value ='566'>Thornbury and Yate</option>
 <option value ='567'>Thurrock</option>
 <option value ='568'>Tipton and Wednesbury</option>
 <option value ='569'>Tiverton and Minehead</option>
 <option value ='570'>Tonbridge</option>
 <option value ='571'>Tooting</option>
 <option value ='572'>Torbay</option>
 <option value ='573'>Torfaen</option>
 <option value ='574'>Torridge and Tavistock</option>
 <option value ='575'>Tottenham</option>
 <option value ='576'>Truro and Falmouth</option>
 <option value ='577'>Tunbridge Wells</option>
 <option value ='578'>Twickenham</option>
 <option value ='579'>Tynemouth</option>
 <option value ='580'>Uxbridge and South Ruislip</option>
 <option value ='581'>Vale of Glamorgan</option>
 <option value ='582'>Vauxhall and Camberwell Green</option>
 <option value ='583'>Wakefield and Rothwell</option>
 <option value ='584'>Wallasey</option>
 <option value ='585'>Walsall and Bloxwich</option>
 <option value ='586'>Walthamstow</option>
 <option value ='587'>Warrington North</option>
 <option value ='588'>Warrington South</option>
 <option value ='589'>Warwick and Leamington</option>
 <option value ='590'>Washington and Gateshead South</option>
 <option value ='591'>Watford</option>
 <option value ='592'>Waveney Valley</option>
 <option value ='593'>Weald of Kent</option>
 <option value ='594'>Wellingborough and Rushden</option>
 <option value ='595'>Wells and Mendip Hills</option>
 <option value ='596'>Welwyn Hatfield</option>
 <option value ='597'>West Aberdeenshire and Kincardine</option>
 <option value ='598'>West Bromwich</option>
 <option value ='599'>West Dorset</option>
 <option value ='600'>West Dunbartonshire</option>
 <option value ='601'>West Ham and Beckton</option>
 <option value ='602'>West Lancashire</option>
 <option value ='603'>West Suffolk</option>
 <option value ='604'>West Worcestershire</option>
 <option value ='605'>Westmorland and Lonsdale</option>
 <option value ='606'>Weston-super-Mare</option>
 <option value ='607'>Wetherby and Easingwold</option>
 <option value ='608'>Whitehaven and Workington</option>
 <option value ='609'>Widnes and Halewood</option>
 <option value ='610'>Wigan</option>
 <option value ='611'>Wimbledon</option>
 <option value ='612'>Winchester</option>
 <option value ='613'>Windsor</option>
 <option value ='614'>Wirral West</option>
 <option value ='615'>Witham</option>
 <option value ='616'>Witney</option>
 <option value ='617'>Woking</option>
 <option value ='618'>Wokingham</option>
 <option value ='619'>Wolverhampton North East</option>
 <option value ='620'>Wolverhampton South East</option>
 <option value ='621'>Wolverhampton West</option>
 <option value ='622'>Worcester</option>
 <option value ='623'>Worsley and Eccles</option>
 <option value ='624'>Worthing West</option>
 <option value ='625'>Wrexham</option>
 <option value ='626'>Wycombe</option>
 <option value ='627'>Wyre Forest</option>
 <option value ='628'>Wythenshawe and Sale East</option>
 <option value ='629'>Yeovil</option>
 <option value ='630'>Ynys Môn</option>
 <option value ='631'>York Central</option>
 <option value ='632'>York Outer</option>
      </select>
      <script>
	$('#select-seat').selectize({
	    create: true,
	    sortField: {
		field: 'text',
		direction: 'asc'
	    }
	});
      </script>
      <br/>
      </div>
      <fieldset>
	<h5>Enter polling figures for Great Britain</h5>
	<div style = "float: left;">
	  <label for="conpoll">Cons.</label>
	  <input type="number" id="conpoll" name="conpoll" value = "24" onkeyup = "sum_to_one()" min = "0" max = "100">
	</div>
	<div style = "float: left;">
	  <label for="labpoll">Lab.</label>
	  <input type="number" id="labpoll" name="labpoll" value = "35" onkeyup = "sum_to_one()" min = "0" max = "100">
      	</div>
      	<div style = "float: left;">
	  <label for="libpoll">Lib. Dem.</label>
	  <input type="number" id="libpoll" name="libpoll" value = "12" onkeyup = "sum_to_one()" min = "0" max = "100">
	</div>
      	<div style = "float: left;">
	  <label for="natpoll">SNP + Plaid</label>
	  <input type="number" id="natpoll" name="natpoll" value = "4" onkeyup = "sum_to_one()" min = "0" max = "100">
      	</div>
      	<div style = "float: left;">
	  <label for = "othpoll">All others</label>
	  <input type="number" id="othpoll" name="othpoll" value = "25" onkeyup = "sum_to_one()" value = "0" min = "0" max = "100">
      	</div>
      </fieldset>
<input type="submit" value="Get par score" />
</form>
<div id = "negativevalues" class = "errormsg">
<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
The polling numbers you've entered add up to more than 100. Please try again.
</div>
<div id = "conoos" class = "warningmsg">
<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
The polling numbers for the Conservative party are outside the range of postwar polling (17% to 57%). Forecasts may not be realistic.
</div>
<div id = "laboos" class = "warningmsg">
<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
The polling numbers for the Labour party are outside the range of postwar polling (18% to 63%). Forecasts may not be realistic.
</div>
<div id = "liboos" class = "warningmsg">
<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
The polling numbers for the Liberal Democrats are outside the range of postwar polling (2% to 51%). Forecasts may not be realistic.
</div>
<div id = "natoos" class = "warningmsg">
<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
The polling numbers for the SNP and Plaid Cymru are greater than the Scottish and Welsh share of the GB population (13%). Forecasts may not be realistic.
</div>
<div id = "othoos" class = "warningmsg">
<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
The polling numbers for all other parties  are outside the range of postwar polling. Forecasts may not be realistic.
</div>
<div id = "results">
<table>
<thead>
<tr>
<th>Quantity</th><th>Con</th><th>Lab</th><th>Lib Dem</th><th>SNP/ Plaid</th><th>Others</th>
</tr>
</thead>
<tbody>
<tr>
	<td>Last time out...</td><td id = "conold"></td><td id = "labold"></td><td id = "libold"></td><td id = "natold"></td><td id = "othold"></td>
</tr>
<tr>
	<td>Best guess</td><td id = "conpe"></td><td id = "labpe"></td><td id = "libpe"></td><td id = "natpe"></td><td id = "othpe"></td>
</tr>
<tr>
	<td>Could be as low as...</td><td id = "conlo"></td><td id = "lablo"></td><td id = "liblo"></td><td id = "natlo"></td><td id = "othlo"></td>
</tr>
<tr>
	<td>Could be as high as...</td><td id = "conhi"></td><td id = "labhi"></td><td id = "libhi"></td><td id = "nathi"></td><td id = "othhi"></td>
</tr>
<tr>
	<td>Win probability</td><td id = "conpr"></td><td id = "labpr"></td><td id = "libpr"></td><td id = "natpr"></td><td id = "othpr"></td>
</tr>
</tbody>
</table>
</div>


#### What does this site do?

This site produces forecasts of by-election results given information
about each seat and current polling. These forecasts are described as
"par scores" because they give information on the kind of performance
each party might expect, even if their performance will be better or
worse than this expectation.

#### What are these numbers based on?

They are based on a Dirichlet regression model of by-election outcomes
in the post-war period. The model is described in the paper by Chris
Hanretty, "Forecasting multiparty by-elections using Dirichlet
regression." *International Journal of Forecasting* 37, no. 4 (2021):
1666-1676. 

#### What goes into these predictions?

The result in the seat in the previous general election; whether or
not there is a candidate from each party; the identity of the party in
government; which party held the seat; turnout in the previous general
election; whether the incumbent MP is running again; polling changes
since the last election.

#### What doesn't go into these predictions?

Whether or not the previous MP resigned as a result of scandal; the
number of "other" candidates; any other factors which might affect the
local popularity of a party that aren't reflected in national polls.

#### What do you mean, "could be as low as"?

All models have uncertainty in them. When we say that the result could
be as low as (say) 6%, we mean that there is a 2.5% chance that the
true result will be *lower* than this number. Conversely, when we say
that the result could be as high as (say) 48%, we mean that there is a
2.5% chance that the true result will be *higher* than this
number. Put differently, the probability that the result will fall in
between these two figures is 95% (if the model is right).

#### Come on, I could do better than this!

We're sure you could. After all, you might know the circumstances
under which the by-election will be called, additional information
about the parties' local strengths, even the characteristics of the
candidates. These are all things that the model doesn't know. The
model does know about the polling you input, historical results, and
who is in government. 
