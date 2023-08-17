function varargout = EDO_interfaz(varargin)
% EDO_INTERFAZ MATLAB code for EDO_interfaz.fig
%      EDO_INTERFAZ, by itself, creates a new EDO_INTERFAZ or raises the existing
%      singleton*.
%
%      H = EDO_INTERFAZ returns the handle to a new EDO_INTERFAZ or the handle to
%      the existing singleton*.
%
%      EDO_INTERFAZ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EDO_INTERFAZ.M with the given input arguments.
%
%      EDO_INTERFAZ('Property','Value',...) creates a new EDO_INTERFAZ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EDO_interfaz_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EDO_interfaz_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help EDO_interfaz

% Last Modified by GUIDE v2.5 29-Nov-2020 14:43:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EDO_interfaz_OpeningFcn, ...
                   'gui_OutputFcn',  @EDO_interfaz_OutputFcn, ...
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


% --- Executes just before EDO_interfaz is made visible.
function EDO_interfaz_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to EDO_interfaz (see VARARGIN)

% Choose default command line output for EDO_interfaz
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes EDO_interfaz wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = EDO_interfaz_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
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



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
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
P=get(handles.edit1,'string') ;
Q=get(handles.edit2,'string') ;
R=get(handles.edit3,'string') ;
a=str2num(get(handles.edit4,'string')) ;
b=str2num(get(handles.edit5,'string')) ;
xa=str2num(get(handles.edit6,'string')) ;
xb=str2num(get(handles.edit7,'string')) ;
N=str2num(get(handles.edit8,'string')) ;
Opcion = get(handles.popupmenu2,'Value') ;
p=inline(P) ;
q=inline(Q) ;
r=inline(R) ;

h = (b-a)/N; % Paso

if Opcion==1
t=a+h;
for k = 1 : N - 1
    if k == 1
        A(1,1) = 2 + h^2*q(t);
        A(1,2) = h*p(t)/2 - 1;
        B(1,1) = -h^2*r(t) + xa*(h*p(t)/2 + 1);
    end
    if (k ~= 1) && (k ~= N-1)
        A(k,k-1) = -h*p(t)/2 - 1;
        A(k,k) = 2 + h^2*q(t);
        A(k,k+1) = h*p(t)/2 - 1;
        B(k,1) = -h^2*r(t);
    end
    if k == N-1
        A(k,k-1) = -h*p(t)/2 - 1;
        A(k,k) = 2 + h^2*q(t);
        B(N-1,1) = -h^2*r(t) + xb*(-h*p(t)/2 + 1);
    end
   
    C(k+1,1) = t;
    
    t = t + h;
end
C(1,1) = a;
C(N+1,1) = b;

Y = inv(A)*B;

for k = 1 : N-1
    V(k+1,1) = Y(k,1);
end

V(1,1) = xa;
V(N+1,1) = xb;

X = [C V];

t = a;
if(get(handles.radiobutton1,'Value'))
    FE = get(handles.edit9,'string') ;
    % '1.25 + 0.4860896526 .* t - 2.25 .* t.^2 + 2 .* t * atan(t) + 1/2 *(t.^2 - 1) * log(1+t.^2)'
    XE = inline(FE);
    for k = 1: N+1
        
        X(k,3) = XE(t);
        X(k,4) = abs(X(k,2)-X(k,3));    
        t = t + h;
    end

    set(handles.uitable1,'Data',X,...
        'ColumnName',{'t','x_i','x_r','|x_r-x_i|'});

    axes(handles.axes1)
    plot(X(:,1),X(:,2),'b',X(:,1),X(:,3),'r')
    axis tight ; grid on ;
    legend('y=x(t)','y=xr(t)')
    xlabel('t')
    ylabel('x(t)')
    title('Gráfica Solución')
else
    set(handles.uitable1,'Data',X,...
        'ColumnName',{'t','x_i'});

    axes(handles.axes1)
    plot(X(:,1),X(:,2),'b')
    legend('y=x(t)')
    axis tight ; grid on
    xlabel('t')
    ylabel('x(t)')
    title('Gráfica Solución')
end


else
   %Primer sistema
    syms t; syms x; syms y;
    u(t,x,y) = p(t)*y + q(t)*x + r(t);
    %Segundo sistema
    v(t,x,y) = p(t)*y + q(t)*x;
    
    aux(t,x,y) = y;
    
    U = func(aux,u,a,xa,0,N,b);
    V = func(aux,v,a,0,1,N,b);
    W = (xb-U(size(U,2)))/(V(size(V,2)))*V;
    X = U + W;
    intervalo = a:(b-a)/N:b;
    if(get(handles.radiobutton1,'Value'))
        FE = get(handles.edit9,'string') ;
        % '1.25 + 0.4860896526 .* t - 2.25 .* t.^2 + 2 .* t * atan(t) + 1/2 *(t.^2 - 1) * log(1+t.^2)'
        XE = inline(FE);
        j = 1;
        for i = a:(b-a)/N:b
            Xe(j) = XE(i);
            j = j + 1;
        end
        Tabla = [intervalo' X' Xe' abs(X-Xe)'];

        set(handles.uitable1,'Data',Tabla,...
            'ColumnName',{'t_j','x_j','x(t_j)','|x(t_j)-x_j|'});
        
        axes(handles.axes1)
        plot(intervalo,X,'k',intervalo,W,'r',intervalo,U,'b',intervalo,Xe,'g');
        axis tight;grid on;
        xlabel('t');ylabel('y');legend('y=x(t)','y=w(t)','y=u(t)','y=x')
        title('Gráfica Solución')
    else
        Tabla = [intervalo' X'];

        set(handles.uitable1,'Data',Tabla,...
            'ColumnName',{'t_j','x_j'});
        axes(handles.axes1)
        plot(intervalo,X,'k',intervalo,W,'r',intervalo,U,'b');
        axis tight;grid on;
        xlabel('t');ylabel('y');legend('y=x(t)','y=w(t)','y=u(t)')
        title('Gráfica Solución')
    end
    
    
end

    

% --- Executes when entered data in editable cell(s) in uitable1.
function uitable1_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.radiobutton1,'Value'))
    set(handles.edit9,'Visible','on');
    set(handles.text14,'Visible','on');
else
    set(handles.edit9,'Visible','off');
    set(handles.text14,'Visible','off');
end
% Hint: get(hObject,'Value') returns toggle state of radiobutton1



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
