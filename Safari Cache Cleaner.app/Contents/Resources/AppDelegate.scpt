FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	    AppDelegate.applescript    
 �   2     A p p D e l e g a t e . a p p l e s c r i p t      l     ��  ��       Safari Cache Cleaner     �   ,     S a f a r i   C a c h e   C l e a n e r      l     ��������  ��  ��        l     ��  ��    + %  Created by Roy Prins on 16/06/2017.     �   J     C r e a t e d   b y   R o y   P r i n s   o n   1 6 / 0 6 / 2 0 1 7 .      l     ��  ��    8 2  Copyright � 2017 Roy Prins. All rights reserved.     �   d     C o p y r i g h t   �   2 0 1 7   R o y   P r i n s .   A l l   r i g h t s   r e s e r v e d .      l     ��������  ��  ��         l     ��������  ��  ��      ! " ! h     �� #�� 0 appdelegate AppDelegate # k       $ $  % & % j     �� '
�� 
pare ' 4     �� (
�� 
pcls ( m     ) ) � * *  N S O b j e c t &  + , + l     ��������  ��  ��   ,  - . - l     �� / 0��   /  
 IBOutlets    0 � 1 1    I B O u t l e t s .  2 3 2 j   	 �� 4�� 0 	thewindow 	theWindow 4 m   	 
��
�� 
msng 3  5 6 5 j    �� 7��  0 deletesessions deleteSessions 7 m    ��
�� boovtrue 6  8 9 8 l     ��������  ��  ��   9  : ; : i     < = < I      �� >���� B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_ >  ?�� ? o      ���� 0 anotification aNotification��  ��   = l     �� @ A��   @ S M Insert code here to initialize your application before any files are opened     A � B B �   I n s e r t   c o d e   h e r e   t o   i n i t i a l i z e   y o u r   a p p l i c a t i o n   b e f o r e   a n y   f i l e s   a r e   o p e n e d   ;  C D C l     ��������  ��  ��   D  E F E l     ��������  ��  ��   F  G H G i     I J I I      �� K���� :0 applicationshouldterminate_ applicationShouldTerminate_ K  L�� L o      ���� 
0 sender  ��  ��   J k      M M  N O N l     �� P Q��   P M G Insert code here to do any housekeeping before your application quits     Q � R R �   I n s e r t   c o d e   h e r e   t o   d o   a n y   h o u s e k e e p i n g   b e f o r e   y o u r   a p p l i c a t i o n   q u i t s   O  S�� S L      T T n     U V U o    ����  0 nsterminatenow NSTerminateNow V m     ��
�� misccura��   H  W X W l     ��������  ��  ��   X  Y Z Y l     ��������  ��  ��   Z  [ \ [ i     ] ^ ] I      �� _���� 0 setcheckbox_ setCheckBox_ _  `�� ` o      ���� 
0 sender  ��  ��   ^ Z      a b�� c a l     d���� d =     e f e o     ����  0 deletesessions deleteSessions f m    ��
�� boovtrue��  ��   b r   
  g h g m   
 ��
�� boovfals h o      ����  0 deletesessions deleteSessions��   c r     i j i m    ��
�� boovtrue j o      ����  0 deletesessions deleteSessions \  k l k l     ��������  ��  ��   l  m n m l     �� o p��   o P J--------------------------------------------------------------------------    p � q q � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - n  r s r l     �� t u��   t ' ! Logic for deleting Safari's data    u � v v B   L o g i c   f o r   d e l e t i n g   S a f a r i ' s   d a t a s  w x w l     �� y z��   y P J--------------------------------------------------------------------------    z � { { � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - x  | } | i     ~  ~ I      �� ����� &0 clearbrowserdata_ clearBrowserData_ �  ��� � o      ���� 
0 sender  ��  ��    k     � �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � . ( Check if Safari is running. If so, quit    � � � � P   C h e c k   i f   S a f a r i   i s   r u n n i n g .   I f   s o ,   q u i t �  � � � r      � � � m      � � � � �  S a f a r i � o      ���� 0 appname   �  � � � Z    $ � ��� � � I    
�� ����� 0 appisrunning appIsRunning �  ��� � o    ���� 0 appname  ��  ��   � k     � �  � � � r     � � � m    ��
�� boovtrue � o      ���� 0 started   �  ��� � O    � � � I   ������
�� .aevtquitnull��� ��� null��  ��   � 4    �� �
�� 
capp � o    ���� 0 appname  ��  ��   � r   ! $ � � � m   ! "��
�� boovfals � o      ���� 0 started   �  � � � l  % %��������  ��  ��   �  � � � l  % %�� � ���   � &   Now, remove history/cache files    � � � � @   N o w ,   r e m o v e   h i s t o r y / c a c h e   f i l e s �  � � � I  % *�� ���
�� .ascrcmnt****      � **** � m   % & � � � � � D D e l e t i n g   ~ / L i b r a r y / S a f a r i / H i s t o r y *��   �  � � � I  + 0�� ���
�� .sysoexecTEXT���     TEXT � m   + , � � � � � @ r m   - r f   ~ / L i b r a r y / S a f a r i / H i s t o r y *��   �  � � � l  1 1��������  ��  ��   �  � � � I  1 6�� ���
�� .ascrcmnt****      � **** � m   1 2 � � � � � L D e l e t i n g   ~ / L i b r a r y / S a f a r i / L o c a l S t o r a g e��   �  � � � I  7 <�� ���
�� .sysoexecTEXT���     TEXT � m   7 8 � � � � � H r m   - r f   ~ / L i b r a r y / S a f a r i / L o c a l S t o r a g e��   �  � � � l  = =��������  ��  ��   �  � � � I  = B�� ���
�� .ascrcmnt****      � **** � m   = > � � � � � F D e l e t i n g   ~ / L i b r a r y / S a f a r i / D a t a b a s e s��   �  � � � I  C H�� ���
�� .sysoexecTEXT���     TEXT � m   C D � � � � � B r m   - r f   ~ / L i b r a r y / S a f a r i / D a t a b a s e s��   �  � � � l  I I��������  ��  ��   �  � � � I  I N�� ���
�� .ascrcmnt****      � **** � m   I J � � � � � T D e l e t i n g   ~ / L i b r a r y / C a c h e s / c o m . a p p l e . S a f a r i��   �  � � � I  O T�� ���
�� .sysoexecTEXT���     TEXT � m   O P � � � � � P r m   - r f   ~ / L i b r a r y / C a c h e s / c o m . a p p l e . S a f a r i��   �  � � � l  U U��~�}�  �~  �}   �  � � � I  U Z�| ��{
�| .ascrcmnt****      � **** � m   U V � � � � � R D e l e t i n g   ~ / L i b r a r y / C a c h e s / M e t a d a t a / S a f a r i�{   �  � � � I  [ `�z ��y
�z .sysoexecTEXT���     TEXT � m   [ \ � � � � � N r m   - r f   ~ / L i b r a r y / C a c h e s / M e t a d a t a / S a f a r i�y   �  � � � l  a a�x�w�v�x  �w  �v   �  � � � I  a h�u ��t
�u .ascrcmnt****      � **** � m   a d � � � � � d D e l e t i n g   ~ / L i b r a r y / S a f a r i / R e c e n t l y C l o s e d T a b s . p l i s t�t   �  � � � I  i p�s ��r
�s .sysoexecTEXT���     TEXT � m   i l � � � � � f e c h o   ' '   >   ~ / L i b r a r y / S a f a r i / R e c e n t l y C l o s e d T a b s . p l i s t�r   �  � � � l  q q�q�p�o�q  �p  �o   �  � � � I  q x�n ��m
�n .ascrcmnt****      � **** � m   q t � � � � � P D e l e t i n g   ~ / L i b r a r y / S a f a r i / T o p S i t e s . p l i s t�m   �  � � � I  y ��l ��k
�l .sysoexecTEXT���     TEXT � m   y | � � � � � R e c h o   ' '   >   ~ / L i b r a r y / S a f a r i / T o p S i t e s . p l i s t�k   �  � � � l  � ��j�i�h�j  �i  �h   �  � � � I  � ��g ��f
�g .ascrcmnt****      � **** � m   � �   � R D e l e t i n g   ~ / L i b r a r y / S a f a r i / D o w n l o a d s . p l i s t�f   �  I  � ��e�d
�e .sysoexecTEXT���     TEXT m   � � � T e c h o   ' '   >   ~ / L i b r a r y / S a f a r i / D o w n l o a d s . p l i s t�d    l  � ��c�b�a�c  �b  �a   	
	 I  � ��`�_
�` .ascrcmnt****      � **** m   � � � R D e l e t i n g   ~ / L i b r a r y / S a f a r i / W e b p a g e i c o n s . d b�_  
  I  � ��^�]
�^ .sysoexecTEXT���     TEXT m   � � � T e c h o   ' '   >   ~ / L i b r a r y / S a f a r i / W e b p a g e i c o n s . d b�]    l  � ��\�[�Z�\  �[  �Z    I  � ��Y�X
�Y .ascrcmnt****      � **** m   � � � V D e l e t i n g   ~ / L i b r a r y / S a f a r i / L a s t S e s s i o n . p l i s t�X    I  � ��W�V
�W .sysoexecTEXT���     TEXT m   � � � X e c h o   ' '   >   ~ / L i b r a r y / S a f a r i / L a s t S e s s i o n . p l i s t�V     l  � ��U�T�S�U  �T  �S    !�R! Z   �"#�Q$" =  � �%&% o   � ��P�P 0 started  & m   � ��O
�O boovtrue# k   � �'' ()( I  � ��N*+
�N .sysodlogaskr        TEXT* m   � �,, �-- � S a f a r i ' s   h i s t o r y   a n d   c a c h e s   h a v e   b e e n   c l e a n e d .   S a f a r i   w i l l   b e   r e s t a r t e d .+ �M./
�M 
btns. J   � �00 1�L1 m   � �22 �33  O K�L  / �K45
�K 
appr4 m   � �66 �77 ( S a f a r i   C a c h e   C l e a n e r5 �J8�I
�J 
disp8 m   � ��H
�H stic   �I  ) 9�G9 O  � �:;: I  � ��F�E�D
�F .miscactvnull��� ��� null�E  �D  ; 4   � ��C<
�C 
capp< o   � ��B�B 0 appname  �G  �Q  $ I  ��A=>
�A .sysodlogaskr        TEXT= m   � �?? �@@ \ S a f a r i ' s   h i s t o r y   a n d   c a c h e s   h a v e   b e e n   c l e a n e d .> �@AB
�@ 
btnsA J   � �CC D�?D m   � �EE �FF  O K�?  B �>GH
�> 
apprG m   � �II �JJ ( S a f a r i   C a c h e   C l e a n e rH �=K�<
�= 
dispK m   � ��;
�; stic   �<  �R   } LML l     �:�9�8�:  �9  �8  M NON l     �7�6�5�7  �6  �5  O PQP l     �4RS�4  R P J--------------------------------------------------------------------------   S �TT � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -Q UVU l     �3WX�3  W !  Check if an app is running   X �YY 6   C h e c k   i f   a n   a p p   i s   r u n n i n gV Z[Z l     �2\]�2  \ P J--------------------------------------------------------------------------   ] �^^ � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -[ _`_ i    "aba I      �1c�0�1 0 appisrunning appIsRunningc d�/d o      �.�. 0 appname  �/  �0  b O    efe E    ghg l   	i�-�,i n    	jkj 1    	�+
�+ 
pnamk 2   �*
�* 
prcs�-  �,  h o   	 
�)�) 0 appname  f m     ll�                                                                                  sevs  alis    �  Macintosh HD               �q��H+     (System Events.app                                               ����?H        ����  	                CoreServices    �q��      ��#(       (   '   &  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ` m�(m l     �'�&�%�'  �&  �%  �(   " n�$n l     �#�"�!�#  �"  �!  �$       � op�   o �� 0 appdelegate AppDelegatep � #qr� 0 appdelegate AppDelegateq ss ��t
� misccura
� 
pclst �uu  N S O b j e c tr 
�v���wxyz{�  v ��������
� 
pare� 0 	thewindow 	theWindow�  0 deletesessions deleteSessions� B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_� :0 applicationshouldterminate_ applicationShouldTerminate_� 0 setcheckbox_ setCheckBox_� &0 clearbrowserdata_ clearBrowserData_� 0 appisrunning appIsRunning�  
� 
msng
� boovtruew � =��|}�� B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_� �~� ~  �
�
 0 anotification aNotification�  | �	�	 0 anotification aNotification}  � hx � J����� :0 applicationshouldterminate_ applicationShouldTerminate_� ��� �  �� 
0 sender  �   �� 
0 sender  � �� 
� misccura�   0 nsterminatenow NSTerminateNow� ��,Ey �� ^���������� 0 setcheckbox_ setCheckBox_�� ����� �  ���� 
0 sender  ��  � ���� 
0 sender  �  �� b  e  fEc  Y 	eEc  z �� ���������� &0 clearbrowserdata_ clearBrowserData_�� ����� �  ���� 
0 sender  ��  � �������� 
0 sender  �� 0 appname  �� 0 started  � ' ������� ��� ��� � � � � � � � � � � � � ,��2��6����������?EI�� 0 appisrunning appIsRunning
�� 
capp
�� .aevtquitnull��� ��� null
�� .ascrcmnt****      � ****
�� .sysoexecTEXT���     TEXT
�� 
btns
�� 
appr
�� 
disp
�� stic   �� 
�� .sysodlogaskr        TEXT
�� .miscactvnull��� ��� null���E�O*�k+  eE�O*�/ *j UY fE�O�j O�j O�j O�j O�j O�j O�j O�j O�j O�j Oa j Oa j Oa j Oa j Oa j Oa j Oa j Oa j Oa j Oa j O�e  0a a a kva a a a  a ! "O*�/ *j #UY a $a a %kva a &a a  a ! "{ ��b���������� 0 appisrunning appIsRunning�� ����� �  ���� 0 appname  ��  � ���� 0 appname  � l����
�� 
prcs
�� 
pnam�� � 	*�-�,�U ascr  ��ޭ