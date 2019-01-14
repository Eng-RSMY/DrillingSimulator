function str = formatTimeFcn(float_time)
% Format the Time String
float_time = abs(float_time);
hrs = floor(float_time/3600);
mins = floor(float_time/60 - 60*hrs);
secs = float_time - 60*(mins + 60*hrs);
h = sprintf('%1.0f:',hrs);
m = sprintf('%1.0f:',mins);
s = sprintf('%1.3f',secs);
if hrs < 10
    h = sprintf('0%1.0f:',hrs);
end
if mins < 10
    m = sprintf('0%1.0f:',mins);
end
if secs < 9.9995
    s = sprintf('0%1.3f',secs);
end
str = [h m s];
end