function varargout = Project(varargin)
% PROJECT MATLAB code for Project.fig
%      PROJECT, by itself, creates a new PROJECT or raises the existing
%      singleton*.
%
%      H = PROJECT returns the handle to a new PROJECT or the handle to
%      the existing singleton*.
%
%      PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT.M with the given input arguments.
%
%      PROJECT('Property','Value',...) creates a new PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Project

% Last Modified by GUIDE v2.5 26-Apr-2017 14:17:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @Project_OpeningFcn, ...
    'gui_OutputFcn',  @Project_OutputFcn, ...
    'gui_LayoutFcn',  [] , ...
    'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

% End initialization code - DO NOT EDIT


% --- Executes just before Project is made visible.
function Project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Project (see VARARGIN)

% Choose default command line output for Project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Project_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in StartSim_pb.
function StartSim_pb_Callback(hObject, eventdata, handles)
% hObject    handle to StartSim_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global DISPLAY;
DISPLAY = uicontrol(handles.figure1,'Style','text',...
    'Position',[11 1.846 37.6 1.846],...
    'BackgroundColor',[0.8 0.8 0.8],...
    'FontSize',12);

Crew = [5,6,7,8,9,10;4,5,6,7,8,9;0.5,0.5,0.5,0.5,0.50,0.5;3,3,2,2,1,3;1,1,1,2,1,1;0.5,0.5,0.5,0.5,0.5,0.5];
contents = get(handles.crew_select,'String');
crew_sltd = contents{get(handles.crew_select,'Value')};
crew_no_sltd = str2double(crew_sltd(6));
for i = 1:6
    if(crew_no_sltd==i)
        crew_time = Crew(:,i);
    end
end
set(handles.crew_select,'Enable','off');
Crew = [5,6,7,8,9,10;4,5,6,7,8,9;0.50,0.50,0.50,0.50,0.50,0.50;3,3,2,2,1,3;1,1,1,2,1,1;0.50,0.50,0.50,0.50,0.50,0.50;5,6,7,8,9,10;4,5,6,7,8,9;0.50,0.50,0.50,0.50,0.50,0.50;3,3,2,2,1,3;1,1,1,2,1,1;0.50,0.50,0.5,0.5,0.50,0.5]

button_string = get(handles.StartSim_pb,'string');
if strcmp(button_string,'Start')
    set(handles.StartSim_pb,'string','Resume');
elseif strcmp(button_string,'Resume')
    set(handles.StartSim_pb,'string','Start');
end


TIME = 0;
tic;
str = formatTimeFcn(TIME);
set(DISPLAY,'string',str);
htimer = timer('TimerFcn',@timerFcn,'Period',0.01,'ExecutionMode','FixedRate');
start(htimer);

function timerFcn(varargin)

set(DISPLAY,'String',string_used);


function time = timerFcns()
time = toc;

% --- Executes on selection change in connection_process.
function connection_process_Callback(hObject, eventdata, handles)
% hObject    handle to connection_process (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns connection_process contents as cell array
%        contents{get(hObject,'Value')} returns selected item from connection_process


% --- Executes during object creation, after setting all properties.
function connection_process_CreateFcn(hObject, eventdata, handles)
% hObject    handle to connection_process (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in dope_selection.
function dope_selection_Callback(hObject, eventdata, handles)
% hObject    handle to dope_selection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns dope_selection contents as cell array
%        contents{get(hObject,'Value')} returns selected item from dope_selection


% --- Executes during object creation, after setting all properties.
function dope_selection_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dope_selection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in crew_select.
function crew_select_Callback(hObject, eventdata, handles)
% hObject    handle to crew_select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns crew_select contents as cell array
%        contents{get(hObject,'Value')} returns selected item from crew_select


% --- Executes during object creation, after setting all properties.
function crew_select_CreateFcn(hObject, eventdata, handles)
% hObject    handle to crew_select (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function str = formatTimeFcn(float_time)
% Format the Time String
float_time = abs(float_time);
hrs = floor(float_time/3600);
mins = floor(float_time/60 - 60*hrs);
secs = float_time - 60*(mins + 60*hrs);
h = sprintf('%1.0f:',hrs);
m = sprintf('%1.0f:',mins);
s = sprintf('%1.1f',secs);
if hrs < 10
    h = sprintf('0%1.0f:',hrs);
end
if mins < 10
    m = sprintf('0%1.0f:',mins);
end
if secs < 9.9995
    s = sprintf('0%1.1f',secs);
end
str = [h m s];


% --- Executes during object creation, after setting all properties.
function timer_display_CreateFcn(hObject, eventdata, handles)
% hObject    handle to timer_display (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
