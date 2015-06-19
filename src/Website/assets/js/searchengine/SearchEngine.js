function GetResults() {
    var input = document.getElementById('sb_form_q').value;
    if ((input.lastIndexOf("M", 0) === 0)||(input.lastIndexOf("m", 0) === 0)) {
        document.getElementById('sb_form').action = "/mortgages.aspx";
        window.location.href = 'mortgages.aspx';
    }
    else {
        document.getElementById('sb_form').action = "/officesupplies.aspx";
        window.location.href = 'officesupplies.aspx';
    }
}