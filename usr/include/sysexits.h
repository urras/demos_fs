#ifndef _sysexits_h_
#       define  _sysexits_h_

/*
**  SYSEXITS.H -- ���� ��������� ��������� ��������.
**
**
**      � ���� ����� ������� ������� ����������������� ���������
**      ���� ��������� ����� ��������, ��� delivermail
**      � ��������� ������� ������� �����.
**
**      ������ ������ ���������� � EX_BASE ��� ���������� �����������
**      ��������� � ������ ��������� ������ ������ ��������.
**      ��������������� �������� ����� ���������:
**
**      EX_USAGE -- ������� �������������� �����������, �.�. � ��-
**              ���������� ������ ����������, � ������� �������, ���-
**              �������� ���������� � �.�.
**      EX_DATAERR -- ������� ������ � ���-�� �����������.
**              ��� �������� ������� ������������ ������ ��� ���������
**              ������������, �� �� ��� ��������� ������.
**      EX_NOINPUT -- ������� (��� ���������) ���� �� ����������, ���
**              ��� ������ ��������. ���� �� ��������� ������ ����
**              "������ ��������" �������� ����� (���� ��� ������
**              �������� �� ��� ��������).
**      EX_NOUSER -- ���������� ������������ �� ����������. ���
**              ������������ ��� �������� ������� � ��� �����
**              � ��������� �������.
**      EX_NOHOST -- ��������� ������ �� ����������. ��� ������������
**              � �������� ������� � ��� ������� ��������.
**      EX_UNAVAILABLE -- ������ �� ��������������.  ����������, ����
**              ��������������� ��������� ��� ����� �� ����������.
**              ������������ ����� � ��� �������, ����� ���-������
**              �� ���������, �� �� �� ������ ������.
**      EX_SOFTWARE -- ���������� ���������� ������ ������������ �����������.
**              ���� ������� ���������� ������, ��� ����� ������ ����-
**              ������� � ��.
**      EX_OSERR -- ���������� ������ ��. ������������ ��� �����������
**              ������ ���� "�� ���� ������� �������", "�� ���� �������
**              �����" � �� ��������. ���� �� ������ ����, �����
**              getuid, ������������ ������������� ������������,
**              ������������� � ��������� ����� �������������.
**      EX_OSFILE -- ��������� ���� (����� /etc/passwd, /etc/utmp � �.�.)
**              �� ����������, �� ����� ���� ������, ��� �������� �����-��
**              ������ (��������, ��������������).
**      EX_CANTCREAT -- �������� ���� (��������� �������������) �� �����
**              ���� ������.
**      EX_IOERR -- �� ����� ������ � ������ �������� ������ �����/������.
**      EX_TEMPFAIL -- ��������� �������, �� ����� ���� �� ���������� �������.
**              � sendmail ��� ������, ��� ��������� ��������� �����
**              (��������) �� ����� ���������� �����, � ������ ����� ���������
**              �������.
**      EX_PROTOCOL -- ��������� ������� ������� ���-�� �����������������
**              ���������.
**      EX_NOPERM -- � ��� ��� ���� �� ���������� ��������� ��������.
**              ��� �������� �� ������� � ������� (� ������ ����
**              ������������ NOINPUT ��� CANTCREAT), �� ������ �����
**              �������� ������. ������, �� ������ ������ �����, � ��
**              ������ ���, �������� �����.
**
*/

# define EX_OK          0       /* �������� ���������� */

# define EX__BASE       64      /* ��������� �������� ��� ����� ������ */

# define EX_USAGE       64      /* ������ ��������� � ��������� */
# define EX_DATAERR     65      /* ������ � ������� ������ */
# define EX_NOINPUT     66      /* �� ���� ������� ������� ���� */
# define EX_NOUSER      67      /* ������� �� �������� */
# define EX_NOHOST      68      /* ������ �� �������� */
# define EX_UNAVAILABLE 69      /* ������ �� ��������������� */
# define EX_SOFTWARE    70      /* ���������� ������ �� */
# define EX_OSERR       71      /* ��������� ������ (����., �� ���������� fork */
# define EX_OSFILE      72      /* ����������� ������ ���� �� */
# define EX_CANTCREAT   73      /* �� ���� ������� �������� ���� (������������) */
# define EX_IOERR       74      /* ������ �����/������ */
# define EX_TEMPFAIL    75      /* ��������� ������; ��������� �������� */
# define EX_PROTOCOL    76      /* ������ � ��������� */
# define EX_NOPERM      77      /* ������ !!! */

#endif  _sysexits_h_
