---
title: "By-election par scores"
layout: textlay
excerpt: "Work out by par score for each party if a by-election were called"
custom_css: parscores
---

<script src="{{ site.url }}{{ site.baseurl }}/js/byelx_seat_data.js"></script>
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
	<option value ='1'>Aberavon</option>
	<option value ='2'>Aberconwy</option>
	<option value ='3'>Aberdeen North</option>
	<option value ='4'>Aberdeen South</option>
	<option value ='5'>West Aberdeenshire and Kincardine</option>
	<option value ='6'>Airdrie and Shotts</option>
	<option value ='7'>Aldershot</option>
	<option value ='8'>Aldridge-Brownhills</option>
	<option value ='9'>Altrincham and Sale West</option>
	<option value ='10'>Alyn and Deeside</option>
	<option value ='11'>Amber Valley</option>
	<option value ='12'>Angus</option>
	<option value ='13'>Arfon</option>
	<option value ='14'>Argyll and Bute</option>
	<option value ='15'>Arundel and South Downs</option>
	<option value ='16'>Ashfield</option>
	<option value ='17'>Ashford</option>
	<option value ='18'>Ashton-under-Lyne</option>
	<option value ='19'>Aylesbury</option>
	<option value ='20'>Ayr, Carrick and Cumnock</option>
	<option value ='21'>Central Ayrshire</option>
	<option value ='22'>North Ayrshire and Arran</option>
	<option value ='23'>Banbury</option>
	<option value ='24'>Banff and Buchan</option>
	<option value ='25'>Barking</option>
	<option value ='26'>Barnsley Central</option>
	<option value ='27'>Barnsley East</option>
	<option value ='28'>Barrow and Furness</option>
	<option value ='29'>Basildon and Billericay</option>
	<option value ='30'>South Basildon and East Thurrock</option>
	<option value ='31'>Basingstoke</option>
	<option value ='32'>Bassetlaw</option>
	<option value ='33'>Bath</option>
	<option value ='34'>Batley and Spen</option>
	<option value ='35'>Battersea</option>
	<option value ='36'>Beaconsfield</option>
	<option value ='37'>Beckenham</option>
	<option value ='38'>Bedford</option>
	<option value ='39'>Mid Bedfordshire</option>
	<option value ='40'>North East Bedfordshire</option>
	<option value ='41'>South West Bedfordshire</option>
	<option value ='42'>Bermondsey and Old Southwark</option>
	<option value ='43'>Berwick-upon-Tweed</option>
	<option value ='44'>Berwickshire, Roxburgh and Selkirk</option>
	<option value ='45'>Bethnal Green and Bow</option>
	<option value ='46'>Beverley and Holderness</option>
	<option value ='47'>Bexhill and Battle</option>
	<option value ='48'>Bexleyheath and Crayford</option>
	<option value ='49'>Birkenhead</option>
	<option value ='50'>Birmingham, Edgbaston</option>
	<option value ='51'>Birmingham, Erdington</option>
	<option value ='52'>Birmingham, Hall Green</option>
	<option value ='53'>Birmingham, Hodge Hill</option>
	<option value ='54'>Birmingham, Ladywood</option>
	<option value ='55'>Birmingham, Northfield</option>
	<option value ='56'>Birmingham, Perry Barr</option>
	<option value ='57'>Birmingham, Selly Oak</option>
	<option value ='58'>Birmingham, Yardley</option>
	<option value ='59'>Bishop Auckland</option>
	<option value ='60'>Blackburn</option>
	<option value ='61'>Blackley and Broughton</option>
	<option value ='62'>Blackpool North and Cleveleys</option>
	<option value ='63'>Blackpool South</option>
	<option value ='64'>Blaenau Gwent</option>
	<option value ='65'>Blaydon</option>
	<option value ='66'>Blyth Valley</option>
	<option value ='67'>Bognor Regis and Littlehampton</option>
	<option value ='68'>Bolsover</option>
	<option value ='69'>Bolton North East</option>
	<option value ='70'>Bolton South East</option>
	<option value ='71'>Bolton West</option>
	<option value ='72'>Bootle</option>
	<option value ='73'>Boston and Skegness</option>
	<option value ='74'>Bosworth</option>
	<option value ='75'>Bournemouth East</option>
	<option value ='76'>Bournemouth West</option>
	<option value ='77'>Bracknell</option>
	<option value ='78'>Bradford East</option>
	<option value ='79'>Bradford South</option>
	<option value ='80'>Bradford West</option>
	<option value ='81'>Braintree</option>
	<option value ='82'>Brecon and Radnorshire</option>
	<option value ='83'>Brent Central</option>
	<option value ='84'>Brent North</option>
	<option value ='85'>Brentford and Isleworth</option>
	<option value ='86'>Brentwood and Ongar</option>
	<option value ='87'>Bridgend</option>
	<option value ='88'>Bridgwater and West Somerset</option>
	<option value ='89'>Brigg and Goole</option>
	<option value ='90'>Brighton, Kemptown</option>
	<option value ='91'>Brighton, Pavilion</option>
	<option value ='92'>Bristol East</option>
	<option value ='93'>Bristol North West</option>
	<option value ='94'>Bristol South</option>
	<option value ='95'>Bristol West</option>
	<option value ='96'>Broadland</option>
	<option value ='97'>Bromley and Chislehurst</option>
	<option value ='98'>Bromsgrove</option>
	<option value ='99'>Broxbourne</option>
	<option value ='100'>Broxtowe</option>
	<option value ='101'>Buckingham</option>
	<option value ='102'>Burnley</option>
	<option value ='103'>Burton</option>
	<option value ='104'>Bury North</option>
	<option value ='105'>Bury South</option>
	<option value ='106'>Bury St Edmunds</option>
	<option value ='107'>Caerphilly</option>
	<option value ='108'>Caithness, Sutherland and Easter Ross</option>
	<option value ='109'>Calder Valley</option>
	<option value ='110'>Camberwell and Peckham</option>
	<option value ='111'>Camborne and Redruth</option>
	<option value ='112'>Cambridge</option>
	<option value ='113'>North East Cambridgeshire</option>
	<option value ='114'>North West Cambridgeshire</option>
	<option value ='115'>South Cambridgeshire</option>
	<option value ='116'>South East Cambridgeshire</option>
	<option value ='117'>Cannock Chase</option>
	<option value ='118'>Canterbury</option>
	<option value ='119'>Cardiff Central</option>
	<option value ='120'>Cardiff North</option>
	<option value ='121'>Cardiff South and Penarth</option>
	<option value ='122'>Cardiff West</option>
	<option value ='123'>Carlisle</option>
	<option value ='124'>Carmarthen East and Dinefwr</option>
	<option value ='125'>Carmarthen West and Pembrokeshire South</option>
	<option value ='126'>Carshalton and Wallington</option>
	<option value ='127'>Castle Point</option>
	<option value ='128'>Ceredigion</option>
	<option value ='129'>Charnwood</option>
	<option value ='130'>Chatham and Aylesford</option>
	<option value ='131'>Cheadle</option>
	<option value ='132'>Chelmsford</option>
	<option value ='133'>Chelsea and Fulham</option>
	<option value ='134'>Cheltenham</option>
	<option value ='135'>Chesham and Amersham</option>
	<option value ='136'>City of Chester</option>
	<option value ='137'>Chesterfield</option>
	<option value ='138'>Chichester</option>
	<option value ='139'>Chingford and Woodford Green</option>
	<option value ='140'>Chippenham</option>
	<option value ='141'>Chipping Barnet</option>
	<option value ='142'>Chorley</option>
	<option value ='143'>Christchurch</option>
	<option value ='144'>Cities of London and Westminster</option>
	<option value ='145'>Clacton</option>
	<option value ='146'>Cleethorpes</option>
	<option value ='147'>Clwyd South</option>
	<option value ='148'>Clwyd West</option>
	<option value ='149'>Coatbridge, Chryston and Bellshill</option>
	<option value ='150'>Colchester</option>
	<option value ='151'>Colne Valley</option>
	<option value ='152'>Congleton</option>
	<option value ='153'>Copeland</option>
	<option value ='154'>Corby</option>
	<option value ='155'>North Cornwall</option>
	<option value ='156'>South East Cornwall</option>
	<option value ='157'>The Cotswolds</option>
	<option value ='158'>Coventry North East</option>
	<option value ='159'>Coventry North West</option>
	<option value ='160'>Coventry South</option>
	<option value ='161'>Crawley</option>
	<option value ='162'>Crewe and Nantwich</option>
	<option value ='163'>Croydon Central</option>
	<option value ='164'>Croydon North</option>
	<option value ='165'>Croydon South</option>
	<option value ='166'>Cumbernauld, Kilsyth and Kirkintilloch East</option>
	<option value ='167'>Cynon Valley</option>
	<option value ='168'>Dagenham and Rainham</option>
	<option value ='169'>Darlington</option>
	<option value ='170'>Dartford</option>
	<option value ='171'>Daventry</option>
	<option value ='172'>Delyn</option>
	<option value ='173'>Denton and Reddish</option>
	<option value ='174'>Derby North</option>
	<option value ='175'>Derby South</option>
	<option value ='176'>Derbyshire Dales</option>
	<option value ='177'>Mid Derbyshire</option>
	<option value ='178'>North East Derbyshire</option>
	<option value ='179'>South Derbyshire</option>
	<option value ='180'>Devizes</option>
	<option value ='181'>Central Devon</option>
	<option value ='182'>East Devon</option>
	<option value ='183'>North Devon</option>
	<option value ='184'>South West Devon</option>
	<option value ='185'>Torridge and West Devon</option>
	<option value ='186'>Dewsbury</option>
	<option value ='187'>Don Valley</option>
	<option value ='188'>Doncaster Central</option>
	<option value ='189'>Doncaster North</option>
	<option value ='190'>Mid Dorset and North Poole</option>
	<option value ='191'>North Dorset</option>
	<option value ='192'>South Dorset</option>
	<option value ='193'>West Dorset</option>
	<option value ='194'>Dover</option>
	<option value ='195'>Dudley North</option>
	<option value ='196'>Dudley South</option>
	<option value ='197'>Dulwich and West Norwood</option>
	<option value ='198'>Dumfries and Galloway</option>
	<option value ='199'>Dumfriesshire, Clydesdale and Tweeddale</option>
	<option value ='200'>East Dunbartonshire</option>
	<option value ='201'>West Dunbartonshire</option>
	<option value ='202'>Dundee East</option>
	<option value ='203'>Dundee West</option>
	<option value ='204'>Dunfermline and West Fife</option>
	<option value ='205'>City of Durham</option>
	<option value ='206'>North Durham</option>
	<option value ='207'>North West Durham</option>
	<option value ='208'>Dwyfor Meirionnydd</option>
	<option value ='209'>Ealing Central and Acton</option>
	<option value ='210'>Ealing North</option>
	<option value ='211'>Ealing, Southall</option>
	<option value ='212'>Easington</option>
	<option value ='213'>East Ham</option>
	<option value ='214'>East Kilbride, Strathaven and Lesmahagow</option>
	<option value ='215'>East Lothian</option>
	<option value ='216'>Eastbourne</option>
	<option value ='217'>Eastleigh</option>
	<option value ='218'>Eddisbury</option>
	<option value ='219'>Edinburgh East</option>
	<option value ='220'>Edinburgh North and Leith</option>
	<option value ='221'>Edinburgh South</option>
	<option value ='222'>Edinburgh South West</option>
	<option value ='223'>Edinburgh West</option>
	<option value ='224'>Edmonton</option>
	<option value ='225'>Ellesmere Port and Neston</option>
	<option value ='226'>Elmet and Rothwell</option>
	<option value ='227'>Eltham</option>
	<option value ='228'>Enfield North</option>
	<option value ='229'>Enfield, Southgate</option>
	<option value ='230'>Epping Forest</option>
	<option value ='231'>Epsom and Ewell</option>
	<option value ='232'>Erewash</option>
	<option value ='233'>Erith and Thamesmead</option>
	<option value ='234'>Esher and Walton</option>
	<option value ='235'>Exeter</option>
	<option value ='236'>Falkirk</option>
	<option value ='237'>Fareham</option>
	<option value ='238'>Faversham and Mid Kent</option>
	<option value ='239'>Feltham and Heston</option>
	<option value ='240'>North East Fife</option>
	<option value ='241'>Filton and Bradley Stoke</option>
	<option value ='242'>Finchley and Golders Green</option>
	<option value ='243'>Folkestone and Hythe</option>
	<option value ='244'>Forest of Dean</option>
	<option value ='245'>Fylde</option>
	<option value ='246'>Gainsborough</option>
	<option value ='247'>Garston and Halewood</option>
	<option value ='248'>Gateshead</option>
	<option value ='249'>Gedling</option>
	<option value ='250'>Gillingham and Rainham</option>
	<option value ='251'>Glasgow Central</option>
	<option value ='252'>Glasgow East</option>
	<option value ='253'>Glasgow North</option>
	<option value ='254'>Glasgow North East</option>
	<option value ='255'>Glasgow North West</option>
	<option value ='256'>Glasgow South</option>
	<option value ='257'>Glasgow South West</option>
	<option value ='258'>Glenrothes</option>
	<option value ='259'>Gloucester</option>
	<option value ='260'>Gordon</option>
	<option value ='261'>Gosport</option>
	<option value ='262'>Gower</option>
	<option value ='263'>Grantham and Stamford</option>
	<option value ='264'>Gravesham</option>
	<option value ='265'>Great Grimsby</option>
	<option value ='266'>Great Yarmouth</option>
	<option value ='267'>Greenwich and Woolwich</option>
	<option value ='268'>Guildford</option>
	<option value ='269'>Hackney North and Stoke Newington</option>
	<option value ='270'>Hackney South and Shoreditch</option>
	<option value ='271'>Halesowen and Rowley Regis</option>
	<option value ='272'>Halifax</option>
	<option value ='273'>Haltemprice and Howden</option>
	<option value ='274'>Halton</option>
	<option value ='275'>Hammersmith</option>
	<option value ='276'>East Hampshire</option>
	<option value ='277'>North East Hampshire</option>
	<option value ='278'>North West Hampshire</option>
	<option value ='279'>Hampstead and Kilburn</option>
	<option value ='280'>Harborough</option>
	<option value ='281'>Harlow</option>
	<option value ='282'>Harrogate and Knaresborough</option>
	<option value ='283'>Harrow East</option>
	<option value ='284'>Harrow West</option>
	<option value ='285'>Hartlepool</option>
	<option value ='286'>Harwich and North Essex</option>
	<option value ='287'>Hastings and Rye</option>
	<option value ='288'>Havant</option>
	<option value ='289'>Hayes and Harlington</option>
	<option value ='290'>Hazel Grove</option>
	<option value ='291'>Hemel Hempstead</option>
	<option value ='292'>Hemsworth</option>
	<option value ='293'>Hendon</option>
	<option value ='294'>Henley</option>
	<option value ='295'>Hereford and South Herefordshire</option>
	<option value ='296'>North Herefordshire</option>
	<option value ='297'>Hertford and Stortford</option>
	<option value ='298'>North East Hertfordshire</option>
	<option value ='299'>South West Hertfordshire</option>
	<option value ='300'>Hertsmere</option>
	<option value ='301'>Hexham</option>
	<option value ='302'>Heywood and Middleton</option>
	<option value ='303'>High Peak</option>
	<option value ='304'>Hitchin and Harpenden</option>
	<option value ='305'>Holborn and St Pancras</option>
	<option value ='306'>Hornchurch and Upminster</option>
	<option value ='307'>Hornsey and Wood Green</option>
	<option value ='308'>Horsham</option>
	<option value ='309'>Houghton and Sunderland South</option>
	<option value ='310'>Hove</option>
	<option value ='311'>Huddersfield</option>
	<option value ='312'>Kingston upon Hull East</option>
	<option value ='313'>Kingston upon Hull North</option>
	<option value ='314'>Kingston upon Hull West and Hessle</option>
	<option value ='315'>Huntingdon</option>
	<option value ='316'>Hyndburn</option>
	<option value ='317'>Ilford North</option>
	<option value ='318'>Ilford South</option>
	<option value ='319'>Inverclyde</option>
	<option value ='320'>Inverness, Nairn, Badenoch and Strathspey</option>
	<option value ='321'>Ipswich</option>
	<option value ='322'>Isle of Wight</option>
	<option value ='323'>Islington North</option>
	<option value ='324'>Islington South and Finsbury</option>
	<option value ='325'>Islwyn</option>
	<option value ='326'>Jarrow</option>
	<option value ='327'>Keighley</option>
	<option value ='328'>Kenilworth and Southam</option>
	<option value ='329'>Kensington</option>
	<option value ='330'>Kettering</option>
	<option value ='331'>Kilmarnock and Loudoun</option>
	<option value ='332'>Kingston and Surbiton</option>
	<option value ='333'>Kingswood</option>
	<option value ='334'>Kirkcaldy and Cowdenbeath</option>
	<option value ='335'>Knowsley</option>
	<option value ='336'>Lanark and Hamilton East</option>
	<option value ='337'>West Lancashire</option>
	<option value ='338'>Lancaster and Fleetwood</option>
	<option value ='339'>Leeds Central</option>
	<option value ='340'>Leeds East</option>
	<option value ='341'>Leeds North East</option>
	<option value ='342'>Leeds North West</option>
	<option value ='343'>Leeds West</option>
	<option value ='344'>Leicester East</option>
	<option value ='345'>Leicester South</option>
	<option value ='346'>Leicester West</option>
	<option value ='347'>North West Leicestershire</option>
	<option value ='348'>South Leicestershire</option>
	<option value ='349'>Leigh</option>
	<option value ='350'>Lewes</option>
	<option value ='351'>Lewisham, Deptford</option>
	<option value ='352'>Lewisham East</option>
	<option value ='353'>Lewisham West and Penge</option>
	<option value ='354'>Leyton and Wanstead</option>
	<option value ='355'>Lichfield</option>
	<option value ='356'>Lincoln</option>
	<option value ='357'>Linlithgow and East Falkirk</option>
	<option value ='358'>Liverpool, Riverside</option>
	<option value ='359'>Liverpool, Walton</option>
	<option value ='360'>Liverpool, Wavertree</option>
	<option value ='361'>Liverpool, West Derby</option>
	<option value ='362'>Livingston</option>
	<option value ='363'>Llanelli</option>
	<option value ='364'>Loughborough</option>
	<option value ='365'>Louth and Horncastle</option>
	<option value ='366'>Ludlow</option>
	<option value ='367'>Luton North</option>
	<option value ='368'>Luton South</option>
	<option value ='369'>Macclesfield</option>
	<option value ='370'>Maidenhead</option>
	<option value ='371'>Maidstone and The Weald</option>
	<option value ='372'>Makerfield</option>
	<option value ='373'>Maldon</option>
	<option value ='374'>Manchester Central</option>
	<option value ='375'>Manchester, Gorton</option>
	<option value ='376'>Manchester, Withington</option>
	<option value ='377'>Mansfield</option>
	<option value ='378'>Meon Valley</option>
	<option value ='379'>Meriden</option>
	<option value ='380'>Merthyr Tydfil and Rhymney</option>
	<option value ='381'>Middlesbrough</option>
	<option value ='382'>Middlesbrough South and East Cleveland</option>
	<option value ='383'>Midlothian</option>
	<option value ='384'>Milton Keynes North</option>
	<option value ='385'>Milton Keynes South</option>
	<option value ='386'>Mitcham and Morden</option>
	<option value ='387'>Mole Valley</option>
	<option value ='388'>Monmouth</option>
	<option value ='389'>Montgomeryshire</option>
	<option value ='390'>Moray</option>
	<option value ='391'>Morecambe and Lunesdale</option>
	<option value ='392'>Morley and Outwood</option>
	<option value ='393'>Motherwell and Wishaw</option>
	<option value ='394'>Na h-Eileanan an Iar</option>
	<option value ='395'>Neath</option>
	<option value ='396'>New Forest East</option>
	<option value ='397'>New Forest West</option>
	<option value ='398'>Newark</option>
	<option value ='399'>Newbury</option>
	<option value ='400'>Newcastle-under-Lyme</option>
	<option value ='401'>Newcastle upon Tyne Central</option>
	<option value ='402'>Newcastle upon Tyne East</option>
	<option value ='403'>Newcastle upon Tyne North</option>
	<option value ='404'>Newport East</option>
	<option value ='405'>Newport West</option>
	<option value ='406'>Newton Abbot</option>
	<option value ='407'>Mid Norfolk</option>
	<option value ='408'>North Norfolk</option>
	<option value ='409'>North West Norfolk</option>
	<option value ='410'>South Norfolk</option>
	<option value ='411'>South West Norfolk</option>
	<option value ='412'>Normanton, Pontefract and Castleford</option>
	<option value ='413'>Northampton North</option>
	<option value ='414'>Northampton South</option>
	<option value ='415'>South Northamptonshire</option>
	<option value ='416'>Norwich North</option>
	<option value ='417'>Norwich South</option>
	<option value ='418'>Nottingham East</option>
	<option value ='419'>Nottingham North</option>
	<option value ='420'>Nottingham South</option>
	<option value ='421'>Nuneaton</option>
	<option value ='422'>Ochil and South Perthshire</option>
	<option value ='423'>Ogmore</option>
	<option value ='424'>Old Bexley and Sidcup</option>
	<option value ='425'>Oldham East and Saddleworth</option>
	<option value ='426'>Oldham West and Royton</option>
	<option value ='427'>Orkney and Shetland</option>
	<option value ='428'>Orpington</option>
	<option value ='429'>Oxford East</option>
	<option value ='430'>Oxford West and Abingdon</option>
	<option value ='431'>Paisley and Renfrewshire North</option>
	<option value ='432'>Paisley and Renfrewshire South</option>
	<option value ='433'>Pendle</option>
	<option value ='434'>Penistone and Stocksbridge</option>
	<option value ='435'>Penrith and The Border</option>
	<option value ='436'>Perth and North Perthshire</option>
	<option value ='437'>Peterborough</option>
	<option value ='438'>Plymouth, Moor View</option>
	<option value ='439'>Plymouth, Sutton and Devonport</option>
	<option value ='440'>Pontypridd</option>
	<option value ='441'>Poole</option>
	<option value ='442'>Poplar and Limehouse</option>
	<option value ='443'>Portsmouth North</option>
	<option value ='444'>Portsmouth South</option>
	<option value ='445'>Preseli Pembrokeshire</option>
	<option value ='446'>Preston</option>
	<option value ='447'>Pudsey</option>
	<option value ='448'>Putney</option>
	<option value ='449'>Rayleigh and Wickford</option>
	<option value ='450'>Reading East</option>
	<option value ='451'>Reading West</option>
	<option value ='452'>Redcar</option>
	<option value ='453'>Redditch</option>
	<option value ='454'>Reigate</option>
	<option value ='455'>East Renfrewshire</option>
	<option value ='456'>Rhondda</option>
	<option value ='457'>Ribble Valley</option>
	<option value ='458'>Richmond (Yorks)</option>
	<option value ='459'>Richmond Park</option>
	<option value ='460'>Rochdale</option>
	<option value ='461'>Rochester and Strood</option>
	<option value ='462'>Rochford and Southend East</option>
	<option value ='463'>Romford</option>
	<option value ='464'>Romsey and Southampton North</option>
	<option value ='465'>Ross, Skye and Lochaber</option>
	<option value ='466'>Rossendale and Darwen</option>
	<option value ='467'>Rother Valley</option>
	<option value ='468'>Rotherham</option>
	<option value ='469'>Rugby</option>
	<option value ='470'>Ruislip, Northwood and Pinner</option>
	<option value ='471'>Runnymede and Weybridge</option>
	<option value ='472'>Rushcliffe</option>
	<option value ='473'>Rutherglen and Hamilton West</option>
	<option value ='474'>Rutland and Melton</option>
	<option value ='475'>Saffron Walden</option>
	<option value ='476'>St Albans</option>
	<option value ='477'>St Austell and Newquay</option>
	<option value ='478'>St Helens North</option>
	<option value ='479'>St Helens South and Whiston</option>
	<option value ='480'>St Ives</option>
	<option value ='481'>Salford and Eccles</option>
	<option value ='482'>Salisbury</option>
	<option value ='483'>Scarborough and Whitby</option>
	<option value ='484'>Scunthorpe</option>
	<option value ='485'>Sedgefield</option>
	<option value ='486'>Sefton Central</option>
	<option value ='487'>Selby and Ainsty</option>
	<option value ='488'>Sevenoaks</option>
	<option value ='489'>Sheffield, Brightside and Hillsborough</option>
	<option value ='490'>Sheffield Central</option>
	<option value ='491'>Sheffield, Hallam</option>
	<option value ='492'>Sheffield, Heeley</option>
	<option value ='493'>Sheffield South East</option>
	<option value ='494'>Sherwood</option>
	<option value ='495'>Shipley</option>
	<option value ='496'>Shrewsbury and Atcham</option>
	<option value ='497'>North Shropshire</option>
	<option value ='498'>Sittingbourne and Sheppey</option>
	<option value ='499'>Skipton and Ripon</option>
	<option value ='500'>Sleaford and North Hykeham</option>
	<option value ='501'>Slough</option>
	<option value ='502'>Solihull</option>
	<option value ='503'>North Somerset</option>
	<option value ='504'>North East Somerset</option>
	<option value ='505'>Somerton and Frome</option>
	<option value ='506'>South Holland and The Deepings</option>
	<option value ='507'>South Ribble</option>
	<option value ='508'>South Shields</option>
	<option value ='509'>Southampton, Itchen</option>
	<option value ='510'>Southampton, Test</option>
	<option value ='511'>Southend West</option>
	<option value ='512'>Southport</option>
	<option value ='513'>Spelthorne</option>
	<option value ='514'>Stafford</option>
	<option value ='515'>Staffordshire Moorlands</option>
	<option value ='516'>South Staffordshire</option>
	<option value ='517'>Stalybridge and Hyde</option>
	<option value ='518'>Stevenage</option>
	<option value ='519'>Stirling</option>
	<option value ='520'>Stockport</option>
	<option value ='521'>Stockton North</option>
	<option value ='522'>Stockton South</option>
	<option value ='523'>Stoke-on-Trent Central</option>
	<option value ='524'>Stoke-on-Trent North</option>
	<option value ='525'>Stoke-on-Trent South</option>
	<option value ='526'>Stone</option>
	<option value ='527'>Stourbridge</option>
	<option value ='528'>Stratford-on-Avon</option>
	<option value ='529'>Streatham</option>
	<option value ='530'>Stretford and Urmston</option>
	<option value ='531'>Stroud</option>
	<option value ='532'>Central Suffolk and North Ipswich</option>
	<option value ='533'>Suffolk Coastal</option>
	<option value ='534'>South Suffolk</option>
	<option value ='535'>West Suffolk</option>
	<option value ='536'>Sunderland Central</option>
	<option value ='537'>East Surrey</option>
	<option value ='538'>Surrey Heath</option>
	<option value ='539'>South West Surrey</option>
	<option value ='540'>Mid Sussex</option>
	<option value ='541'>Sutton and Cheam</option>
	<option value ='542'>Sutton Coldfield</option>
	<option value ='543'>Swansea East</option>
	<option value ='544'>Swansea West</option>
	<option value ='545'>North Swindon</option>
	<option value ='546'>South Swindon</option>
	<option value ='547'>Tamworth</option>
	<option value ='548'>Tatton</option>
	<option value ='549'>Taunton Deane</option>
	<option value ='550'>Telford</option>
	<option value ='551'>Tewkesbury</option>
	<option value ='552'>North Thanet</option>
	<option value ='553'>South Thanet</option>
	<option value ='554'>Thirsk and Malton</option>
	<option value ='555'>Thornbury and Yate</option>
	<option value ='556'>Thurrock</option>
	<option value ='557'>Tiverton and Honiton</option>
	<option value ='558'>Tonbridge and Malling</option>
	<option value ='559'>Tooting</option>
	<option value ='560'>Torbay</option>
	<option value ='561'>Torfaen</option>
	<option value ='562'>Totnes</option>
	<option value ='563'>Tottenham</option>
	<option value ='564'>Truro and Falmouth</option>
	<option value ='565'>Tunbridge Wells</option>
	<option value ='566'>Twickenham</option>
	<option value ='567'>Tynemouth</option>
	<option value ='568'>North Tyneside</option>
	<option value ='569'>Uxbridge and South Ruislip</option>
	<option value ='570'>Vale of Clwyd</option>
	<option value ='571'>Vale of Glamorgan</option>
	<option value ='572'>Vauxhall</option>
	<option value ='573'>Wakefield</option>
	<option value ='574'>Wallasey</option>
	<option value ='575'>Walsall North</option>
	<option value ='576'>Walsall South</option>
	<option value ='577'>Walthamstow</option>
	<option value ='578'>Wansbeck</option>
	<option value ='579'>Wantage</option>
	<option value ='580'>Warley</option>
	<option value ='581'>Warrington North</option>
	<option value ='582'>Warrington South</option>
	<option value ='583'>Warwick and Leamington</option>
	<option value ='584'>North Warwickshire</option>
	<option value ='585'>Washington and Sunderland West</option>
	<option value ='586'>Watford</option>
	<option value ='587'>Waveney</option>
	<option value ='588'>Wealden</option>
	<option value ='589'>Weaver Vale</option>
	<option value ='590'>Wellingborough</option>
	<option value ='591'>Wells</option>
	<option value ='592'>Welwyn Hatfield</option>
	<option value ='593'>Wentworth and Dearne</option>
	<option value ='594'>West Bromwich East</option>
	<option value ='595'>West Bromwich West</option>
	<option value ='596'>West Ham</option>
	<option value ='597'>Westminster North</option>
	<option value ='598'>Westmorland and Lonsdale</option>
	<option value ='599'>Weston-Super-Mare</option>
	<option value ='600'>Wigan</option>
	<option value ='601'>North Wiltshire</option>
	<option value ='602'>South West Wiltshire</option>
	<option value ='603'>Wimbledon</option>
	<option value ='604'>Winchester</option>
	<option value ='605'>Windsor</option>
	<option value ='606'>Wirral South</option>
	<option value ='607'>Wirral West</option>
	<option value ='608'>Witham</option>
	<option value ='609'>Witney</option>
	<option value ='610'>Woking</option>
	<option value ='611'>Wokingham</option>
	<option value ='612'>Wolverhampton North East</option>
	<option value ='613'>Wolverhampton South East</option>
	<option value ='614'>Wolverhampton South West</option>
	<option value ='615'>Worcester</option>
	<option value ='616'>Mid Worcestershire</option>
	<option value ='617'>West Worcestershire</option>
	<option value ='618'>Workington</option>
	<option value ='619'>Worsley and Eccles South</option>
	<option value ='620'>East Worthing and Shoreham</option>
	<option value ='621'>Worthing West</option>
	<option value ='622'>The Wrekin</option>
	<option value ='623'>Wrexham</option>
	<option value ='624'>Wycombe</option>
	<option value ='625'>Wyre and Preston North</option>
	<option value ='626'>Wyre Forest</option>
	<option value ='627'>Wythenshawe and Sale East</option>
	<option value ='628'>Yeovil</option>
	<option value ='629'>Ynys M&ocirc;n</option>
	<option value ='630'>York Central</option>
	<option value ='631'>York Outer</option>
	<option value ='632'>East Yorkshire</option>
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
	  <input type="number" id="conpoll" name="conpoll" value = "45" onkeyup = "sum_to_one()" min = "0" max = "100">
	</div>
	<div style = "float: left;">
	  <label for="labpoll">Lab.</label>
	  <input type="number" id="labpoll" name="labpoll" value = "33" onkeyup = "sum_to_one()" min = "0" max = "100">
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
	  <input type="number" id="othpoll" name="othpoll" value = "6" onkeyup = "sum_to_one()" value = "0" min = "0" max = "100">
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

#### What do you mean, "could be as low as"?

All models have uncertainty in them. When we say that the result could
be as low as (say) 6%, we mean that there is a 2.5% chance that the
true result will be *lower* than this number. Conversely, hen we say
that the result could be as high as (say) 48%, we mean that there is a
2.5% chance that the true result will be *higher* than this
number. Put differently, the probability that the result will fall in
between these two figures is 95% (if the model is right).
