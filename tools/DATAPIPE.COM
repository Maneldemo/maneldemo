��	�!+ۊo]�� t-��Z��A|�� ��0u�	��_u� ��#�À�~Һ{��\
�u�DA�#�TA�%���"��	t�� t� ��#�É�{� 	��u�#��? t��h t��u�#��-?t��-hu�!�L�!�� +۴?�!s�`�	���t��#��% �,�CFHu�
�W��#��)ѻ ٴ@�!s���PQ*�Q+��ȱ
�����0Q
�u�Y�/CY
�u�YX�
;ataPipe FILE to TEXT string creator
;y J.DaSilva, Vancouver, BC, feb2000
$
Error reading FileIn.
$
Keep leader at 1..7 characters long.
Please enter at the DOS prompt:
DataPipe.com leader <FileIn >FileOut
 -leader is 'DB' or 'DATA' or other,
  0=TAB so '00db0' is TAB.TAB.db.TAB
  _=blank so '__fcb_' makes '  fcb '
  (all leader text made lower case).
 -FileIn is the input binary file to
  copy to text data statements.
 -FileOut is the resulting text file
  with the ASC data of FileIn.
$