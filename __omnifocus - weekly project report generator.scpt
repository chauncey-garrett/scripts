FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Veritrope.com
OmniFocus - Weekly Project Report Generator
Authored by Chris Brogan and Rob Trew
Version 1.0
February 5, 2012

// SCRIPT INFORMATION AND UPDATE PAGE
http://veritrope.com/code/omnifocus-weekly-project-report-generator

Originally Posted At:
http://cl.ly/1H1M0S3R160x3401150u

// REQUIREMENTS
More details on the script information page.

//CHANGELOG
1.0  Initial Release

     � 	 	,  
 V e r i t r o p e . c o m  
 O m n i F o c u s   -   W e e k l y   P r o j e c t   R e p o r t   G e n e r a t o r  
 A u t h o r e d   b y   C h r i s   B r o g a n   a n d   R o b   T r e w  
 V e r s i o n   1 . 0  
 F e b r u a r y   5 ,   2 0 1 2  
  
 / /   S C R I P T   I N F O R M A T I O N   A N D   U P D A T E   P A G E  
 h t t p : / / v e r i t r o p e . c o m / c o d e / o m n i f o c u s - w e e k l y - p r o j e c t - r e p o r t - g e n e r a t o r  
  
 O r i g i n a l l y   P o s t e d   A t :  
 h t t p : / / c l . l y / 1 H 1 M 0 S 3 R 1 6 0 x 3 4 0 1 1 5 0 u  
  
 / /   R E Q U I R E M E N T S  
 M o r e   d e t a i l s   o n   t h e   s c r i p t   i n f o r m a t i o n   p a g e .  
  
 / / C H A N G E L O G  
 1 . 0     I n i t i a l   R e l e a s e  
  
   
  
 l     ��������  ��  ��        l      ��  ��    k e 
======================================
// MAIN PROGRAM 
======================================
     �   �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   M A I N   P R O G R A M    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
      l     ��������  ��  ��        l   < ����  O    <    k   ;       l   ��������  ��  ��        l   ��  ��     SET THE REPORT TITLE     �   ( S E T   T H E   R E P O R T   T I T L E     !   r     " # " c     $ % $ b     & ' & b     ( ) ( b     * + * b     , - , b    	 . / . b     0 1 0 m     2 2 � 3 3 > C u r r e n t   L i s t   o f   A c t i v e   P r o j e c t s 1 o    ��
�� 
ret  / m     4 4 � 5 5  - - - - o   	 
��
�� 
ret  + l    6���� 6 I   ������
�� .misccurdldt    ��� null��  ��  ��  ��   ) o    ��
�� 
ret  ' o    ��
�� 
ret  % m    ��
�� 
utxt # o      ���� 0 
exportlist 
ExportList !  7 8 7 l   ��������  ��  ��   8  9 : 9 l   �� ; <��   ;  PROCESS THE PROJECTS    < � = = ( P R O C E S S   T H E   P R O J E C T S :  > ? > O   � @ A @ k    � B B  C D C r     / E F E N     - G G l    , H���� H 6   , I J I 2    #��
�� 
FCff J =  $ + K L K 1   % '��
�� 
FCHi L m   ( *��
�� boovfals��  ��   F o      ���� 0 
reffolders 
refFolders D  M N M X   0 e O�� P O k   D ` Q Q  R S R r   D Q T U T 5   D M�� V��
�� 
FCAr V o   H I���� 0 idfolder idFolder
�� kfrmID   U o      ���� 0 ofolder oFolder S  W�� W r   R ` X Y X b   R ^ Z [ Z b   R \ \ ] \ o   R S���� 0 
exportlist 
ExportList ] n  S [ ^ _ ^ I   T [�� `���� &0 indentandprojects IndentAndProjects `  a�� a o   T W���� 0 ofolder oFolder��  ��   _  f   S T [ o   \ ]��
�� 
ret  Y o      ���� 0 
exportlist 
ExportList��  �� 0 idfolder idFolder P c   3 8 b c b l  3 6 d���� d n   3 6 e f e 1   4 6��
�� 
ID   f o   3 4���� 0 
reffolders 
refFolders��  ��   c m   6 7��
�� 
list N  g h g l  f f��������  ��  ��   h  i j i l  f f�� k l��   k &  ASSEMBLE THE COMPLETED TASK LIST    l � m m @ A S S E M B L E   T H E   C O M P L E T E D   T A S K   L I S T j  n o n r   f  p q p b   f } r s r b   f y t u t b   f w v w v b   f u x y x b   f q z { z b   f o | } | b   f k ~  ~ b   f i � � � o   f g���� 0 
exportlist 
ExportList � o   g h��
�� 
ret   o   i j��
�� 
ret  } m   k n � � � � � @ C o m p l e t e d   T a s k s   F r o m   L a s t   7   d a y s { o   o p��
�� 
ret  y m   q t � � � � �  - - - w o   u v��
�� 
ret  u o   w x��
�� 
ret  s m   y | � � � � � 8 < s p a n   s t y l e = ' f o n t - s i z e : 8 p t ' > q o      ���� 0 
exportlist 
ExportList o  � � � r   � � � � � \   � � � � � l  � � ����� � I  � �������
�� .misccurdldt    ��� null��  ��  ��  ��   � ]   � � � � � m   � �����  � 1   � ���
�� 
days � o      ���� 0 week_ago   �  � � � r   � � � � � N   � � � � l  � � ����� � 6 � � � � � 2  � ���
�� 
FCft � l  � � ����� � @   � � � � � 1   � ���
�� 
FCdc � o   � ����� 0 week_ago  ��  ��  ��  ��   � o      ���� &0 refdoneinlastweek refDoneInLastWeek �  � � � r   � � � � � n   � � � � � J   � � � �  � � � 1   � ���
�� 
pnam �  � � � n   � � � � � 1   � ���
�� 
pnam � n  � � � � � m   � ���
�� 
FCct �  g   � � �  � � � n   � � � � � 1   � ���
�� 
pnam � n  � � � � � 1   � ���
�� 
FCPr �  g   � � �  ��� � 1   � ���
�� 
FCdc��   � o   � ����� &0 refdoneinlastweek refDoneInLastWeek � J       � �  � � � o      ���� 0 lstname lstName �  � � � o      ���� 0 
lstcontext 
lstContext �  � � � o      ���� 0 
lstproject 
lstProject �  ��� � o      ���� 0 lstdate lstDate��   �  � � � r   � � � � m   � � � � � � �   � o      ���� 0 strtext strText �  ��� � Y  � ��� � ��� � k  � � �  � � � r  V � � � J  / � �  � � � n   � � � 4  �� �
�� 
cobj � o  ���� 0 itask iTask � o  ���� 0 lstname lstName �  � � � n   � � � 4  �� �
�� 
cobj � o  ���� 0 itask iTask � o  ���� 0 
lstcontext 
lstContext �  � � � n  % � � � 4  "%�� �
�� 
cobj � o  #$���� 0 itask iTask � o  "���� 0 
lstproject 
lstProject �  ��� � n  %+ � � � 4  (+�� �
�� 
cobj � o  )*���� 0 itask iTask � o  %(���� 0 lstdate lstDate��   � J       � �  � � � o      ���� 0 strname strName �  � � � o      ���� 0 
varcontext 
varContext �  � � � o      ���� 0 
varproject 
varProject �  ��� � o      ���� 0 vardate varDate��   �  � � � Z Wx � ����� � > W^ � � � o  WZ���� 0 vardate varDate � m  Z]��
�� 
msng � r  at � � � b  ap � � � b  al � � � o  ad���� 0 strtext strText � n  dk � � � 1  gk��
�� 
shdt � o  dg���� 0 vardate varDate � m  lo � � � � �    -   � o      ���� 0 strtext strText��  ��   �  � � � Z y� � ����� � > y� � � � o  y|���� 0 
varproject 
varProject � m  |��
�� 
msng � r  �� � � � b  �� � � � b  �� �  � b  �� o  ���� 0 strtext strText m  �� �    [  o  ���~�~ 0 
varproject 
varProject � m  �� �  ]   -   � o      �}�} 0 strtext strText��  ��   �  r  ��	
	 b  �� o  ���|�| 0 strtext strText o  ���{�{ 0 strname strName
 o      �z�z 0 strtext strText  Z ���y�x > �� o  ���w�w 0 
varcontext 
varContext m  ���v
�v 
msng r  �� b  �� b  �� b  �� o  ���u�u 0 strtext strText m  �� �    * @ o  ���t�t 0 
varcontext 
varContext m  �� �  * o      �s�s 0 strtext strText�y  �x   �r r  �� !  b  ��"#" b  ��$%$ o  ���q�q 0 strtext strText% m  ��&& �''     # o  ���p
�p 
ret ! o      �o�o 0 strtext strText�r  �� 0 itask iTask � m  �n�n  � n  ()( 1  	�m
�m 
leng) o  	�l�l 0 lstname lstName��  ��   A 1    �k
�k 
FCDo ? *+* l ���j�i�h�j  �i  �h  + ,-, r  ��./. c  ��010 b  ��232 b  ��454 o  ���g�g 0 
exportlist 
ExportList5 o  ���f�f 0 strtext strText3 m  ��66 �77  < / s p a n >1 m  ���e
�e 
utxt/ o      �d�d 0 
exportlist 
ExportList- 898 l ���c�b�a�c  �b  �a  9 :;: l ���`<=�`  < 6 0CHOOSE FILE NAME FOR EXPORT AND SAVE AS MARKDOWN   = �>> ` C H O O S E   F I L E   N A M E   F O R   E X P O R T   A N D   S A V E   A S   M A R K D O W N; ?@? r  �ABA I ��_�^C
�_ .sysonwflfile    ��� null�^  C �]DE
�] 
prmtD m  ��FF �GG  N a m e   t h i s   f i l eE �\HI
�\ 
dfnmH b  ��JKJ m  ��LL �MM 2 W e e k l y   D e v e l o p m e n t   R e p o r tK l 	��N�[�ZN m  ��OO �PP  . m d�[  �Z  I �YQ�X
�Y 
dflcQ l �R�W�VR I ��US�T
�U .earsffdralis        afdrS m  ��S
�S afdmdesk�T  �W  �V  �X  B o      �R�R 0 fn  @ T�QT O  ;UVU k  :WW XYX r  &Z[Z I "�P\]
�P .rdwropenshor       file\ o  �O�O 0 fn  ] �N^�M
�N 
perm^ m  �L
�L boovtrue�M  [ o      �K�K 0 fid  Y _`_ I '2�Jab
�J .rdwrwritnull���     ****a o  '(�I�I 0 
exportlist 
ExportListb �Hc�G
�H 
refnc o  +.�F�F 0 fid  �G  ` d�Ed I 3:�De�C
�D .rdwrclosnull���     ****e o  36�B�B 0 fid  �C  �E  V m  ff�                                                                                  sevs  alis    �  SERENiTY                   ���H+  Y&USystem Events.app                                              ]@q�4�M        ����  	                CoreServices    ���      �5"�    Y&UY&IY&H  9SERENiTY:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    S E R E N i T Y  -System/Library/CoreServices/System Events.app   / ��  �Q    m     gg�                                                                                  OFOC  alis    L  SERENiTY                   ���H+  Y&�OmniFocus.app                                                  *�у�        ����  	                Applications    ���      у�X    Y&�  $SERENiTY:Applications: OmniFocus.app    O m n i F o c u s . a p p    S E R E N i T Y  Applications/OmniFocus.app  / ��  ��  ��    hih l     �A�@�?�A  �@  �?  i jkj l      �>lm�>  l w q 
======================================
// MAIN HANDLER SUBROUTINES 
======================================
   m �nn �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   M A I N   H A N D L E R   S U B R O U T I N E S    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
k opo l     �=�<�;�=  �<  �;  p qrq i     sts I      �:u�9�: &0 indentandprojects IndentAndProjectsu v�8v o      �7�7 0 ofolder oFolder�8  �9  t O     �wxw k    �yy z{z r    |}| m    	�6
�6 boovfals} o      �5�5 0 show_section  { ~~ r    ��� m    �� ���  # #� o      �4�4 0 	strindent 	strIndent ��� r    ��� n    ��� 1    �3
�3 
ctnr� o    �2�2 0 ofolder oFolder� o      �1�1 0 oparent oParent� ��� V    4��� k     /�� ��� r     %��� b     #��� o     !�0�0 0 	strindent 	strIndent� m   ! "�� ���  #� o      �/�/ 0 	strindent 	strIndent� ��� r   & +��� n   & )��� 1   ' )�.
�. 
ctnr� o   & '�-�- 0 oparent oParent� o      �,�, 0 oparent oParent� ��+� r   , /��� m   , -�*
�* boovtrue� o      �)�) 0 show_section  �+  � =   ��� n    ��� m    �(
�( 
pcls� o    �'�' 0 oparent oParent� m    �&
�& 
FCAr� ��� l  5 5�%�$�#�%  �$  �#  � ��� r   5 N��� J   5 =�� ��� n  5 8��� 1   6 8�"
�" 
txdl�  f   5 6� ��!� b   8 ;��� o   8 9� 
�  
ret � o   9 :�
� 
ret �!  � J      �� ��� o      �� 0 dlm  � ��� n     ��� 1   J L�
� 
txdl�  f   I J�  � ��� r   O V��� l  O T���� I  O T���
� .misccurdldt    ��� null�  �  �  �  � o      �� 0 dtenow dteNow� ��� r   W ���� c   W ���� l  W ����� n   W ���� 1   � ��
� 
pnam� l  W ����� 6 W ���� n   W Z��� 2  X Z�
� 
FCpr� o   W X�� 0 ofolder oFolder� G   [ ���� F   \ }��� F   ] p��� =  ^ e��� n  _ a��� 1   _ a�
� 
FCPs�  g   _ _� m   b d�
� FCPsFCPa� >  f o��� n   g k��� 1   g k�
� 
FC.A�  g   g g� m   l n�
� boovtrue� =  q |��� n  r v��� 1   r v�

�
 
FCDs�  g   r r� m   w {�	
�	 
msng� A   ~ ���� 1    ��
� 
FCDs� o   � ��� 0 dtenow dteNow�  �  �  �  � m   � ��
� 
TEXT� o      �� 0 	stractive 	strActive� ��� l  � �����  �  �  � ��� r   � ���� o   � ��� 0 dlm  � n     ��� 1   � �� 
�  
txdl�  f   � �� ��� l  � ���������  ��  ��  � ���� L   � ��� b   � ���� b   � ���� b   � ���� b   � ���� o   � ����� 0 	strindent 	strIndent� n   � ���� 1   � ���
�� 
pnam� o   � ����� 0 ofolder oFolder� o   � ���
�� 
ret � o   � ����� 0 	stractive 	strActive� o   � ���
�� 
ret ��  x 5     �����
�� 
capp� m    �� ���  O F O C
�� kfrmID  r ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       �������  � ������ &0 indentandprojects IndentAndProjects
�� .aevtoappnull  �   � ****� ��t���������� &0 indentandprojects IndentAndProjects�� �� ��    ���� 0 ofolder oFolder��  � ���������������� 0 ofolder oFolder�� 0 show_section  �� 0 	strindent 	strIndent�� 0 oparent oParent�� 0 dlm  �� 0 dtenow dteNow�� 0 	stractive 	strActive� �������������������������������������
�� 
capp
�� kfrmID  
�� 
ctnr
�� 
pcls
�� 
FCAr
�� 
txdl
�� 
ret 
�� 
cobj
�� .misccurdldt    ��� null
�� 
FCpr  
�� 
FCPs
�� FCPsFCPa
�� 
FC.A
�� 
FCDs
�� 
msng
�� 
pnam
�� 
TEXT�� �)���0 �fE�O�E�O��,E�O h��,� ��%E�O��,E�OeE�[OY��O)�,��%lvE[�k/E�Z[�l/)�,FZO*j E�O��-�[[[[�,\Z�8\[a ,\Ze9A\[a ,\Za 8A\[a ,\Z�<B1a ,a &E�O�)�,FO��a ,%�%�%�%U� ��������
�� .aevtoappnull  �   � **** k    <  ����  ��  ��   ������ 0 idfolder idFolder�� 0 itask iTask Hg 2�� 4�������������������������������� � � ����������������������������� ����������������� �&6��F��LO������������f������������
�� 
ret 
�� .misccurdldt    ��� null
�� 
utxt�� 0 
exportlist 
ExportList
�� 
FCDo
�� 
FCff
�� 
FCHi�� 0 
reffolders 
refFolders
�� 
ID  
�� 
list
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
FCAr
�� kfrmID  �� 0 ofolder oFolder�� &0 indentandprojects IndentAndProjects�� 
�� 
days�� 0 week_ago  
�� 
FCft
�� 
FCdc�� &0 refdoneinlastweek refDoneInLastWeek
�� 
pnam
�� 
FCct
�� 
FCPr�� �� 0 lstname lstName�� 0 
lstcontext 
lstContext�� 0 
lstproject 
lstProject�� 0 lstdate lstDate�� 0 strtext strText
�� 
leng�� 0 strname strName�� 0 
varcontext 
varContext�� 0 
varproject 
varProject�� 0 vardate varDate
�� 
msng
�� 
shdt
�� 
prmt
�� 
dfnm
�� 
dflc
�� afdmdesk
�� .earsffdralis        afdr�� 
�� .sysonwflfile    ��� null�� 0 fn  
�� 
perm
�� .rdwropenshor       file�� 0 fid  
�� 
refn
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****��=�9��%�%�%*j %�%�%�&E�O*�,�*�-�[�,\Zf81E�O 4��,�&[��l kh  *a �a 0E` O�)_ k+ %�%E�[OY��O��%�%a %�%a %�%�%a %E�O*j a _  E` O*a -�[a ,\Z_ ;1E` O_ [a ,\[a ,a ,\[a  ,a ,\[a ,\Za !vE[�k/E` "Z[�l/E` #Z[�m/E` $Z[�a !/E` %ZOa &E` 'O �k_ "a (,Ekh _ "�/_ #�/_ $�/_ %�/a !vE[�k/E` )Z[�l/E` *Z[�m/E` +Z[�a !/E` ,ZO_ ,a - _ '_ ,a .,%a /%E` 'Y hO_ +a - _ 'a 0%_ +%a 1%E` 'Y hO_ '_ )%E` 'O_ *a - _ 'a 2%_ *%a 3%E` 'Y hO_ 'a 4%�%E` '[OY�7UO�_ '%a 5%�&E�O*a 6a 7a 8a 9a :%a ;a <j =a > ?E` @Oa A %_ @a Bel CE` DO�a E_ Dl FO_ Dj GUUascr  ��ޭ