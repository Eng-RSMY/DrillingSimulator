function [result, logs] = activities(app,ACT,log_msg,time)
switch(ACT)
    case 1
        logs = sprintf('%sStep 1... %0.3f sec\n',log_msg,time);
        app.Log.Value = logs;
        result = ACT+1;
    case 2
        logs = sprintf('%sStep 2... %0.3f sec\n',log_msg,time);
        app.Log.Value = logs;
        result = ACT+1;
    case 3
        logs = sprintf('%sStep 3... %0.3f sec\n',log_msg,time);
        app.Log.Value = logs;
        result = ACT+1;
    case 4
        logs = sprintf('%sStep 4... %0.3f sec\n',log_msg,time);
        app.Log.Value = logs;
        result = ACT+1;
    case 5
        logs = sprintf('%sStep 5... %0.3f sec\n',log_msg,time);
        app.Log.Value = logs;
        result = ACT+1;
    case 6
        logs = sprintf('%sStep 6... %0.3f sec\n',log_msg,time);
        app.Log.Value = logs;
        result = ACT+1;
    case 7
        logs = sprintf('%Step 7... %0.3f sec\n',log_msg,time);
        app.Log.Value = log_msg;
        result = ACT+1;
    case 8
        logs = sprintf('%sStep 8... %0.3f sec\n',log_msg,time);
        app.Log.Value = logs;
        result = ACT+1;
    case 9
        logs = sprintf('%sStep 9... %0.3f sec\n',log_msg,time);
        app.Log.Value = logs;
        result = ACT+1;
    case 10
        logs = sprintf('%sStep 10... %0.3f sec\n',log_msg,time);
        app.Log.Value = logs;
        result = ACT+1;
    case 11
        logs = sprintf('%sStep 11... %0.3f sec\n',log_msg,time);
        app.Log.Value = logs;
        result = ACT+1;
end
