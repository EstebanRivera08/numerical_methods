

function varargout = Ajustedecurvasinterfaz(varargin)
% AJUSTEDECURVASINTERFAZ MATLAB code for Ajustedecurvasinterfaz.fig
%      AJUSTEDECURVASINTERFAZ, by itself, creates a new AJUSTEDECURVASINTERFAZ or raises the existing
%      singleton*.
%
%      H = AJUSTEDECURVASINTERFAZ returns the handle to a new AJUSTEDECURVASINTERFAZ or the handle to
%      the existing singleton*.
%
%      AJUSTEDECURVASINTERFAZ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AJUSTEDECURVASINTERFAZ.M with the given input arguments.
%
%      AJUSTEDECURVASINTERFAZ('Property','Value',...) creates a new AJUSTEDECURVASINTERFAZ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Ajustedecurvasinterfaz_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Ajustedecurvasinterfaz_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Ajustedecurvasinterfaz

% Last Modified by GUIDE v2.5 25-Oct-2020 15:44:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Ajustedecurvasinterfaz_OpeningFcn, ...
                   'gui_OutputFcn',  @Ajustedecurvasinterfaz_OutputFcn, ...
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


% --- Executes just before Ajustedecurvasinterfaz is made visible.
function Ajustedecurvasinterfaz_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Ajustedecurvasinterfaz (see VARARGIN)

% Choose default command line output for Ajustedecurvasinterfaz
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Ajustedecurvasinterfaz wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Ajustedecurvasinterfaz_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
N=str2num(get(hObject,'String')) ;
L=num2cell(50*ones(1,N)) ;
set(handles.uitable1,'Data',cell(N,2),'ColumnEditable',true,...
    'ColumnName',{'xi','yi'},'ColumnWidth',L) ;
set(handles.uitable2,'Data',cell(N,5),...
    'ColumnName',{'i','xi','yi','f(xi)','|f(xi)-yi|'},'ColumnWidth',L) ;

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opcion=get(handles.popupmenu1,'Value') ;
N=str2double(get(handles.edit1,'String')) ;
xy=str2double(get(handles.uitable1,'Data')) ;
xi=xy(:,1) ;
yi=xy(:,2) ;
n=1:N ;
M=str2double(get(handles.edit2,'string')) ;

syms x
switch opcion
   
    case 2 % polinomial
        
  for j=1:M+1
    for i=1:N
       F(i,j)=xi(i,1)^(j-1) ;
    end
  end
    Y=F'*yi ;
    A=F'*F ;
    C=inv(A)*Y ;
    
   f=0 ; 
  for i=1:M+1
      f=f+C(i,1)*x^(i-1) ;
  end

    case 3 %potencial
             xMy=0 ;
  for i=1:N
     xMy=xMy+xi(i,1)^M*yi(i,1) ;
     x2M=sum(xi.^(2*M)) ;
  end

   A=xMy/x2M ;    
   f=(A*x^M) ;

    otherwise %Lineal o exponencial
        
    if opcion==4
       yi=log(yi) ;
    end
    
    sumxiyi=0 ;
 for i=1:N
   sumxiyi=sumxiyi+xi(i,1)*yi(i,1) ;
 end
   sumxi=sum(xi) ;
   sumyi=sum(yi) ;
   sumxi2=sum(xi.^2) ;
   
   m=(N*sumxiyi-sumxi*sumyi)/(N*sumxi2-sumxi^2) ;
   b=(sumyi*sumxi2-sumxi*sumxiyi)/(N*sumxi2-sumxi^2) ;
   
   if opcion==1
   f=(m*x+b) ;
   lineal=[n' xi yi xi.^2 xi.*yi; NaN sumxi sumyi sumxi2 sumxiyi] ;
   lineal=array2table(lineal, 'VariableNames',...
    {'i','xi','yi','xi^2','xi*yi'}) 

  else
   c=exp(b) ;
   f=(c*exp(m*x)) ;
   yi_=exp(yi) ; sumyi_=sum(yi_) ;
   lineal=[n' xi yi_ yi xi.^2 xi.*yi; NaN sumxi sumyi_ sumyi sumxi2 sumxiyi] ;
   lineal=array2table(lineal, 'VariableNames',...
    {'i','xi','yi','Yi=ln(yi)','xi^2','xi*Yi'})    
   yi=yi_ ;
   end
 
end

fx=char(f) ;
set(handles.edit3,'string',fx)
f=inline(f) ;

results=[n' xi yi f(xi) abs(yi-f(xi))] ;
set(handles.uitable2,'Data',results,...
    'ColumnName',{'i','xi','yi','f(xi)','|f(xi)-yi|'}) ;

X=linspace(min(xi),max(xi),31) ;
axes(handles.axes1)
plot(xi,yi,'ro',X,f(X),'k')
title('CURVA DE AJUSTE')
xlabel('x') ; ylabel('yi,f(x)') ;
format shortG

   disp('La función que ajusta su curva es')
   pretty(expand(f(x)))

function uitable1_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to uitable2 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)

function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable2 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)

function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
