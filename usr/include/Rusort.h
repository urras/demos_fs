char    _Ructype[];
int     cJ;

#define InT(c)  (((int) (c))&0377)
#define IsQ(c)   (((c)&0300)==0200)
#define Rusort(c) (cJ=(c),InT((IsQ(cJ)|| !(cJ&0200))?(cJ):(_Ructype[InT((cJ)&077)] )))










