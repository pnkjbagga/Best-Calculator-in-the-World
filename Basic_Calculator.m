function Basic_Calculator(arg) 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                      %
%                    Best Calculator in the World                      %
%                                                                      %
%                     By :- Er. Pankaj Bagga                           %
%                          email : pnkjbagga@live.in                   %
%                          www.pankajbagga.com                         %
%                          +91 9779363902                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                      %
%                     E2MATRIX Research LAB                            %
%                                                                      %
%                    Email   : support@e2matrix.com                    %
%                    Website : www.e2matrix.com                        %
%                    Blog    : www.e2matrix.com/blog                   %
%                    Tel     : +91 9041262727                          %
%                                                                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
dos('msg.txt');

%-----------------------Clear old contents-----------------------
clear all;
clc;

%----------------------Function Initialize n GUI commands-------------
msgbox('E2MATRIX Research LAB')
flag=0;
%temp =0 ;

 figure_1 = figure('MenuBar','none','Name','Calculator','NumberTitle',...
    'off','Position',[280,320,260,245],'Color',[0.95 0.95 0.95]);

control_buttons = uipanel('BorderType','etchedin','ForegroundColor',...
    'Black','BackgroundColor',[0.95 0.95 0.95],'Units','characters',...
    'Title','','Position',[.5,.5,50,15],'HighlightColor',[1 1 1]);  

Switch_0 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','0','Position',[5 5 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s0);
Switch_1 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','1','Position',[5 45 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s1);
Switch_2 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','2','Position',[55 45 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s2);
Switch_3 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','3','Position',[105 45 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s3);
Switch_4 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','4','Position',[5 85 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s4);
Switch_5 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','5','Position',[55 85 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s5);
Switch_6 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','6','Position',[105 85 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s6);
Switch_7 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','7','Position',[5 125 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s7);
Switch_8 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','8','Position',[55 125 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s8);
Switch_9 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','9','Position',[105 125 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s9);
Switch_10 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','+','Position',[155 5 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s10);
Switch_11 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','-','Position',[155 45 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s11);
Switch_12 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','*','Position',[155 85 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s12);
Switch_13 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','/','Position',[155 125 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s13);
Switch_14 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','=','Position',[205 5 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s14);
Switch_15 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','1/x','Position',[205 45 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s15);
Switch_16 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','(','Position',[205 85 17 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s16);
Switch_36 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
   'String',')','Position',[227 85 17 25],'BackgroundColor',...
   [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
   'CallBack',@s36);
Switch_17 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','sqrt','Position',[205 125 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s17);
Switch_18 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','+/-','Position',[55 5 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s18);
Switch_19 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','.','Position',[105 5 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s19);
Switch_20 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','OFF','Position',[5 165 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',14,'HorizontalAlignment','Center',...
    'CallBack',@s20);
Switch_21 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','Backspace','Position',[80 165 90 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',12,'HorizontalAlignment','Center',...
    'CallBack',@s21);
Switch_22 =uicontrol('Parent',control_buttons,'Style','Pushbutton',...
    'String','C','Position',[180 165 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s22);

text_1 = uicontrol('Parent',control_buttons,'Style','Edit','String','',...
    'Position',[5 205 230 30],'HorizontalAlignment','Right',...
    'BackgroundColor',[.9 .9 .9],'ForegroundColor',[0 0 0],'FontSize',20);

drawnow;

f = uimenu('Label','Edit');
g = uimenu('Label','View');
h = uimenu('Label','Notepad','Callback' , @s25);
i = uimenu('Label','   Close','Callback',@s223);
j = uimenu('Label','     | (c) BAGGA  |','Callback',@s251);
    uimenu(f,'Label','Copy ','Accelerator','C', 'Callback',@s226) ;                    
    uimenu(f,'Label','Paste ','Accelerator','V' , 'Callback',@s227);                    
 %    uimenu(g,'Label','Standard','CreateFcn', @23);
  %   uimenu(g,'Label','Scientific','CreateFcn', @s124);
    uimenu(g,'Label','Contact' ,'Callback', @ s224) ;
    uimenu(g,'Label','Help Topics','Callback',@s225);
    uimenu(g,'Label','About Calculator','Callback', @s26);
  

drawnow;

%-----------------------function (flag) calling-------------------

  while(1)
      pause(0.1);
          
       if(flag==1)
                       
                       if (a=='0')
                        set(text_1,'String',num2str(in));
                       else 
                        d= strcat(a,num2str(in));
                        set(text_1,'string',d);
                         end
                   flag = 0;    
       end   
        
  end
   
  %----------------------function decleration----------------------%

msgbox('E2MATRIX Research LAB')
   function s0(varargin)
        flag=1;
        in=0;
        a=get(text_1,'string');
    end
    function s1(varargin)
        flag=1;
        in=1;
        a=get(text_1,'string');
    end
    function s2(varargin)
        flag=1;
        in=2;
        a=get(text_1,'string');
    end
    function s3(varargin)
        flag=1;
        in=3;
        a=get(text_1,'string');
    end
    function s4(varargin)
        flag=1;
        in=4;
        a=get(text_1,'string');
    end
    function s5(varargin)
        flag=1;
        in=5;
        a=get(text_1,'string');
    end
    function s6(varargin)
        flag=1;
        in=6;
        a=get(text_1,'string');
    end
    function s7(varargin)
        flag=1;
        in=7;
        a=get(text_1,'string');
    end
    function s8(varargin)
        flag=1;
        in=8;
        a=get(text_1,'string');
    end
    function s9(varargin)
        flag=1;
        in=9;
        a=get(text_1,'string');
    end
    function s10(varargin)
        flag=1;
        a=get(text_1,'string');
        in='+';
    end
    function s11(varargin)
        flag=1;
        a=get(text_1,'string');
        in='-';
    end
    function s12(varargin)
        flag=1;
        a=get(text_1,'string');
        in='*';
    end
    function s13(varargin)
        flag=1;
        a=get(text_1,'string');
        in='/';
    end
    function s14(varargin)
         flag=1;
         a=get(text_1,'string');
         b=str2num(a);
         in = num2str(b);
         a='0';
    end
    function s15(varargin)
             a = get(text_1,'string');
             b = str2num(a);
             in = 1/b;
             set(text_1,'string',in);
             
    end
    function s16(varargin)
             flag=1;
             a=get(text_1,'string');
             in='(';
    end
function s36(varargin)
             flag=1;
             a=get(text_1,'string');
             in=')';
    end
     function s17(varargin)
              flag = 1;
              a=get(text_1,'string');
              in='sqrt';
     end
     function s18(varargin)
         a=get(text_1,'string');
         d = str2num(a) ;
         in = -d ;
         set(text_1,'string',in);
     end
     function s19(varargin)
         flag=1;
         in='.';
         a=get(text_1,'string');
     end
     function s20(varargin)
          flag=0;
       set (text_1,'string', ' ');
     end
     function s21(varargin)
          flag=0;
          a = get(text_1,'string');
          b = length(a);
          c = b-1;
          a = a(1:c) ;
          set (text_1,'string',a);
     end
    function s22(varargin)
        flag=0;
       set (text_1,'string','0');
    end
    function s223(varargin)
        flag=0;
        exit 
       
    end

function s224(varargin)
     flag = 0 ;
     msgbox('Contact No :- 9779363902 ', 'call') ; 
end

    function s225(varargin)
        flag=0;
      msgbox('Press Keys to get Answer','HELP');
   end    
  function s25(varargin)
        flag = 0 ;
      dos('notepad') ; 
  end
  function s251(varargin)
        flag = 0 ;
       msgbox('RANA PANKAJ BHUSHAN BAGGA ', 'DETAIL'); 
  end
   function s226(varargin)
        flag=0;
        a = java.awt.Robot;
        a.keyPress(java.awt.event.KeyEvent.VK_CONTROL);
        a.keyPress(java.awt.event.KeyEvent.VK_C);
        a.keyRelease(java.awt.event.KeyEvent.VK_CONTROL); 
    end
   function s227(varargin)
        flag=0;
        a = java.awt.Robot;
        a.keyPress(java.awt.event.KeyEvent.VK_CONTROL);
        a.keyPress(java.awt.event.KeyEvent.VK_V);
        a.keyRelease(java.awt.event.KeyEvent.VK_CONTROL);
     end
  function s26(varargin)
        flag = 0 ;
        msgbox('This is a Calculator  made by Pankaj Bagga using MATLAB software ', 'ABOUT'); 
  end

 msgbox('www.e2matrix.com')
end







         