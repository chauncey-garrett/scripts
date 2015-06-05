FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l      �� 	 
��   	��
Veritrope.com
Write Today's Completed Tasks In OmniFocus to a Text File
Version 1.0
April 30, 2011

Project Status, Latest Updates, and Comments Collected at:
http://veritrope.com/code/write-todays-completed-tasks-in-omnifocus-to-a-text-file

// SCRIPT BASED UPON ROBTREW'S HANDLER 
--ORIGINALLY POSTED ON THE OMNIFOCUS FORUM:
http://forums.omnigroup.com/showthread.php?t=13849


// RECOMMENDED INSTALLATION INSTRUCTIONS:

FastScripts Installation (Optional, but recommended):
--Download and Install FastScripts from http://www.red-sweater.com/fastscripts/index.html
--Copy script or an Alias to ~/Library/Scripts/Applications/OmniFocus
--Set up your keyboard shortcut
    
 �  d  
 V e r i t r o p e . c o m  
 W r i t e   T o d a y ' s   C o m p l e t e d   T a s k s   I n   O m n i F o c u s   t o   a   T e x t   F i l e  
 V e r s i o n   1 . 0  
 A p r i l   3 0 ,   2 0 1 1  
  
 P r o j e c t   S t a t u s ,   L a t e s t   U p d a t e s ,   a n d   C o m m e n t s   C o l l e c t e d   a t :  
 h t t p : / / v e r i t r o p e . c o m / c o d e / w r i t e - t o d a y s - c o m p l e t e d - t a s k s - i n - o m n i f o c u s - t o - a - t e x t - f i l e  
  
 / /   S C R I P T   B A S E D   U P O N   R O B T R E W ' S   H A N D L E R    
 - - O R I G I N A L L Y   P O S T E D   O N   T H E   O M N I F O C U S   F O R U M :  
 h t t p : / / f o r u m s . o m n i g r o u p . c o m / s h o w t h r e a d . p h p ? t = 1 3 8 4 9  
  
  
 / /   R E C O M M E N D E D   I N S T A L L A T I O N   I N S T R U C T I O N S :  
  
 F a s t S c r i p t s   I n s t a l l a t i o n   ( O p t i o n a l ,   b u t   r e c o m m e n d e d ) :  
 - - D o w n l o a d   a n d   I n s t a l l   F a s t S c r i p t s   f r o m   h t t p : / / w w w . r e d - s w e a t e r . c o m / f a s t s c r i p t s / i n d e x . h t m l  
 - - C o p y   s c r i p t   o r   a n   A l i a s   t o   ~ / L i b r a r y / S c r i p t s / A p p l i c a t i o n s / O m n i F o c u s  
 - - S e t   u p   y o u r   k e y b o a r d   s h o r t c u t  
      l     ��������  ��  ��        l     ��������  ��  ��        l      ��  ��    k e 
======================================
// MAIN PROGRAM 
======================================
     �   �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   M A I N   P R O G R A M    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
      l     ��������  ��  ��        l     ��  ��     GET TODAY'S DATE     �     G E T   T O D A Y ' S   D A T E      l     ����  r          4     �� !
�� 
ldt  ! l   
 "���� " n    
 # $ # 1    	��
�� 
shdt $ l    %���� % I   ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��     o      ���� 0 dtetoday dteToday��  ��     & ' & l     ��������  ��  ��   '  ( ) ( l     �� * +��   * &  CHOOSE FILE NAME / SAVE LOCATION    + � , , @ C H O O S E   F I L E   N A M E   /   S A V E   L O C A T I O N )  - . - l    /���� / r     0 1 0 I   ���� 2
�� .sysonwflfile    ��� null��   2 �� 3��
�� 
dfnm 3 m     4 4 � 5 5  T o d a y _ T a s k . t x t��   1 o      ���� 0 thefilepath theFilePath��  ��   .  6 7 6 l     ��������  ��  ��   7  8 9 8 l     �� : ;��   :  GET OMNIFOCUS INFORMATION    ; � < < 2 G E T   O M N I F O C U S   I N F O R M A T I O N 9  = > = l    ?���� ? r     @ A @ n    B C B I    �������� 0 do_omnifocus do_OmniFocus��  ��   C  f     A o      ���� 0 today_tasks today_Tasks��  ��   >  D E D l     ��������  ��  ��   E  F G F l     �� H I��   H  WRITE THE TEXT FILE    I � J J & W R I T E   T H E   T E X T   F I L E G  K L K l    ' M���� M n    ' N O N I   ! '�� P���� 0 
write_file 
write_File P  Q R Q o   ! "���� 0 thefilepath theFilePath R  S�� S o   " #���� 0 today_tasks today_Tasks��  ��   O  f     !��  ��   L  T U T l     ��������  ��  ��   U  V W V l      �� X Y��   X w q 
======================================
// MAIN HANDLER SUBROUTINES 
======================================
    Y � Z Z �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   M A I N   H A N D L E R   S U B R O U T I N E S    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 W  [ \ [ l     ��������  ��  ��   \  ] ^ ] l     �� _ `��   _  GET OMNIFOCUS INFORMATION    ` � a a 2 G E T   O M N I F O C U S   I N F O R M A T I O N ^  b c b i      d e d I      �������� 0 do_omnifocus do_OmniFocus��  ��   e k     � f f  g h g r      i j i 4     �� k
�� 
ldt  k l   
 l���� l n    
 m n m 1    	��
�� 
shdt n l    o���� o I   ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   j o      ���� 0 dtetoday dteToday h  p q p O    � r s r O    � t u t k    � v v  w x w r    + y z y N    ) { { l   ( |���� | 6  ( } ~ } 2   ��
�� 
FCft ~ l    ' ����  @     ' � � � 1   ! #��
�� 
FCdc � o   $ &���� 0 dtetoday dteToday��  ��  ��  ��   z o      ���� 0 refdonetoday refDoneToday x  � � � r   , V � � � n   , @ � � � J   - @ � �  � � � 1   . 0��
�� 
pnam �  � � � n   2 6 � � � 1   4 6��
�� 
pnam � n  2 4 � � � m   2 4��
�� 
FCct �  g   2 2 �  ��� � n   8 < � � � 1   : <��
�� 
pnam � n  8 : � � � 1   8 :��
�� 
FCPr �  g   8 8��   � o   , -���� 0 refdonetoday refDoneToday � J       � �  � � � o      ���� 0 lstname lstName �  � � � o      ���� 0 
lstcontext 
lstContext �  ��� � o      ���� 0 
lstproject 
lstProject��   �  � � � r   W Z � � � m   W X � � � � �   � o      ���� 0 strtext strText �  ��� � Y   [ � ��� � ��� � k   i � � �  � � � r   i � � � � J   i w � �  � � � n   i m � � � 4   j m�� �
�� 
cobj � o   k l���� 0 itask iTask � o   i j���� 0 lstname lstName �  � � � n   m q � � � 4   n q�� �
�� 
cobj � o   o p���� 0 itask iTask � o   m n���� 0 
lstcontext 
lstContext �  ��� � n   q u � � � 4   r u�� �
�� 
cobj � o   s t���� 0 itask iTask � o   q r���� 0 
lstproject 
lstProject��   � J       � �  � � � o      ���� 0 strname strName �  � � � o      ���� 0 
varcontext 
varContext �  ��� � o      ���� 0 
varproject 
varProject��   �  � � � r   � � � � � b   � � � � � b   � � � � � b   � � � � � o   � ����� 0 strtext strText � m   � � � � � � �  O m n i F o c u s :   � 1   � ���
�� 
tab  � o   � ����� 0 strname strName � o      ���� 0 strtext strText �  � � � Z  � � � ����� � >  � � � � � o   � ����� 0 
varcontext 
varContext � m   � ���
�� 
msng � r   � � � � � b   � � � � � b   � � � � � o   � ����� 0 strtext strText � m   � � � � � � �    @ � o   � ����� 0 
varcontext 
varContext � o      �� 0 strtext strText��  ��   �  � � � Z  � � � ��~�} � >  � � � � � o   � ��|�| 0 
varproject 
varProject � m   � ��{
�{ 
msng � r   � � � � � b   � � � � � b   � � � � � b   � � � � � o   � ��z�z 0 strtext strText � m   � � � � � � �    ( � o   � ��y�y 0 
varproject 
varProject � m   � � � � � � �  ) � o      �x�x 0 strtext strText�~  �}   �  ��w � r   � � � � � b   � � � � � o   � ��v�v 0 strtext strText � o   � ��u
�u 
ret  � o      �t�t 0 strtext strText�w  �� 0 itask iTask � m   ^ _�s�s  � I  _ d�r ��q
�r .corecnte****       **** � o   _ `�p�p 0 lstname lstName�q  ��  ��   u 1    �o
�o 
FCDo s 5    �n ��m
�n 
capp � m     � � � � � . c o m . o m n i g r o u p . O m n i F o c u s
�m kfrmID   q  ��l � o   � ��k�k 0 strtext strText�l   c  � � � l     �j�i�h�j  �i  �h   �  � � � l     �g�f�e�g  �f  �e   �  � � � l      �d � ��d   � r l 
======================================
// UTILITY SUBROUTINES 
======================================
    � � � � �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   U T I L I T Y   S U B R O U T I N E S    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 �  �  � l     �c�b�a�c  �b  �a     l     �`�`    EXPORT TO TXT FILE     � & E X P O R T   T O   T X T   F I L E    i    	 I      �_
�^�_ 0 
write_file 
write_File
  o      �]�] 0 thefilepath theFilePath �\ o      �[�[ 0 today_tasks today_Tasks�\  �^  	 k       r      o     �Z�Z 0 today_tasks today_Tasks o      �Y�Y 0 thetext theText  r     I   �X
�X .rdwropenshor       file o    �W�W 0 thefilepath theFilePath �V�U
�V 
perm m    �T
�T boovtrue�U   o      �S�S $0 thefilereference theFileReference  I   �R
�R .rdwrwritnull���     **** o    �Q�Q 0 thetext theText �P
�P 
refn o    �O�O $0 thefilereference theFileReference �N �M
�N 
as    m    �L
�L 
utf8�M   !�K! I   �J"�I
�J .rdwrclosnull���     ****" o    �H�H $0 thefilereference theFileReference�I  �K   #$# l     �G�F�E�G  �F  �E  $ %�D% l     �C�B�A�C  �B  �A  �D       �@&'()�@  & �?�>�=�? 0 do_omnifocus do_OmniFocus�> 0 
write_file 
write_File
�= .aevtoappnull  �   � ****' �< e�;�:*+�9�< 0 do_omnifocus do_OmniFocus�;  �:  * 
�8�7�6�5�4�3�2�1�0�/�8 0 dtetoday dteToday�7 0 refdonetoday refDoneToday�6 0 lstname lstName�5 0 
lstcontext 
lstContext�4 0 
lstproject 
lstProject�3 0 strtext strText�2 0 itask iTask�1 0 strname strName�0 0 
varcontext 
varContext�/ 0 
varproject 
varProject+ �.�-�,�+ ��*�)�(,�'�&�%�$�# ��" ��!�  � � ��
�. 
ldt 
�- .misccurdldt    ��� null
�, 
shdt
�+ 
capp
�* kfrmID  
�) 
FCDo
�( 
FCft,  
�' 
FCdc
�& 
pnam
�% 
FCct
�$ 
FCPr
�# 
cobj
�" .corecnte****       ****
�! 
tab 
�  
msng
� 
ret �9 �*�*j �,E/E�O)���0 �*�, �*�-�[�,\Z�;1E�O�[�,\[�,�,\[�,�,\ZmvE[�k/E�Z[�l/E�Z[�m/E�ZO�E�O |k�j kh ���/���/���/mvE[�k/E�Z[�l/E�Z[�m/E�ZO�a %_ %�%E�O�a  �a %�%E�Y hO�a  �a %�%a %E�Y hO�_ %E�[OY��UUO�( �	��-.�� 0 
write_file 
write_File� �/� /  ��� 0 thefilepath theFilePath� 0 today_tasks today_Tasks�  - ����� 0 thefilepath theFilePath� 0 today_tasks today_Tasks� 0 thetext theText� $0 thefilereference theFileReference. ��������
� 
perm
� .rdwropenshor       file
� 
refn
� 
as  
� 
utf8� 
� .rdwrwritnull���     ****
� .rdwrclosnull���     ****� �E�O��el E�O����� O�j ) �0�
�	12�
� .aevtoappnull  �   � ****0 k     '33  44  -55  =66  K��  �
  �	  1  2 ����� 4�� ������
� 
ldt 
� .misccurdldt    ��� null
� 
shdt� 0 dtetoday dteToday
� 
dfnm
� .sysonwflfile    ��� null�  0 thefilepath theFilePath�� 0 do_omnifocus do_OmniFocus�� 0 today_tasks today_Tasks�� 0 
write_file 
write_File� (*�*j �,E/E�O*��l E�O)j+ E�O)��l+ 
ascr  ��ޭ