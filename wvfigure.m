function varargout = wvfigure(varargin)
% WVFIGURE MATLAB code for wvfigure.fig
%      WVFIGURE, by itself, creates a new WVFIGURE or raises the existing
%      singleton*.
%
%      H = WVFIGURE returns the handle to a new WVFIGURE or the handle to
%      the existing singleton*.
%
%      WVFIGURE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WVFIGURE.M with the given input arguments.
%
%      WVFIGURE('Property','Value',...) creates a new WVFIGURE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before wvfigure_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to wvfigure_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help wvfigure

% Last Modified by GUIDE v2.5 18-Oct-2014 17:14:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @wvfigure_OpeningFcn, ...
                   'gui_OutputFcn',  @wvfigure_OutputFcn, ...
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


% --- Executes just before wvfigure is made visible.
function wvfigure_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to wvfigure (see VARARGIN)

% Choose default command line output for wvfigure
handles.output = hObject;

% Update handles structure
handles.ui_field = 0;
handles.ui_plane = 0;
handles.ui_mode = 0;
handles.ui_style = 0;
guidata(hObject, handles);


% UIWAIT makes wvfigure wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = wvfigure_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function a_text_Callback(hObject, eventdata, handles)
% hObject    handle to a_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a_text as text
%        str2double(get(hObject,'String')) returns contents of a_text as a double


% --- Executes during object creation, after setting all properties.
function a_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b_text_Callback(hObject, eventdata, handles)
% hObject    handle to b_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b_text as text
%        str2double(get(hObject,'String')) returns contents of b_text as a double


% --- Executes during object creation, after setting all properties.
function b_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ep_text_Callback(hObject, eventdata, handles)
% hObject    handle to ep_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ep_text as text
%        str2double(get(hObject,'String')) returns contents of ep_text as a double


% --- Executes during object creation, after setting all properties.
function ep_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ep_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tanim_text_Callback(hObject, eventdata, handles)
% hObject    handle to tanim_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tanim_text as text
%        str2double(get(hObject,'String')) returns contents of tanim_text as a double


% --- Executes during object creation, after setting all properties.
function tanim_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tanim_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function n_text_Callback(hObject, eventdata, handles)
% hObject    handle to n_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n_text as text
%        str2double(get(hObject,'String')) returns contents of n_text as a double


% --- Executes during object creation, after setting all properties.
function n_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function m_text_Callback(hObject, eventdata, handles)
% hObject    handle to m_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m_text as text
%        str2double(get(hObject,'String')) returns contents of m_text as a double


% --- Executes during object creation, after setting all properties.
function m_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function f_text_Callback(hObject, eventdata, handles)
% hObject    handle to f_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of f_text as text
%        str2double(get(hObject,'String')) returns contents of f_text as a double


% --- Executes during object creation, after setting all properties.
function f_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in plot_btn.
function plot_btn_Callback(hObject, eventdata, handles)
% hObject    handle to plot_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.f_c_text , 'String' , '--');
set(handles.l_c_text, 'String', '--');    

ui_a = str2double(get(handles.a_text, 'String'));
if validate(ui_a) == 0
    ui_a = 2;
end
ui_b = str2double(get(handles.b_text, 'String'));
if validate(ui_b) == 0
    ui_b = 1;
end
ui_f = str2double(get(handles.f_text, 'String'));
if validate(ui_f) == 0
    ui_f = 3.2e8;
end

ui_m = str2double(get(handles.m_text, 'String'));
if validate(ui_m) == 0
    ui_m = 1;
end
ui_n = str2double(get(handles.n_text, 'String'));
if validate(ui_n) == 0
    ui_n = 2;
end
ui_tanim = str2double(get(handles.tanim_text, 'String'));
if validate(ui_tanim) == 0
    ui_tanim = 1e-7;
end
ui_ep = str2double(get(handles.ep_text, 'String'));
if validate(ui_ep) == 0
    ui_ep = 1;
end
ui_step = str2double(get(handles.step_text,'String'));
if validate(ui_step) == 0
    ui_step = 0.0000000001 ;
end
ui_fld = handles.ui_field;
ui_plane = handles.ui_plane;
ui_mode = handles.ui_mode;
ui_style = handles.ui_style;

[p, pf] = propagate(ui_f, ui_m, ui_n, ui_a, ui_b);
if p == 0
   ui_f = pf + 1;
   fprintf('Frequency changed to %g ', ui_f);
end

mtime = ui_tanim * 10 * ui_step;

    switch ui_style
        case 0 %Quiver
            for t = 0:ui_step:mtime
                
                switch ui_plane
                    case 0 %XY Plane
                    [A, B, u, v, f_c, l_c, al, bl, ttl] = graphxy (ui_a, ui_b, ui_ep, ui_f, ui_mode, ui_m, ui_n, ui_fld, t); 
                    case 1 %XZ Plane
                    [A, B, u, v, f_c, l_c, al, bl, ttl] = graphxz (ui_a, ui_b, ui_ep, ui_f, ui_mode, ui_m, ui_n, ui_fld, t); 
                    case 2 %YZ Plane
                    [A, B, u, v, f_c, l_c, al, bl, ttl] = graphyz (ui_a, ui_b, ui_ep, ui_f, ui_mode, ui_m, ui_n, ui_fld, t); 
                end                          
            
                axes(handles.grafica)
                quiver(A, B, u, v);
                axis([0 ui_a 0 ui_b]);
                title(ttl);
                xlabel(al);
                ylabel(bl);
                drawnow;
                pause(0.0000000001);  
            end
            
            set(handles.f_c_text , 'String' , f_c);
            set(handles.l_c_text, 'String', l_c);            
            
            
        case 1 %Surf
            
            for t = 0:ui_step:mtime

                switch ui_plane
                    case 0 %XY Plane
                    [A, B, v, f_c, l_c, al, bl, ttl] = xysurf (ui_a, ui_b, ui_ep, ui_f, ui_mode, ui_m, ui_n, ui_fld, t); 
                    case 1 %XZ Plane
                    [A, B, v, f_c, l_c, al, bl, ttl] = xzsurf (ui_a, ui_b, ui_ep, ui_f, ui_mode, ui_m, ui_n, ui_fld, t); 
                    case 2 %YZ Plane
                    [A, B, v, f_c, l_c, al, bl, ttl] = yzsurf (ui_a, ui_b, ui_ep, ui_f, ui_mode, ui_m, ui_n, ui_fld, t); 
                end                          

                axes(handles.grafica)
                surf(A, B, v);
                axis([0 ui_a 0 ui_b]);
                shading('interp');
                title(ttl);
                xlabel(al);
                ylabel(bl);
                colorbar;
                drawnow;
                pause(0.0000000001);  
            end

            set(handles.f_c_text , 'String' , f_c);
            set(handles.l_c_text, 'String', l_c);
             
    end


% --- Executes on button press in about_btn.
function about_btn_Callback(hObject, eventdata, handles)
% hObject    handle to about_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
aboutfigure;


% --- Executes on button press in close_btn.
function close_btn_Callback(hObject, eventdata, handles)
% hObject    handle to close_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in togglebutton2.
function togglebutton2_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton2


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1


% --- Executes during object creation, after setting all properties.
function field_panel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to field_panel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes when selected object is changed in field_panel.
function field_panel_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in field_panel 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)

    switch get (eventdata.NewValue, 'Tag')
        case 'e_btn'
            handles.ui_field = 0;
            guidata(hObject, handles);
            
        case 'h_btn'
            handles.ui_field = 1;
            guidata(hObject, handles);
    end


% --- Executes when selected object is changed in plane_panel.
function plane_panel_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in plane_panel 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
    switch get (eventdata.NewValue, 'Tag')
        case 'xy_btn'
            handles.ui_plane = 0;
            guidata(hObject, handles);
            set(handles.ep_lbl, 'String' , 'Evaluation Point [Z]');
           
        case 'xz_btn'
            handles.ui_plane = 1;
            guidata(hObject, handles);
            set(handles.ep_lbl, 'String' , 'Evaluation Point [Y]');
            
        case 'yz_btn'
            handles.ui_plane = 2;
            guidata(hObject, handles);
            set(handles.ep_lbl, 'String' , 'Evaluation Point [X]');
    end


% --- Executes when selected object is changed in mode_panel.
function mode_panel_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in mode_panel 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)

    switch get (eventdata.NewValue, 'Tag')
        case 'te_btn'
            handles.ui_mode = 0;
            guidata(hObject, handles);

        case 'tm_btn'
            handles.ui_mode = 1;
            guidata(hObject, handles);
    end


% --- Executes when selected object is changed in plot_panel.
function plot_panel_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in plot_panel 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
    switch get (eventdata.NewValue, 'Tag')
        case 'plotquiver_btn'
            handles.ui_style = 0;
            guidata(hObject, handles);

        case 'plotsurf_btn'
            handles.ui_style = 1;
            guidata(hObject, handles);
            
    end



function step_text_Callback(hObject, eventdata, handles)
% hObject    handle to step_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of step_text as text
%        str2double(get(hObject,'String')) returns contents of step_text as a double


% --- Executes during object creation, after setting all properties.
function step_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to step_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
