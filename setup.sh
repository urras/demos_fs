MSG=r
TERM=el15ie
HOME=/
SHELL=/bin/sh
USER=root
PATH=/bin:/etc:.
export MSG TERM HOME SHELL USER PATH
stty 9600 dec crt cel15i
echo '---------------'
echo '���������� �������� ������� ������ �������.'
echo '---------------'
echo '���������� � ����� �������� 1-� �����-����.'
echo -n '�������� ����� ���������� ��������� (0/1) � ������� ��: '
read i
echo '+' tar x/fviB /dev/fd$i 800
tar x/fviB /dev/fd$i 800
echo '---------------'
echo '+' "cd bin ; chmod u-t * ; cd .."
cd bin ; chmod u-t * ; cd ..
echo '+' "cd etc ; chmod u-t * ; cd .."
cd etc ; chmod u-t * ; cd ..
echo '+' "cd lib ; chmod u-t * */* ; cd .."
cd lib ; chmod u-t * */* ; cd ..
echo '+' "cd bin ; chmod 6555 chgrp chmod chown mkdir ; cd .."
cd bin ; chmod 6555 chgrp chmod chown mkdir ; cd ..
echo '+' "cd etc ; chmod 6555 fsck mkfs mount umount ; cd .."
cd etc ; chmod 6555 fsck mkfs mount umount ; cd ..
echo '+' "cp etc/passwd.std etc/passwd"
cp etc/passwd.std etc/passwd
echo '+' "rm /confa"
rm /confa
echo '+' "mv /confnosu /confa"
mv /confnosu /confa
echo " ���������� ��������� ���� ���������. �����... "
echo '+' "/usr/bin/ranlib /usr/lib/*.a"
/usr/bin/ranlib /usr/lib/*.a
echo " ���������� ��������� ���� ���������. �����... "
echo '+' "/usr/bin/ranlib /usr/f77lib/*.a"
/usr/bin/ranlib /usr/f77lib/*.a
echo '+' "����� ���������� ������� � ��� ����� ����� ����� ��� ������ :
user ( ��� root - ��� ���������� ���������������� ������� � �������"
echo '+' "/etc/reboot -q"
/etc/reboot -q
