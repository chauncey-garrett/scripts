FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � � 
Marked preview

A script to open the current document (in your editor) in the awesome Marked app

By Martijn Engler (http://applecoach.nl)
September 19, 2012

Works great with Keyboard Maestro:
	http://keyboardmaestro.com/main/
     � 	 	�   
 M a r k e d   p r e v i e w 
 
 A   s c r i p t   t o   o p e n   t h e   c u r r e n t   d o c u m e n t   ( i n   y o u r   e d i t o r )   i n   t h e   a w e s o m e   M a r k e d   a p p 
 
 B y   M a r t i j n   E n g l e r   ( h t t p : / / a p p l e c o a c h . n l ) 
 S e p t e m b e r   1 9 ,   2 0 1 2 
 
 W o r k s   g r e a t   w i t h   K e y b o a r d   M a e s t r o : 
 	 h t t p : / / k e y b o a r d m a e s t r o . c o m / m a i n / 
   
  
 l     ��������  ��  ��        l     ��  ��    k e got this method from http://vanderbrew.com/blog/2010/02/15/get-current-application-with-applescript/     �   �   g o t   t h i s   m e t h o d   f r o m   h t t p : / / v a n d e r b r e w . c o m / b l o g / 2 0 1 0 / 0 2 / 1 5 / g e t - c u r r e n t - a p p l i c a t i o n - w i t h - a p p l e s c r i p t /      i         I      �������� 0 getcurrentapp GetCurrentApp��  ��    O         k           r        n        4    �� 
�� 
cobj  m    ����   l    ����  6      !   2    ��
�� 
prcs ! =    " # " 1   	 ��
�� 
pisf # m    ��
�� boovtrue��  ��    o      ���� 0 _app     $�� $ L     % % n     & ' & 1    ��
�� 
pnam ' o    ���� 0 _app  ��    m      ( (�                                                                                  sevs  alis    �  SERENiTY                   ���H+  Y&USystem Events.app                                              ]@q�4�M        ����  	                CoreServices    ���      �5"�    Y&UY&IY&H  9SERENiTY:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    S E R E N i T Y  -System/Library/CoreServices/System Events.app   / ��     ) * ) l     ��������  ��  ��   *  + , + l     -���� - O      . / . r     0 1 0 e     2 2 l    3���� 3 n     4 5 4 m    ��
�� 
file 5 l    6���� 6 n     7 8 7 m    ��
�� 
docu 8 l    9���� 9 4   �� :
�� 
cwin : m    ���� ��  ��  ��  ��  ��  ��   1 o      ���� 0 thefilename theFilename / 4     �� ;
�� 
capp ; I    �������� 0 getcurrentapp GetCurrentApp��  ��  ��  ��   ,  < = < l     ��������  ��  ��   =  > ? > l   ( @���� @ O    ( A B A k    ' C C  D E D I   !�� F��
�� .aevtodocnull  �    alis F o    ���� 0 thefilename theFilename��   E  G�� G I  " '������
�� .miscactvnull��� ��� null��  ��  ��   B m     H H�                                                                                      @ alis    J  SERENiTY                   ���H+  Y&�Marked 2.app                                                   G��#CE        ����  	                Applications    ���      �#��    Y&�  #SERENiTY:Applications: Marked 2.app     M a r k e d   2 . a p p    S E R E N i T Y  Applications/Marked 2.app   / ��  ��  ��   ?  I�� I l     ��������  ��  ��  ��       �� J K L��   J ������ 0 getcurrentapp GetCurrentApp
�� .aevtoappnull  �   � **** K �� ���� M N���� 0 getcurrentapp GetCurrentApp��  ��   M ���� 0 _app   N  (�� O������
�� 
prcs O  
�� 
pisf
�� 
cobj
�� 
pnam�� � *�-�[�,\Ze81�k/E�O��,EU L �� P���� Q R��
�� .aevtoappnull  �   � **** P k     ( S S  + T T  >����  ��  ��   Q   R 	������������ H����
�� 
capp�� 0 getcurrentapp GetCurrentApp
�� 
cwin
�� 
docu
�� 
file�� 0 thefilename theFilename
�� .aevtodocnull  �    alis
�� .miscactvnull��� ��� null�� )*�*j+ / *�k/�,�,EE�UO� �j O*j U ascr  ��ޭ