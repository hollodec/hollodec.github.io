var rdirichlet = function(a){
    var y = [];
    var sum_y = 0;
    // first loop with the gamma sample
    for (var i = 0; i < a.length; i++) {
	y[i] = jStat.gamma.sample(a[i], a.length, 1);
	sum_y = sum_y + y[i];
    }
    // second loop to normalize
    for (var i = 0; i < a.length; i++) {
	y[i] = y[i] / sum_y;
    }
    return y;
};

function indexOfMax(arr) {
    if (arr.length === 0) {
        return -1;
    }
    
    var max = arr[0];
    var maxIndex = 0;
    
    for (var i = 1; i < arr.length; i++) {
        if (arr[i] > max) {
	    maxIndex = i;
	    max = arr[i];
        }
    }
    
    return maxIndex;
}

function sum_to_one() {
    var conpollchg = Number(document.getElementById('conpoll').value);
    var labpollchg = Number(document.getElementById('labpoll').value);
    var libpollchg = Number(document.getElementById('libpoll').value);
    var natpollchg = Number(document.getElementById('natpoll').value);
    
    var pollsum = conpollchg + labpollchg + libpollchg + natpollchg;
    var otherpollchg = 100 - pollsum;
    
    document.getElementById('othpoll').value = otherpollchg;
    return true;
    
}

function valid_polls() {
    var conpollchg = Number(document.getElementById('conpoll').value) / 100;
    var labpollchg = Number(document.getElementById('labpoll').value) / 100;
    var libpollchg = Number(document.getElementById('libpoll').value) / 100;
    var natpollchg = Number(document.getElementById('natpoll').value) / 100;
    var othpollchg = Number(document.getElementById('othpoll').value) / 100;
    
    if (othpollchg < 0) {
	document.getElementById('negativevalues').style.display = "block";
	return(false);
    } else {
	document.getElementById('negativevalues').style.display = "none";
    }
    
    if (conpollchg > 0.57 || conpollchg < 0.17) {
	document.getElementById('conoos').style.display = "block";
    } else {
	document.getElementById('conoos').style.display = "none";
    }
    
    if (labpollchg > 0.63 || labpollchg < 0.18) {
	document.getElementById('laboos').style.display = "block";
    } else {
	document.getElementById('laboos').style.display = "none";
    }
    
    if (libpollchg < 0.02 || libpollchg > 0.51) {
	document.getElementById('liboos').style.display = "block";
    } else {
	document.getElementById('liboos').style.display = "none";
    }
    if (natpollchg > 0.13) {
	document.getElementById('natoos').style.display = "block";
    } else {
	document.getElementById('natoos').style.display = "none";
    }
    if (othpollchg > 0.13) {
	document.getElementById('othoos').style.display = "block";
    } else {
	document.getElementById('othoos').style.display = "none";
    }
    return(true);
}

function formhandler() {
    // Handle the seat related stuff
    // Get the position for the chosen seat
    // Subtract one for zero-indexing
    var pos = document.getElementById('select-seat').value - 1;
    // Slice the matrix myarr (from seat_data.js)
    var x = myarr[pos];
    
    // handle the poll related stuff
    var poll_check = valid_polls();
    if (poll_check == false) {
	return false;
    } else {
	// 
    }
    
    var conpollchg = document.getElementById('conpoll').value / 100;
    var labpollchg = document.getElementById('labpoll').value / 100;
    var libpollchg = document.getElementById('libpoll').value / 100;
    var natpollchg = document.getElementById('natpoll').value / 100;
    var othpollchg = document.getElementById('othpoll').value / 100;
    
    // subtract 2019 values
    var conpollchg = conpollchg - 0.447287;
    var labpollchg = labpollchg - 0.3288747;
    var libpollchg = libpollchg - 0.1183808;
    var natpollchg = natpollchg - 0.04469667;
    var othpollchg = othpollchg - 0.06076081;


    // standardize these (don't actually need conpollchg or natpollchg)
    labpollchg = (labpollchg - 0.002496) / 0.07426;
    libpollchg = (libpollchg - 0.01137) / 0.0814;
    othpollchg = (othpollchg - 0.005851) / 0.0235;
    
    // Insert these into the x variable at the right positions
    x[8] = labpollchg;
    x[9] = othpollchg;
    x[18] = libpollchg;
    
    // deal with candidacy
    var ctry = pretty[pos][6];
    
    // This needs to be rewritten to get the dimensions of the coef matrix
    var ndraws = fe_lab.length;
    var outs = new Array(ndraws);
    for (var i = 1; i <= ndraws; i++) { 
	// Start multiplying x by coefficients
	var alpha_con = 0;
	var alpha_lab = math.dot(x, fe_lab[i-1]);
	var alpha_lib = math.dot(x, fe_lib[i-1]);
	var alpha_nat = math.dot(x, fe_nat[i-1]);
	var alpha_oth = math.dot(x, fe_oth[i-1]);
	// exponentiate
	
	alpha_con = math.exp(alpha_con);
	alpha_lab = math.exp(alpha_lab);
	alpha_lib = math.exp(alpha_lib);
	alpha_nat = math.exp(alpha_nat);
	alpha_oth = math.exp(alpha_oth);

	
	// Multiply by phi to get mu
	var local_phi = phi[i-1][0] + x[5] * phi[i-1][4];
	local_phi = math.exp(local_phi);
	var mu_con = local_phi * alpha_con;
	var mu_lab = local_phi * alpha_lab;
	var mu_lib = local_phi * alpha_lib;
	var mu_nat = local_phi * alpha_nat;
	var mu_oth = local_phi * alpha_oth;
	
	// generate the seat shares
	var tmp = rdirichlet([mu_con,
			      mu_lab,
			      mu_lib,
			      mu_nat,
			      mu_oth]);
	
	// zero out predictions where candidates not standing
	if (ctry == "England") {
	    tmp[3] = 0;
	    var tmpsum = tmp.reduce(function(a, b) { return a + b; }, 0);
	    for (var j = 0; j < 5; j++) { 
		tmp[j] = tmp[j] / tmpsum;
	    }
	}
	
	outs[i-1] = tmp;
	
    }
    
    // display the mean result
    var pe = [math.mean(outs, 0)][0];
    
    document.getElementById("conpe").innerHTML = Math.round(100 * pe[0]);
    document.getElementById("labpe").innerHTML = Math.round(100 * pe[1]);
    document.getElementById("libpe").innerHTML = Math.round(100 * pe[2]);
    document.getElementById("natpe").innerHTML = Math.round(100 * pe[3]);
    document.getElementById("othpe").innerHTML = Math.round(100 * pe[4]);
    
    // Get quantiles
    document.getElementById("conlo").innerHTML =
	Math.round(100 *
		   math.quantileSeq(math.column(outs, 0), 0.025));
    document.getElementById("lablo").innerHTML =
	Math.round(100 *
		   math.quantileSeq(math.column(outs, 1), 0.025));
    document.getElementById("liblo").innerHTML =
	Math.round(100 *
		   math.quantileSeq(math.column(outs, 2), 0.025));
    document.getElementById("natlo").innerHTML =
	Math.round(100 *
		   math.quantileSeq(math.column(outs, 3), 0.025));
    document.getElementById("othlo").innerHTML =
	Math.round(100 *
		   math.quantileSeq(math.column(outs, 4), 0.025));
    
    document.getElementById("conhi").innerHTML =
	Math.round(100 *
		   math.quantileSeq(math.column(outs, 0), 1 - 0.025));
    document.getElementById("labhi").innerHTML =
	Math.round(100 *
		   math.quantileSeq(math.column(outs, 1), 1 - 0.025));
    document.getElementById("libhi").innerHTML =
	Math.round(100 *
		   math.quantileSeq(math.column(outs, 2), 1 - 0.025));
    document.getElementById("nathi").innerHTML =
	Math.round(100 *
		   math.quantileSeq(math.column(outs, 3), 1 - 0.025));
    document.getElementById("othhi").innerHTML =
	Math.round(100 *
		   math.quantileSeq(math.column(outs, 4), 1 - 0.025));
    
    // get win probability
    var win_ctr = [0, 0, 0, 0, 0];
    for (var i = 0; i < ndraws; i++) { 
	win_ctr[indexOfMax(outs[i])]++;
    }
    for (var i = 0; i < 5; i++) {
	win_ctr[i] = win_ctr[i] / ndraws;
    }
    
    document.getElementById("conpr").innerHTML = Math.round(100 * win_ctr[0]);
    document.getElementById("labpr").innerHTML = Math.round(100 * win_ctr[1]);
    document.getElementById("libpr").innerHTML = Math.round(100 * win_ctr[2]);
    document.getElementById("natpr").innerHTML = Math.round(100 * win_ctr[3]);
    document.getElementById("othpr").innerHTML = Math.round(100 * win_ctr[4]);
    
    // display the last result
    var old = pretty[pos];
    
    document.getElementById("conold").innerHTML = Math.round(100 * old[0]);
    document.getElementById("labold").innerHTML = Math.round(100 * old[1]);
    document.getElementById("libold").innerHTML = Math.round(100 * old[2]);
    document.getElementById("natold").innerHTML = Math.round(100 * old[3]);
    document.getElementById("othold").innerHTML = Math.round(100 * old[4]);
    
    // reset the place?
    
    // return false so the page doesn't reload
    return false;
}

