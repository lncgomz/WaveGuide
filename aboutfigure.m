function varargout = aboutfigure(varargin)
% ABOUTFIGURE MATLAB code for aboutfigure.fig
%      ABOUTFIGURE, by itself, creates a new ABOUTFIGURE or raises the existing
%      singleton*.
%
%      H = ABOUTFIGURE returns the handle to a new ABOUTFIGURE or the handle to
%      the existing singleton*.
%
%      ABOUTFIGURE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ABOUTFIGURE.M with the given input arguments.
%
%      ABOUTFIGURE('Property','Value',...) creates a new ABOUTFIGURE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before aboutfigure_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to aboutfigure_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help aboutfigure

% Last Modified by GUIDE v2.5 18-Oct-2014 18:09:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @aboutfigure_OpeningFcn, ...
                   'gui_OutputFcn',  @aboutfigure_OutputFcn, ...
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


% --- Executes just before aboutfigure is made visible.
function aboutfigure_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to aboutfigure (see VARARGIN)

% Choose default command line output for aboutfigure
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
axes(handles.logo);
imshow('telecom.jpg');
axes(handles.logo2);
imshow('ing.png');

% UIWAIT makes aboutfigure wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = aboutfigure_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function logo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to logo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate logo
