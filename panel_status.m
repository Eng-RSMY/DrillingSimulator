function panel_status(app,ls_v,ls_c,rs_v,rs_c,tdb_v,tdb_c,tdt_v,tdt_c,bp_v,bp_c,...
    bpb_v,bpb_c,p_v,p_c,pb_v,pb_c,pp_v,pp_c,p1_v,p1_c,p1p_v,p1p_c,p1b_v,p1b_c,lt_v,lt_c,rt_v,rt_c)
app.left_slip.Visible = ls_v;
app.left_slip.BackgroundColor = ls_c;
app.right_slip.Visible = rs_v;
app.right_slip.BackgroundColor = rs_c;
app.Topdrive_bottom.Visible = tdb_v;
app.Topdrive_bottom.BackgroundColor = tdb_c;
app.Topdrive_top.Visible = tdt_v;
app.Topdrive_top.BackgroundColor = tdt_c;
app.bottom_pipe.Visible = bp_v;
app.bottom_pipe.BackgroundColor = bp_c;
app.bottom_pipe_box.Visible = bpb_v;
app.bottom_pipe_box.BackgroundColor = bpb_c;
app.pipe.Visible = p_v;
app.pipe.BackgroundColor = p_c;
app.pipe_box.Visible = pb_v;
app.pipe_box.BackgroundColor = pb_c;
app.pipe_pin.Visible = pp_v;
app.pipe_pin.BackgroundColor = pp_c;
app.pipe1.Visible = p1_v;
app.pipe1.BackgroundColor = p1_c;
app.pipe1_pin.Visible = p1p_v;
app.pipe1_pin.BackgroundColor = p1p_c;
app.pipe1_box.Visible = p1b_v;
app.pipe1_box.BackgroundColor = p1b_c;
app.tong_left.Visible = lt_v;
app.tong_left.BackgroundColor = lt_c;
app.tong_right.Visible = rt_v;
app.tong_right.BackgroundColor = rt_c;
end
