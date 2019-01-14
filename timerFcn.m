function timerFcn(app,varargin)
global T1;
global TIME;
time_elapsed = etime(clock,T1);
str = formatTimeFcn(TIME + time_elapsed);
app.timer_display.Value = str;
end