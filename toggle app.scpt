FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l      �� 	 
��   	��
Veritrope.com
APP TOGGLE 
Version 1.0
January 13, 2012

Project Status, Latest Updates, and Comments Collected at:
http://veritrope.com/code/toggle-an-app-on-off

// CHANGELOG:

1.0      INITIAL VERSION


// RECOMMENDED INSTALLATION INSTRUCTIONS:

-- Change the property below for app_Name to the
name of the application you'd like to toggle on/off.

-- Save as an application and trigger via 
a keyboard-driven launcher app (like Alfred or LaunchBar). 

-- Note: Many launcher apps allow you to pass information
to an AppleScript. This will allow you to modify this script
to toggle more than one app  See the instructions of
your launcher app for details on how to do this!

    
 �  �  
 V e r i t r o p e . c o m  
 A P P   T O G G L E    
 V e r s i o n   1 . 0  
 J a n u a r y   1 3 ,   2 0 1 2  
  
 P r o j e c t   S t a t u s ,   L a t e s t   U p d a t e s ,   a n d   C o m m e n t s   C o l l e c t e d   a t :  
 h t t p : / / v e r i t r o p e . c o m / c o d e / t o g g l e - a n - a p p - o n - o f f  
  
 / /   C H A N G E L O G :  
  
 1 . 0             I N I T I A L   V E R S I O N  
  
  
 / /   R E C O M M E N D E D   I N S T A L L A T I O N   I N S T R U C T I O N S :  
  
 - -   C h a n g e   t h e   p r o p e r t y   b e l o w   f o r   a p p _ N a m e   t o   t h e  
 n a m e   o f   t h e   a p p l i c a t i o n   y o u ' d   l i k e   t o   t o g g l e   o n / o f f .  
  
 - -   S a v e   a s   a n   a p p l i c a t i o n   a n d   t r i g g e r   v i a    
 a   k e y b o a r d - d r i v e n   l a u n c h e r   a p p   ( l i k e   A l f r e d   o r   L a u n c h B a r ) .    
  
 - -   N o t e :   M a n y   l a u n c h e r   a p p s   a l l o w   y o u   t o   p a s s   i n f o r m a t i o n  
 t o   a n   A p p l e S c r i p t .   T h i s   w i l l   a l l o w   y o u   t o   m o d i f y   t h i s   s c r i p t  
 t o   t o g g l e   m o r e   t h a n   o n e   a p p     S e e   t h e   i n s t r u c t i o n s   o f  
 y o u r   l a u n c h e r   a p p   f o r   d e t a i l s   o n   h o w   t o   d o   t h i s !  
  
      l     ��������  ��  ��        l      ��  ��    � } 
======================================
// USER SWITCHES (YOU CAN CHANGE THESE!)
======================================
     �   �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   U S E R   S W I T C H E S   ( Y O U   C A N   C H A N G E   T H E S E ! )  
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
      l     ��������  ��  ��        l     ��  ��      ENTER THE NAME OF THE APP      �   4 E N T E R   T H E   N A M E   O F   T H E   A P P        l     ��  ��    # THAT YOU WOULD LIKE TO TOGGLE     �   : T H A T   Y O U   W O U L D   L I K E   T O   T O G G L E       l     �� ! "��   !  IN THE PROPERTY BELOW...    " � # # 0 I N   T H E   P R O P E R T Y   B E L O W . . .    $ % $ j     �� &�� 0 app_name app_Name & m      ' ' � ( (   %  ) * ) l     ��������  ��  ��   *  + , + l     ��������  ��  ��   ,  - . - l      �� / 0��   / k e 
======================================
// MAIN PROGRAM 
======================================
    0 � 1 1 �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   M A I N   P R O G R A M    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 .  2 3 2 l     ��������  ��  ��   3  4 5 4 l    * 6���� 6 Z     * 7 8�� 9 7 I     
�� :���� 0 appisrunning appIsRunning :  ;�� ; o    ���� 0 app_name app_Name��  ��   8 I   �� <��
�� .sysoexecTEXT���     TEXT < b     = > = m     ? ? � @ @  k i l l a l l   > l    A���� A n     B C B 1    ��
�� 
strq C o    ���� 0 app_name app_Name��  ��  ��  ��   9 I   *�� D��
�� .sysoexecTEXT���     TEXT D b    & E F E m     G G � H H  o p e n   - a   F l   % I���� I n    % J K J 1   # %��
�� 
strq K o    #���� 0 app_name app_Name��  ��  ��  ��  ��   5  L M L l     ��������  ��  ��   M  N O N l     ��������  ��  ��   O  P Q P l      �� R S��   R w q 
======================================
// MAIN HANDLER SUBROUTINES 
======================================
    S � T T �    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 / /   M A I N   H A N D L E R   S U B R O U T I N E S    
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  
 Q  U V U l     ��������  ��  ��   V  W X W i     Y Z Y I      �� [���� 0 appisrunning appIsRunning [  \�� \ o      ���� 0 appname appName��  ��   Z O     ] ^ ] E     _ ` _ l   	 a���� a n    	 b c b 1    	��
�� 
pnam c 2   ��
�� 
prcs��  ��   ` o   	 
���� 0 appname appName ^ m      d d�                                                                                  sevs  alis    �  SERENiTY                   ����H+   ��System Events.app                                               #�A|�        ����  	                CoreServices    ��0$      �A�9     �� � �  9SERENiTY:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    S E R E N i T Y  -System/Library/CoreServices/System Events.app   / ��   X  e f e l     ��������  ��  ��   f  g h g l     ��������  ��  ��   h  i�� i l     ��������  ��  ��  ��       �� j ' k l��   j �������� 0 app_name app_Name�� 0 appisrunning appIsRunning
�� .aevtoappnull  �   � **** k �� Z���� m n���� 0 appisrunning appIsRunning�� �� o��  o  ���� 0 appname appName��   m ���� 0 appname appName n  d����
�� 
prcs
�� 
pnam�� � 	*�-�,�U l �� p���� q r��
�� .aevtoappnull  �   � **** p k     * s s  4����  ��  ��   q   r �� ?���� G�� 0 appisrunning appIsRunning
�� 
strq
�� .sysoexecTEXT���     TEXT�� +*b   k+   �b   �,%j Y �b   �,%j  ascr  ��ޭ