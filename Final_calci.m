function Final_calci(arg) 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                      %
%                    Best Calculator in the World                      %
%                                                                      %
%                     By :- Er. Pankaj Bagga                           %
%                          email : pnkjbagga@live.in                   %
%                          www.pankajbagga.com                         %
%                          +91 9779363902                               %
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

%%

msgbox('E2MATRIX Research LAB')
%-----------------------Clear old contents-----------------------
clear all;
clc;

%----------------------Function Initialize n GUI commands-------------
 
 a = 0;
 flag = 0 ;
flag1 = 0 ;
flag2 = 0 ;
flag3 = 0 ;
% temp = 0 ;
edit_2 =0 ;
edit_3 = 0;

control_buttons_2=0;
   
    function calci()
        close
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
   'CallBack',@s116);
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

text_1 = uicontrol('Parent',control_buttons,'Style','Edit','string','',...
    'Position',[5 205 230 30],'HorizontalAlignment','Right',...
    'BackgroundColor',[.9 .9 .9],'ForegroundColor',[0 0 0],'FontSize',20);

drawnow;
    
f = uimenu('Label','Edit');
g = uimenu('Label','View');
h = uimenu('Label','Notepad ','Callback' , @s25);
i = uimenu('Label','Close ','Callback',@s823);
j = uimenu('Label','| (c) BAGGA|','Callback',@s851);
    uimenu(f,'Label','Copy ','Accelerator','C', 'Callback',@s826) ;                    
    uimenu(f,'Label','Paste ','Accelerator','V' , 'Callback',@s827);                    
    uimenu(g,'Label','Standard','Callback', @s813);
    uimenu(g,'Label','Scientific','Callback', @s124);
    uimenu(g,'Label','Contact' ,'Callback', @ s1124) ;
    uimenu(g,'Label','Help Topics','Callback',@s125);
    uimenu(g,'Label','About Calculator','Callback', @s26);
  
drawnow;
flag2 =1;
    end
%-----------------------function (flag) calling-------------------

  while(1)
      
      pause(0.1);
          
       if(flag==1)
                       
                       if (a=='0')
                        set(text_1,'string',num2str(in));
                       else 
                        d = strcat(a,num2str(in));
                        set(text_1,'string',d);
                       end
                       flag = 0;    
       end   
                           
       if (flag1==1) 
           flag1 = 0; 
           sctific()
        end
        
     if (flag2==0)
       % flag2 =1;
        calci()
     end
     
         if (flag3==1)
             email()
         end
         
  end
   
  %----------------------function decleration----------------------%

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
function s116(varargin)
             flag=1;
             a=get(text_1,'string');
             in=')';
    end
     function s17(varargin)
              flag = 0;
         a = get(text_1,'string') ;
         a = str2num(a);
         b = sqrt(a);
         set (text_1,'string', b) ; 
     end
     function s18(varargin)
         flag =0 ;
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
    function s823(varargin)
       % flag=0;
        exit 
       
    end

function s1124(varargin)
     %flag = 0 ;
     msgbox('Contact No :- 9779363902 ', 'call') ; 
end

    function s125(varargin)
      %  flag=0;
      msgbox('Press Keys to get Answer','HELP');
   end    
  function s25(varargin)
       % flag = 0 ;
      dos('notepad') ;
  end
  function s851(varargin)
      %  flag = 0 ;
       msgbox('RANA PANKAJ BHUSHAN BAGGA ', 'DETAIL'); 
  end
   function s826(varargin)
        flag=0;
        a = java.awt.Robot;
        a.keyPress(java.awt.event.KeyEvent.VK_CONTROL);
        a.keyPress(java.awt.event.KeyEvent.VK_C);
        a.keyRelease(java.awt.event.KeyEvent.VK_CONTROL); 
    end
   function s827(varargin)
        flag=0;
        a = java.awt.Robot;
        a.keyPress(java.awt.event.KeyEvent.VK_CONTROL);
        a.keyPress(java.awt.event.KeyEvent.VK_V);
        a.keyRelease(java.awt.event.KeyEvent.VK_CONTROL);
     end
  function s26(varargin)
       % flag = 0 ;
        msgbox('This is a Calculator  made by Pankaj Bagga using MATLAB software ', 'ABOUT'); 
  end
    function s124(varargin)
        flag1 = 1;
    end

    function s813(varargin)
         flag2 = 0;
    end

    function s49(varargin)
          flag = 0;
          a = get(text_1,'string') ;
          a = str2num(a) ;
           b = dec2hex(a) ;
           b = num2str(b)  ;
           set (text_1,'string',b) ;  
     end

   function s50(varargin)
         flag = 0;
          a = get(text_1,'string') ;
          b = hex2dec(a) ;
           set (text_1,'string', b) ; 
   end
function s51(varargin)
         flag = 0;
          mail = 'pnkjbagga@gmail.com' ;
          password = 'L0B0243L' ;
         setpref('Internet','E_mail',mail);
        setpref('Internet','SMTP_Server','smtp.gmail.com');
        setpref('Internet','SMTP_Username',mail);
        setpref('Internet','SMTP_Password',password);
        props = java.lang.System.getProperties;
        props.setProperty('mail.smtp.auth','true');
        props.setProperty('mail.smtp.socketFactory.class', 'javax.net.ssl.SSLSocketFactory');
        props.setProperty('mail.smtp.socketFactory.port','465');
        a= get(edit_2, 'string');
        b = get(edit_3,  'string');
        sendmail(a,'Test from MATLAB', b);
        set(edit_2, 'string', ' ');
        set(edit_3, 'string' , ' ');
        msgbox('Your message sent');
   end
    function s223(varargin)
         flag = 1;
         a=get(text_1,'string');
         in='^2';
    end

    function s224(varargin)
         flag = 1;
         a=get(text_1,'string');
         in='^3';
    end
 
   function s225(varargin)
         flag = 1;
         a=get(text_1,'string');
         in='^(1/2)';
   end
 
   function s226(varargin)
         flag = 1;
         a=get(text_1,'string');
         in='^(1/3)';
   end
 
    function s227(varargin)
         flag = 0;
         a=get(text_1,'string');
         a = str2num(a);
         b = abs(a);
         set (text_1,'string', b) ; 
      end
 
   function s228(varargin)
         flag = 0;
         a = get(text_1,'string') ;
         a = str2num(a);
         b = factorial(a);
         set (text_1,'string', b) ;  
   end
 
   function s229(varargin)
         flag = 1;
         a=get(text_1,'string');
         in='10^';
   end
 
   function s230(varargin)
         flag = 0;
         a=get(text_1,'string');
         a = str2num(a);
         b = log(a);
         set (text_1,'string', b) ; 
    end

 function s231(varargin)
         flag = 0;
         a=get(text_1,'string');
         a = str2num(a);
         b = sin(a);
         set (text_1,'string', b) ; 
 end
 
   function s232(varargin)
         flag = 0;
         a=get(text_1,'string');
         a = str2num(a);
         b = cos(a);
         set (text_1,'string', b) ; 
     end
 
    function s233(varargin)
         flag = 0;
         a=get(text_1,'string');
         a = str2num(a);
         b = tan(a);
         set (text_1,'string', b) ; 
    end
 
    function s234(varargin)
         flag = 0;
         dos('calc') ;
    end
 
    function s235(varargin)
         flag = 0;
          a = get(text_1,'string');
          b= str2num(a) ;
          b = native2unicode(b) ;
          set (text_1,'string', b);
   end
 
     function s236(varargin)
         flag = 1;
         a=get(text_1,'string');
         in=' i ';
     end
 function s237(varargin)
         flag = 0;
         dos('mspaint');
 end
 function s238(varargin)
         flag = 0;
          [filename, pathname] = uigetfile('*.wav');   
         [d fs] = wavread( strcat(pathname, filename));
         sound(d,fs,8);
 end
function s239(varargin)
         flag = 0;
         clear all;
 end
function s240(varargin)
         flag = 0;
          a = get(text_1,'string') ;
          a = a+1 ;
         b = native2unicode(a) ;
         set (text_1,'string', b) ;  
end
function s241(varargin)
         flag = 1;
         a=get(text_1,'string');
         in='o';
end
function s242(varargin)
         flag = 1;
         a=get(text_1,'string');
         in='t';
end
function s243(varargin)
         flag = 1;
         a=get(text_1,'string');
         in='v';
end
function s244(varargin)
         flag = 1;
         a=get(text_1,'string');
         in='a';
end
function s245(varargin)
         flag = 1;
         a=get(text_1,'string');
         in='m';
end
function s246(varargin)
         flag = 1;
         a=get(text_1,'string');
         in='s';
end
function s247(varargin)
         flag = 1;
         a=get(text_1,'string');
         in='z';
end

 function s248(varargin)
         flag = 0;
          a = get(text_1,'string');
          b = unicode2native(a) ;
          set (text_1,'string', b);
 end
function s249(varargin)
           flag = 0;
           flag3 = 1; 
     end
 function s43(varargin)
         flag = 1;
         a=get(text_1,'string');
         in='A';
 end
 function s44(varargin)
         flag = 1;
         a=get(text_1,'string');
         in='B';
 end
 function s45(varargin)
         flag = 1;
         a=get(text_1,'string');
         in='C';
 end
 function s46(varargin)
         flag = 1;
         a=get(text_1,'string');
         in='D';
 end
 function s47(varargin)
         flag = 1;
         a=get(text_1,'string');
         in='E';
 end
 function s48(varargin)
         flag = 1;
         a=get(text_1,'string');
         in='F';
 end
  
    function sctific(varargin)
        close
figure_2 = figure('MenuBar','none','Name','Calculator','NumberTitle',...
    'off','Position',[270,340,580,275],'Color',[0.95 0.95 0.95]);

control_buttons_2 = uipanel('BorderType','etchedin','ForegroundColor',...
    'Black','BackgroundColor',[0.95 0.95 0.95],'Units','characters',...
    'Title','','Position',[.5,.5,115,18],'HighlightColor',[1 1 1]);  

Switch_0_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','0','Position',[305 5 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s0);
Switch_1_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','1','Position',[305 45 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s1);
Switch_2_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','2','Position',[355 45 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s2);
Switch_3_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','3','Position',[405 45 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s3);
Switch_4_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','4','Position',[305 85 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s4);
Switch_5_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','5','Position',[355 85 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s5);
Switch_6_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','6','Position',[405 85 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s6);
Switch_7_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','7','Position',[305 125 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s7);
Switch_8_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','8','Position',[355 125 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s8);
Switch_9_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','9','Position',[405 125 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s9);
Switch_10_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','+','Position',[455 5 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s10);
Switch_11_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','-','Position',[455 45 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s11);
Switch_12_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','*','Position',[455 85 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s12);
Switch_13_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','/','Position',[455 125 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s13);
Switch_14_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','=','Position',[505 5 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s14);
Switch_15_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','1/x','Position',[505 45 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s15);
Switch_16_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','(','Position',[505 85 17 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s16);
Switch_16_21 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String',')','Position',[525 85 17 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s116);
Switch_17_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','sqrt','Position',[505 125 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s17);
Switch_18_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','+/-','Position',[355 5 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s18);
Switch_19_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','.','Position',[405 5 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s19);
Switch_20_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','OFF','Position',[305 165 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',14,'HorizontalAlignment','Center',...
    'CallBack',@s20);
Switch_21_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','Backspace','Position',[380 165 90 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',12,'HorizontalAlignment','Center',...
    'CallBack',@s21);
Switch_22_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','C','Position',[480 165 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s22);
Switch_23_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','x^2','Position',[230 165 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s223);
Switch_24_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','x^3','Position',[230 125 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s224);
Switch_25_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','x^1/2','Position',[230 85 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s225);
Switch_26_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','x^1/3','Position',[230 45 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s226);
Switch_27_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','Mod','Position',[230 5 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s227);
Switch_28_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','n!','Position',[80 85 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s228);
Switch_29_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String',' 10^x','Position',[80 45 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s229);
Switch_30_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','log','Position',[80 5 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s230);
Switch_31_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','Sin','Position',[155 85 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s231);
Switch_32_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','Cos','Position',[155 45 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s232);
Switch_33_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','Tan','Position',[155 5 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s233);
Switch_34_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String',' Calci','Position',[90 195 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s234);
Switch_35_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','Ascii','Position',[180 195 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
     'CallBack',@s235);
Switch_36_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','i','Position',[155 195 20 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',18,'HorizontalAlignment','Center',...
    'CallBack',@s236);
Switch_37_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','Paint','Position',[5 45 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s237);
Switch_38_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','Music','Position',[155 165 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s238);
Switch_39_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','STOP','Position',[155 125 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s239);
Switch_40_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','->','Position',[122 173 20 17],'BackgroundColor',...
    [.7 .7 .7],'FontSize',14,'HorizontalAlignment','Center',...
    'CallBack',@s240);
Switch_41_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','o','Position',[122 153 20 17],'BackgroundColor',...
    [.7 .7 .7],'FontSize',14,'HorizontalAlignment','Center',...
    'CallBack',@s241);
Switch_42_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','t','Position',[93 153 20 17],'BackgroundColor',...
    [.7 .7 .7],'FontSize',14,'HorizontalAlignment','Center',...
    'CallBack',@s242);
Switch_43_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','v','Position',[122 113 20 17],'BackgroundColor',...
    [.7 .7 .7],'FontSize',14,'HorizontalAlignment','Center',...
    'CallBack',@s243);
Switch_44_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','a','Position',[93 173 20 17],'BackgroundColor',...
    [.7 .7 .7],'FontSize',14,'HorizontalAlignment','Center',...
    'CallBack',@s244);
Switch_45_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','m','Position',[122 133 20 17],'BackgroundColor',...
    [.7 .7 .7],'FontSize',14,'HorizontalAlignment','Center',...
    'CallBack',@s245);
Switch_46_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','s','Position',[93 133 20 17],'BackgroundColor',...
    [.7 .7 .7],'FontSize',14,'HorizontalAlignment','Center',...
    'CallBack',@s246);
Switch_47_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','z','Position',[93 113 20 17],'BackgroundColor',...
    [.7 .7 .7],'FontSize',14,'HorizontalAlignment','Center',...
    'CallBack',@s247);
Switch_48_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','N-Ascii','Position',[5 85 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',13,'HorizontalAlignment','Center',...
    'CallBack',@s248);
Switch_49_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','E-Mail','Position',[5 5 60 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',14,'HorizontalAlignment','Center',...
    'CallBack',@s249);
Switch_43_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','A','Position',[250 195 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s43);
Switch_44_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','B','Position',[300 195 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s44);
Switch_45_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','C','Position',[350 195 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s45);
Switch_46_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','D','Position',[400 195 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s46);
Switch_47_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','E','Position',[450 195 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s47);
Switch_48_2 =uicontrol('Parent',control_buttons_2,'Style','Pushbutton',...
    'String','F','Position',[500 195 40 25],'BackgroundColor',...
    [.7 .7 .7],'FontSize',16,'HorizontalAlignment','Center',...
    'CallBack',@s48);

f = uimenu('Label','Edit');
g = uimenu('Label','View');
h = uimenu('Label','Notepad','Callback' , @s25);
i = uimenu('Label','   Close','Callback',@s823);
j = uimenu('Label','     | (c) BAGGA  |','Callback',@s851);
    uimenu(f,'Label','Copy ','Accelerator','C', 'Callback',@s826) ;                    
    uimenu(f,'Label','Paste ','Accelerator','V' , 'Callback',@s827);                    
    uimenu(g,'Label','Standard','Callback', @s813);
    uimenu(g,'Label','Scientific','Callback', @s124);
    uimenu(g,'Label','Contact' ,'Callback', @ s1124) ;
    uimenu(g,'Label','Help Topics','Callback',@s125);
    uimenu(g,'Label','About Calculator','Callback', @s26);


rbh1 = uicontrol(control_buttons_2,'Style','radiobutton','String','Hex',...
                'Value',1,'Position',[5 160 90 65] , 'CallBack',@s49);
rbh2 = uicontrol(control_buttons_2,'Style','radiobutton','String','Dec',...
                'Value',1,'Position',[5 120 90 65] , 'CallBack',@s50);
% rbh4 = uicontrol(control_buttons_2,'Style','radiobutton','String','Bin',...
%                              'Value',1,'Position',[5 120 90 65] , 'CallBack',@s52);  % rbh5 = uicontrol(control_buttons_2,'Style','radiobutton','String','Degrees',...
% %                 'Value',1,'Position',[5 80 90 65] , 'CallBack',@s53);
% rbh6 = uicontrol(control_buttons_2,'Style','radiobutton','String','Radians',...
%                 'Value',1,'Position',[5 40 90 65] , 'CallBack',@s54);
% rbh7 = uicontrol(control_buttons_2,'Style','radiobutton','String','Grades',...
%                 'Value',1,'Position',[5 0 90 65] , 'CallBack',@s55);

text_1 = uicontrol('Parent',control_buttons_2,'Style','Text','String', '',...
    'Position',[5 235 560 30],'HorizontalAlignment','Right',...
    'BackgroundColor',[.9 .9 .9],'ForegroundColor',[0 0 0],'FontSize',20);

drawnow;
    end

    function email(varargin)
figure_3 = figure('MenuBar','none','Name','Calculator','NumberTitle',...
    'off','Position',[350 250 300 375],'Color',[0.95 0.95 0.95]);
text_2 = uicontrol('Parent',figure_3,'Style','Text','string','Write Your Email',...
'Position',[5 315 285 40],'HorizontalAlignment','Center',...
'BackgroundColor',[.6 .2 1],'ForegroundColor',[0 0 0],'FontSize',22) ;
edit_2 = uicontrol('Parent',figure_3,'Style','Edit','string','',...
    'Position',[5 250 285 40],'HorizontalAlignment','Center',...
    'BackgroundColor',[.9 .9 .9],'ForegroundColor',[0 0 0],'FontSize',18);
text_3 = uicontrol('Parent',figure_3,'Style','Text','string','Enter Your Message',...
'Position',[5 160 285 40],'HorizontalAlignment','Center',...
'BackgroundColor',[.6 .2 1],'ForegroundColor',[0 0 0],'FontSize',22) ;
edit_3 = uicontrol('Parent',figure_3,'Style','Edit','string','',...
    'Position',[5 100 285 40],'HorizontalAlignment','Center',...
    'BackgroundColor',[.9 .9 .9],'ForegroundColor',[0 0 0],'FontSize',16);
switch_1_3 =uicontrol('Parent',figure_3,'Style','Pushbutton',...
    'String','SEND','Position',[100 20 85 40],'BackgroundColor',...
    [.7 .7 .7],'FontSize',22,'HorizontalAlignment','Center',...
        'CallBack', @s51);
       flag3 =0 ;
    end
msgbox('www.e2matrix.com')
end

         