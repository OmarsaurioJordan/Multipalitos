//dice que instancias seran visibles para pintarlas

var xv, yv, xw, yh;
xv = view_xview[0] - 96;
yv = view_yview[0] - 48;
xw = view_xview[0] + view_wview[0] + 96;
yh = view_yview[0] + view_hview[0] + 192;

with(o_objeto){
    if(x > xv and x < xw and y > yv and y < yh){
        visible = true;
    }
    else{
        visible = false;
    }
}
