FasdUAS 1.101.10   ��   ��    k             l      ��  ��   c]
? Veritrope.com
Send Safari Tab List to OmniFocus
VERSION 1.2
June 15, 2014

// TERMS OF USE:
This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

// LIKE THIS SCRIPT?
If this AppleScript is helpful to you, please show your support here: 
http://veritrope.com/support

// SCRIPT INFORMATION AND UPDATE PAGE
http://veritrope.com/code/safari-tab-list-to-omnifocus

// REQUIREMENTS
More details on the script information page.

// CHANGELOG
1.20     Fix for updated Rich Text in OF2, Added Notification Center Alert, Better Comments
1.10     Removed unnecessary code
            Doesn't output double return on last tab
            Process frontmost window instead of window 1
           Better documentation
           More consistent naming of variables (url_list, TabInfo)
-- 1.10 Changes provided by Zettt http://macosxscreencasts.com

1.00    INITIAL RELEASE

=========
BASED ON THIS SAFARI/EVERNOTE SCRIPT:
http://veritrope.com/code/export-all-safari-tabs-to-evernote/

WITH GREAT THANKS TO ZETTT FOR 1.10 IMPROVEMENTS AND TO GORDON WHO FIRST SUBMITTED THE OMNIFOCUS MODIFICATION!
     � 	 	
�  
%�   V e r i t r o p e . c o m  
 S e n d   S a f a r i   T a b   L i s t   t o   O m n i F o c u s  
 V E R S I O N   1 . 2  
 J u n e   1 5 ,   2 0 1 4  
  
 / /   T E R M S   O F   U S E :  
 T h i s   w o r k   i s   l i c e n s e d   u n d e r   t h e   C r e a t i v e   C o m m o n s   A t t r i b u t i o n - N o n C o m m e r c i a l - S h a r e A l i k e   3 . 0   U n p o r t e d   L i c e n s e .    
 T o   v i e w   a   c o p y   o f   t h i s   l i c e n s e ,   v i s i t   h t t p : / / c r e a t i v e c o m m o n s . o r g / l i c e n s e s / b y - n c - s a / 3 . 0 /   o r   s e n d   a   l e t t e r   t o   C r e a t i v e   C o m m o n s ,   4 4 4   C a s t r o   S t r e e t ,   S u i t e   9 0 0 ,   M o u n t a i n   V i e w ,   C a l i f o r n i a ,   9 4 0 4 1 ,   U S A .  
  
 / /   L I K E   T H I S   S C R I P T ?  
 I f   t h i s   A p p l e S c r i p t   i s   h e l p f u l   t o   y o u ,   p l e a s e   s h o w   y o u r   s u p p o r t   h e r e :    
 h t t p : / / v e r i t r o p e . c o m / s u p p o r t  
  
 / /   S C R I P T   I N F O R M A T I O N   A N D   U P D A T E   P A G E  
 h t t p : / / v e r i t r o p e . c o m / c o d e / s a f a r i - t a b - l i s t - t o - o m n i f o c u s  
  
 / /   R E Q U I R E M E N T S  
 M o r e   d e t a i l s   o n   t h e   s c r i p t   i n f o r m a t i o n   p a g e .  
  
 / /   C H A N G E L O G  
 1 . 2 0           F i x   f o r   u p d a t e d   R i c h   T e x t   i n   O F 2 ,   A d d e d   N o t i f i c a t i o n   C e n t e r   A l e r t ,   B e t t e r   C o m m e n t s  
 1 . 1 0           R e m o v e d   u n n e c e s s a r y   c o d e  
                         D o e s n ' t   o u t p u t   d o u b l e   r e t u r n   o n   l a s t   t a b  
                         P r o c e s s   f r o n t m o s t   w i n d o w   i n s t e a d   o f   w i n d o w   1  
                       B e t t e r   d o c u m e n t a t i o n  
                       M o r e   c o n s i s t e n t   n a m i n g   o f   v a r i a b l e s   ( u r l _ l i s t ,   T a b I n f o )  
 - -   1 . 1 0   C h a n g e s   p r o v i d e d   b y   Z e t t t   h t t p : / / m a c o s x s c r e e n c a s t s . c o m  
  
 1 . 0 0         I N I T I A L   R E L E A S E  
  
 = = = = = = = = =  
 B A S E D   O N   T H I S   S A F A R I / E V E R N O T E   S C R I P T :  
 h t t p : / / v e r i t r o p e . c o m / c o d e / e x p o r t - a l l - s a f a r i - t a b s - t o - e v e r n o t e /  
  
 W I T H   G R E A T   T H A N K S   T O   Z E T T T   F O R   1 . 1 0   I M P R O V E M E N T S   A N D   T O   G O R D O N   W H O   F I R S T   S U B M I T T E D   T H E   O M N I F O C U S   M O D I F I C A T I O N !  
   
  
 l     ��������  ��  ��        l     ��������  ��  ��        l      ��  ��    k e 
======================================
// MAIN PROGRAM 
======================================
     �   �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   M A I N   P R O G R A M    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
      l     ��������  ��  ��        l     ��  ��     RESET VALUES     �    R E S E T   V A L U E S      l     ����  r         J     ����    o      ���� 0 urllist urlList��  ��         l    !���� ! r     " # " m    ����   # o      ���� 0 
currenttab 
currentTab��  ��      $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   (  SET DATE STAMP    ) � * *  S E T   D A T E   S T A M P '  + , + l  	  -���� - r   	  . / . l  	  0���� 0 c   	  1 2 1 l  	  3���� 3 l  	  4���� 4 I  	 ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   2 m    ��
�� 
TEXT��  ��   / l      5���� 5 o      ���� 0 	datestamp 	dateStamp��  ��  ��  ��   ,  6 7 6 l    8���� 8 r     9 : 9 b     ; < ; m     = = � > > : U R L   L i s t   f r o m   S a f a r i   T a b s   o n   < l    ?���� ? o    ���� 0 	datestamp 	dateStamp��  ��   : o      ���� 0 	notetitle 	noteTitle��  ��   7  @ A @ l     ��������  ��  ��   A  B C B l     �� D E��   D - 'PROCESS TABS OF FRONTMOST SAFARI WINDOW    E � F F N P R O C E S S   T A B S   O F   F R O N T M O S T   S A F A R I   W I N D O W C  G H G l   � I���� I O    � J K J k    � L L  M N M r      O P O m    ����   P o      ���� 0 successcount successCount N  Q R Q r   ! ' S T S l  ! % U���� U 4  ! %�� V
�� 
cwin V m   # $���� ��  ��   T o      ���� 0 safariwindow safariWindow R  W X W r   ( 1 Y Z Y l  ( / [���� [ I  ( /�� \��
�� .corecnte****       **** \ l  ( + ]���� ] n   ( + ^ _ ^ 2  ) +��
�� 
bTab _ o   ( )���� 0 safariwindow safariWindow��  ��  ��  ��  ��   Z o      ���� 0 tabcount tabCount X  ` a ` l  2 2��������  ��  ��   a  b c b l  2 2�� d e��   d  GET TAB INFORMATION	    e � f f ( G E T   T A B   I N F O R M A T I O N 	 c  g�� g Q   2 � h i�� h X   5 � j�� k j k   G � l l  m n m r   G L o p o [   G J q r q o   G H���� 0 
currenttab 
currentTab r m   H I����  p o      ���� 0 
currenttab 
currentTab n  s t s r   M V u v u l  M R w���� w n   M R x y x 1   N R��
�� 
pnam y o   M N���� 0 t  ��  ��   v o      ���� 0 tabtitle tabTitle t  z { z r   W ` | } | l  W \ ~���� ~ n   W \  �  1   X \��
�� 
pURL � o   W X���� 0 t  ��  ��   } o      ���� 0 taburl tabURL {  � � � l  a a��������  ��  ��   �  � � � Z   a � � ��� � � >  a d � � � o   a b���� 0 
currenttab 
currentTab � o   b c���� 0 tabcount tabCount � r   g ~ � � � l  g z ����� � b   g z � � � b   g v � � � b   g r � � � b   g n � � � o   g j���� 0 tabtitle tabTitle � o   j m��
�� 
ret  � o   n q���� 0 taburl tabURL � o   r u��
�� 
ret  � o   v y��
�� 
ret ��  ��   � o      ���� 0 tabinfo tabInfo��   � k   � � � �  � � � l  � ��� � ���   � - ' don't output double return on last tab    � � � � N   d o n ' t   o u t p u t   d o u b l e   r e t u r n   o n   l a s t   t a b �  ��� � r   � � � � � l  � � ����� � b   � � � � � b   � � � � � o   � ����� 0 tabtitle tabTitle � o   � ���
�� 
ret  � o   � ����� 0 taburl tabURL��  ��   � o      ���� 0 tabinfo tabInfo��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � % COPY TAB INFO TO END OF LIST			    � � � � > C O P Y   T A B   I N F O   T O   E N D   O F   L I S T 	 	 	 �  � � � s   � � � � � o   � ����� 0 tabinfo tabInfo � l      ����� � n       � � �  ;   � � � o   � ����� 0 urllist urlList��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �  INCREMENT SUCCESS COUNT    � � � � . I N C R E M E N T   S U C C E S S   C O U N T �  ��� � r   � � � � � l  � � ����� � [   � � � � � o   � ����� 0 successcount successCount � m   � ����� ��  ��   � o      ���� 0 successcount successCount��  �� 0 t   k l  8 ; ���~ � n   8 ; � � � 2  9 ;�}
�} 
bTab � o   8 9�|�| 0 safariwindow safariWindow�  �~   i R      �{�z�y
�{ .ascrerr ****      � ****�z  �y  ��  ��   K m     � ��                                                                                  sfri  alis    B  SERENiTY                   ����H+  `aZ
Safari.app                                                     `�m͜H�        ����  	                Applications    ��0$      ͜��    `aZ  !SERENiTY:Applications: Safari.app    
 S a f a r i . a p p    S E R E N i T Y  Applications/Safari.app   / ��  ��  ��   H  � � � l     �x�w�v�x  �w  �v   �  � � � l     �u�t�s�u  �t  �s   �  � � � l     �r � ��r   � " MAKE INBOX ITEM IN OMNIFOCUS    � � � � 8 M A K E   I N B O X   I T E M   I N   O M N I F O C U S �  � � � l  � � ��q�p � O   � � � � � I  � ��o�n �
�o .corecrel****      � null�n   � �m � �
�m 
kocl � m   � ��l
�l 
FCit � �k ��j
�k 
prdt � K   � � � � �i � �
�i 
pnam � l  � � ��h�g � o   � ��f�f 0 	notetitle 	noteTitle�h  �g   � �e ��d
�e 
FCno � c   � � � � � o   � ��c�c 0 urllist urlList � m   � ��b
�b 
ctxt�d  �j   � n   � � � � � 4  � ��a �
�a 
docu � m   � ��`�`  � m   � � � ��                                                                                  OFOC  alis    L  SERENiTY                   ����H+  `aZOmniFocus.app                                                  r����	�        ����  	                Applications    ��0$      ��O�    `aZ  $SERENiTY:Applications: OmniFocus.app    O m n i F o c u s . a p p    S E R E N i T Y  Applications/OmniFocus.app  / ��  �q  �p   �  � � � l     �_�^�]�_  �^  �]   �  � � � l     �\ � ��\   �  NOTIFY RESULTS    � � � �  N O T I F Y   R E S U L T S �  � � � l  � � ��[�Z � n  � � � � � I   � ��Y ��X�Y *0 notification_center notification_Center �  � � � o   � ��W�W 0 successcount successCount �  ��V � o   � ��U�U 0 tabcount tabCount�V  �X   �  f   � ��[  �Z   �  � � � l     �T�S�R�T  �S  �R   �  � � � l      �Q � ��Q   � u o 
======================================
// NOTIFICATION SUBROUTINE
======================================
    � � � � �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   N O T I F I C A T I O N   S U B R O U T I N E  
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 �  � � � l     �P�O�N�P  �O  �N   �  � � � l     �M � ��M   �  NOTIFICATION CENTER    � � � � & N O T I F I C A T I O N   C E N T E R �  ��L � i      � � � I      �K �J�K *0 notification_center notification_Center   o      �I�I 0 successcount successCount �H o      �G�G 0 itemnum itemNum�H  �J   � k     o  r      c     	
	 l    �F�E o     �D�D 0 successcount successCount�F  �E  
 m    �C
�C 
nmbr o      �B�B 0 plural_test Plural_Test  l   �A�@�?�A  �@  �?    Z    c�> =   	 o    �=�= 0 plural_test Plural_Test m    �<�<�� k      I   �;
�; .sysonotfnull��� ��� TEXT m     � " N o   T a b s   E x p o r t e d ! �:
�: 
appr m     � : S e n d   S a f a r i   T a b s   t o   O m n i F o c u s �9 �8
�9 
subt  m    !! �"" %�   V e r i t r o p e . c o m�8   #�7# l   �6�5�4�6  �5  �4  �7   $%$ =   &'& o    �3�3 0 plural_test Plural_Test' m    �2�2  % ()( k     +** +,+ I    )�1-.
�1 .sysonotfnull��� ��� TEXT- m     !// �00 " N o   T a b s   E x p o r t e d !. �012
�0 
appr1 m   " #33 �44 : S e n d   S a f a r i   T a b s   t o   O m n i F o c u s2 �/5�.
�/ 
subt5 m   $ %66 �77 %�   V e r i t r o p e . c o m�.  , 8�-8 l  * *�,�+�*�,  �+  �*  �-  ) 9:9 =  . 1;<; o   . /�)�) 0 plural_test Plural_Test< m   / 0�(�( : =>= k   4 C?? @A@ I  4 A�'BC
�' .sysonotfnull��� ��� TEXTB b   4 9DED b   4 7FGF m   4 5HH �II , S u c c e s s f u l l y   E x p o r t e d  G o   5 6�&�& 0 itemnum itemNumE l 	 7 8J�%�$J m   7 8KK �LL "   T a b   t o   O m n i F o c u s�%  �$  C �#MN
�# 
apprM m   : ;OO �PP : S e n d   S a f a r i   T a b s   t o   O m n i F o c u sN �"Q�!
�" 
subtQ m   < =RR �SS %�   V e r i t r o p e . c o m�!  A T� T l  B B����  �  �  �   > UVU ?  F IWXW o   F G�� 0 plural_test Plural_TestX m   G H�� V Y�Y I  L _�Z[
� .sysonotfnull��� ��� TEXTZ b   L S\]\ b   L O^_^ m   L M`` �aa , S u c c e s s f u l l y   E x p o r t e d  _ o   M N�� 0 itemnum itemNum] l 	 O Rb��b m   O Rcc �dd $   T a b s   t o   O m n i F o c u s�  �  [ �ef
� 
appre m   T Wgg �hh : S e n d   S a f a r i   T a b s   t o   O m n i F o c u sf �i�
� 
subti m   X [jj �kk %�   V e r i t r o p e . c o m�  �  �>   lml l  d d����  �  �  m non r   d ipqp m   d grr �ss  0q o      �� 0 itemnum itemNumo t�t I  j o�u�
� .sysodelanull��� ��� nmbru m   j k�� �  �  �L       �
vwx�
  v �	��	 *0 notification_center notification_Center
� .aevtoappnull  �   � ****w � ���yz�� *0 notification_center notification_Center� �{� {  ��� 0 successcount successCount� 0 itemnum itemNum�  y � �����  0 successcount successCount�� 0 itemnum itemNum�� 0 plural_test Plural_Testz ������!����/36HKOR`cgjr��
�� 
nmbr
�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT
�� .sysodelanull��� ��� nmbr� p��&E�O�i  ������ OPY K�j  ������ OPY 7�k  �%�%����� OPY �k �%a %�a �a � Y hOa E�Okj x ��|����}~��
�� .aevtoappnull  �   � ****| k     �  ��  ��  +��  6��  G��  ���  �����  ��  ��  } ���� 0 t  ~ !���������� =�� ��������������������������������� ������������������� 0 urllist urlList�� 0 
currenttab 
currentTab
�� .misccurdldt    ��� null
�� 
TEXT�� 0 	datestamp 	dateStamp�� 0 	notetitle 	noteTitle�� 0 successcount successCount
�� 
cwin�� 0 safariwindow safariWindow
�� 
bTab
�� .corecnte****       ****�� 0 tabcount tabCount
�� 
kocl
�� 
cobj
�� 
pnam�� 0 tabtitle tabTitle
�� 
pURL�� 0 taburl tabURL
�� 
ret �� 0 tabinfo tabInfo��  ��  
�� 
docu
�� 
FCit
�� 
prdt
�� 
FCno
�� 
ctxt�� 
�� .corecrel****      � null�� *0 notification_center notification_Center�� �jvE�OjE�O*j �&E�O��%E�O� �jE�O*�k/E�O��-j E�O r l��-[��l kh  �kE�O�a ,E` O�a ,E` O�� _ _ %_ %_ %_ %E` Y _ _ %_ %E` O_ �6GO�kE�[OY��W X  hUOa a k/  *�a a a �a �a &a a  UO)��l+   ascr  ��ޭ