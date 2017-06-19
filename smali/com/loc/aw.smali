.class public Lcom/loc/aw;
.super Ljava/lang/Object;
.source "APS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/aw$a;,
        Lcom/loc/aw$b;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/StringBuilder;


# instance fields
.field private A:Z

.field private B:Z

.field private C:J

.field private D:J

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Lcom/loc/bt;

.field private I:Ljava/util/Timer;

.field private J:Ljava/util/TimerTask;

.field private K:I

.field private L:Lcom/loc/cb;

.field private M:Lcom/loc/ch;

.field private N:[I

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:J

.field private R:J

.field private S:Ljava/lang/String;

.field private T:Lcom/loc/be;

.field private U:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field private V:Ljava/lang/String;

.field private W:Ljava/util/Timer;

.field private X:Ljava/util/TimerTask;

.field private Y:Ljava/lang/String;

.field private Z:I

.field public a:Z

.field private aa:I

.field private ab:Z

.field private ac:Z

.field private ad:J

.field b:Lcom/loc/bp;

.field d:Lcom/loc/ax;

.field e:I

.field f:Z

.field g:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field h:Ljava/lang/Object;

.field public i:Z

.field j:I

.field k:Z

.field l:Lcom/loc/aw$a;

.field private m:Landroid/content/Context;

.field private n:Landroid/net/ConnectivityManager;

.field private o:Lcom/loc/bg;

.field private p:Lcom/loc/bf;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private t:Lcom/loc/aw$b;

.field private u:Landroid/net/wifi/WifiInfo;

.field private v:Lorg/json/JSONObject;

.field private w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v2, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    .line 63
    iput-object v2, p0, Lcom/loc/aw;->n:Landroid/net/ConnectivityManager;

    .line 64
    iput-object v2, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/aw;->q:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/aw;->r:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loc/aw;->s:Ljava/util/HashMap;

    .line 74
    new-instance v0, Lcom/loc/aw$b;

    invoke-direct {v0, p0, v2}, Lcom/loc/aw$b;-><init>(Lcom/loc/aw;Lcom/loc/aw$1;)V

    iput-object v0, p0, Lcom/loc/aw;->t:Lcom/loc/aw$b;

    .line 79
    iput-object v2, p0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    .line 80
    iput-object v2, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    .line 81
    iput-object v2, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 86
    iput-wide v4, p0, Lcom/loc/aw;->x:J

    .line 90
    iput-wide v4, p0, Lcom/loc/aw;->y:J

    .line 98
    iput-wide v4, p0, Lcom/loc/aw;->z:J

    .line 99
    iput-boolean v3, p0, Lcom/loc/aw;->A:Z

    .line 103
    iput-boolean v3, p0, Lcom/loc/aw;->B:Z

    .line 104
    iput-wide v4, p0, Lcom/loc/aw;->C:J

    .line 105
    iput-wide v4, p0, Lcom/loc/aw;->D:J

    .line 109
    iput v3, p0, Lcom/loc/aw;->E:I

    const-string/jumbo v0, "00:00:00:00:00:00"

    .line 110
    iput-object v0, p0, Lcom/loc/aw;->F:Ljava/lang/String;

    .line 111
    iput-object v2, p0, Lcom/loc/aw;->G:Ljava/lang/String;

    .line 113
    iput-object v2, p0, Lcom/loc/aw;->H:Lcom/loc/bt;

    .line 114
    iput-object v2, p0, Lcom/loc/aw;->I:Ljava/util/Timer;

    .line 115
    iput-object v2, p0, Lcom/loc/aw;->J:Ljava/util/TimerTask;

    .line 116
    iput v3, p0, Lcom/loc/aw;->K:I

    .line 117
    iput-object v2, p0, Lcom/loc/aw;->L:Lcom/loc/cb;

    .line 118
    iput-object v2, p0, Lcom/loc/aw;->M:Lcom/loc/ch;

    .line 119
    iput-boolean v3, p0, Lcom/loc/aw;->a:Z

    const/4 v0, 0x3

    .line 120
    new-array v0, v0, [I

    aput v3, v0, v3

    aput v3, v0, v6

    const/4 v1, 0x2

    aput v3, v0, v1

    iput-object v0, p0, Lcom/loc/aw;->N:[I

    .line 121
    iput-object v2, p0, Lcom/loc/aw;->O:Ljava/lang/String;

    .line 124
    iput-object v2, p0, Lcom/loc/aw;->P:Ljava/lang/String;

    .line 125
    iput-wide v4, p0, Lcom/loc/aw;->Q:J

    .line 126
    iput-wide v4, p0, Lcom/loc/aw;->R:J

    .line 127
    iput-object v2, p0, Lcom/loc/aw;->S:Ljava/lang/String;

    .line 128
    iput-object v2, p0, Lcom/loc/aw;->T:Lcom/loc/be;

    .line 129
    iput-object v2, p0, Lcom/loc/aw;->b:Lcom/loc/bp;

    const/4 v0, -0x1

    .line 133
    iput v0, p0, Lcom/loc/aw;->e:I

    .line 134
    iput-boolean v3, p0, Lcom/loc/aw;->f:Z

    .line 135
    iput-object v2, p0, Lcom/loc/aw;->U:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 136
    iput-object v2, p0, Lcom/loc/aw;->V:Ljava/lang/String;

    .line 137
    iput-object v2, p0, Lcom/loc/aw;->W:Ljava/util/Timer;

    .line 138
    iput-object v2, p0, Lcom/loc/aw;->X:Ljava/util/TimerTask;

    .line 139
    iput-object v2, p0, Lcom/loc/aw;->Y:Ljava/lang/String;

    .line 140
    iput v3, p0, Lcom/loc/aw;->Z:I

    .line 141
    iput v3, p0, Lcom/loc/aw;->aa:I

    .line 142
    iput-object v2, p0, Lcom/loc/aw;->g:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 144
    iput-boolean v6, p0, Lcom/loc/aw;->ab:Z

    .line 145
    iput-boolean v6, p0, Lcom/loc/aw;->ac:Z

    .line 147
    iput-wide v4, p0, Lcom/loc/aw;->ad:J

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/aw;->h:Ljava/lang/Object;

    .line 168
    iput-boolean v3, p0, Lcom/loc/aw;->i:Z

    const/16 v0, 0xc

    .line 1248
    iput v0, p0, Lcom/loc/aw;->j:I

    .line 2130
    iput-boolean v6, p0, Lcom/loc/aw;->k:Z

    .line 3397
    new-instance v0, Lcom/loc/aw$a;

    invoke-direct {v0, p0}, Lcom/loc/aw$a;-><init>(Lcom/loc/aw;)V

    iput-object v0, p0, Lcom/loc/aw;->l:Lcom/loc/aw$a;

    .line 156
    return-void
.end method

.method private A()Z
    .locals 2

    .prologue
    .line 3209
    iget-object v0, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    if-nez v0, :cond_1

    .line 3212
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 3209
    :cond_1
    iget-object v0, p0, Lcom/loc/aw;->n:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 3210
    iget-object v0, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    iget-object v1, p0, Lcom/loc/aw;->n:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Lcom/loc/bg;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    return v0
.end method

.method private B()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3232
    iget-object v0, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v1, "poiid"

    invoke-static {v0, v1}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3246
    iput-object v2, p0, Lcom/loc/aw;->G:Ljava/lang/String;

    .line 3253
    :goto_0
    return-void

    .line 3234
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v1, "poiid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3237
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-gt v1, v2, :cond_2

    .line 3240
    iput-object v0, p0, Lcom/loc/aw;->G:Ljava/lang/String;

    goto :goto_0

    .line 3244
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3236
    iput-object v0, p0, Lcom/loc/aw;->G:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 3238
    iput-object v0, p0, Lcom/loc/aw;->G:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private C()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "version"

    .line 3264
    invoke-static {v1}, Lcom/loc/cb;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3270
    :goto_0
    return-object v0

    .line 3269
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private D()V
    .locals 2

    .prologue
    .line 3281
    iget-object v0, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    if-nez v0, :cond_1

    .line 3282
    :cond_0
    return-void

    .line 3281
    :cond_1
    iget-object v0, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/loc/aw;->a:Z

    if-eqz v0, :cond_0

    .line 3285
    iget-object v0, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    iget-boolean v1, p0, Lcom/loc/aw;->a:Z

    invoke-virtual {v0, v1}, Lcom/loc/bg;->a(Z)V

    .line 3286
    return-void
.end method

.method private E()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3294
    iget-object v0, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3301
    sget-object v0, Lcom/loc/e;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3307
    sget-object v0, Lcom/loc/e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3314
    const/4 v0, 0x1

    return v0

    .line 3298
    :cond_0
    sget-object v0, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3299
    return v2

    .line 3305
    :cond_1
    sget-object v0, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "src is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3306
    return v2

    .line 3311
    :cond_2
    sget-object v0, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "license is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3312
    return v2
.end method

.method private F()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3364
    iget-object v0, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3366
    iget-object v0, p0, Lcom/loc/aw;->N:[I

    aget v0, v0, v1

    if-eqz v0, :cond_1

    .line 3370
    iget-object v0, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3371
    if-eqz v2, :cond_2

    .line 3377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 3378
    :goto_0
    iget-object v4, p0, Lcom/loc/aw;->N:[I

    array-length v4, v4

    if-lt v0, v4, :cond_3

    .line 3382
    :try_start_0
    iget-object v0, p0, Lcom/loc/aw;->N:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 3384
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 3383
    invoke-static {v0}, Lcom/loc/r;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 3385
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "coluphist"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3392
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3395
    return-void

    .line 3365
    :cond_0
    return-void

    .line 3367
    :cond_1
    return-void

    .line 3375
    :cond_2
    return-void

    .line 3379
    :cond_3
    iget-object v4, p0, Lcom/loc/aw;->N:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3391
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private G()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 3458
    sget-object v1, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 3467
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/loc/aw;->A:Z

    if-eqz v1, :cond_2

    .line 3475
    :goto_1
    invoke-virtual {p0}, Lcom/loc/aw;->d()V

    .line 3480
    iget-object v1, p0, Lcom/loc/aw;->q:Ljava/util/ArrayList;

    .line 3481
    if-nez v1, :cond_3

    .line 3497
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/loc/aw;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3507
    :goto_3
    invoke-virtual {p0, v7}, Lcom/loc/aw;->b(Z)Ljava/lang/String;

    move-result-object v3

    .line 3508
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/loc/aw;->ac:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/loc/aw;->ab:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3516
    invoke-virtual {p0, v5}, Lcom/loc/aw;->c(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3518
    invoke-static {}, Lcom/loc/bj;->a()Lcom/loc/bj;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/loc/bj;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v4

    .line 3520
    invoke-static {v4}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 3530
    invoke-virtual {p0}, Lcom/loc/aw;->f()Ljava/lang/String;

    move-result-object v4

    .line 3531
    invoke-direct {p0, v4, v7, v5}, Lcom/loc/aw;->a(Ljava/lang/String;ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v6

    .line 3532
    invoke-static {v6}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3546
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3548
    invoke-direct {p0, v3, v0}, Lcom/loc/aw;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    .line 3549
    invoke-static {v0}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 3557
    return-object v6

    .line 3459
    :cond_1
    sget-object v1, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    sget-object v2, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v7, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3468
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    invoke-virtual {v1}, Lcom/loc/bf;->f()V

    .line 3469
    iget-object v1, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    invoke-virtual {v1}, Lcom/loc/bf;->d()Landroid/telephony/CellLocation;

    .line 3470
    iget-object v1, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    invoke-virtual {v1}, Lcom/loc/bf;->b()Lcom/loc/be;

    move-result-object v0

    goto/16 :goto_1

    .line 3481
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3485
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/aw;->D:J

    .line 3486
    iget-object v2, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    invoke-virtual {v2}, Lcom/loc/bg;->a()Ljava/util/List;

    move-result-object v2

    .line 3487
    if-eqz v2, :cond_0

    .line 3488
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 3506
    :catch_0
    move-exception v1

    goto/16 :goto_3

    .line 3510
    :cond_4
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    .line 3512
    iget v1, p0, Lcom/loc/aw;->j:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    .line 3513
    sget-object v1, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    .line 3562
    :goto_4
    return-object v0

    :cond_5
    const-wide/16 v0, 0x0

    .line 3521
    iput-wide v0, p0, Lcom/loc/aw;->R:J

    const/4 v0, 0x4

    .line 3522
    invoke-virtual {v4, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    .line 3523
    iput-object v4, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 3525
    invoke-direct {p0}, Lcom/loc/aw;->H()V

    .line 3527
    return-object v4

    :cond_6
    const-string/jumbo v3, "new"

    .line 3533
    invoke-virtual {v6, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    .line 3534
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/loc/aw;->S:Ljava/lang/String;

    .line 3535
    iput-object v0, p0, Lcom/loc/aw;->T:Lcom/loc/be;

    .line 3536
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/loc/aw;->x:J

    .line 3537
    iput-object v6, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 3539
    invoke-static {}, Lcom/loc/bj;->a()Lcom/loc/bj;

    move-result-object v0

    iget-object v3, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v4, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/loc/bj;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AmapLoc;Landroid/content/Context;Z)V

    .line 3542
    invoke-direct {p0}, Lcom/loc/aw;->H()V

    move-object v0, v6

    goto :goto_4

    .line 3550
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/aw;->S:Ljava/lang/String;

    const-string/jumbo v1, "file"

    .line 3551
    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 3552
    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    .line 3553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u79bb\u7ebf\u5b9a\u4f4d\u7ed3\u679c\uff0c\u5728\u7ebf\u5b9a\u4f4d\u5931\u8d25\u539f\u56e0:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3554
    invoke-virtual {v6}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3553
    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    .line 3555
    iput-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    goto :goto_4
.end method

.method private H()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3566
    iput-object v0, p0, Lcom/loc/aw;->U:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 3567
    iput-object v0, p0, Lcom/loc/aw;->V:Ljava/lang/String;

    .line 3568
    return-void
.end method

.method private I()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 3706
    invoke-static {}, Lcom/loc/bu;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3713
    sget-object v0, Lcom/loc/bd;->a:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/16 v1, 0x7d0

    if-gt v0, v1, :cond_2

    .line 3719
    iget-object v0, p0, Lcom/loc/aw;->W:Ljava/util/Timer;

    if-nez v0, :cond_3

    .line 3728
    :cond_0
    new-instance v0, Lcom/loc/aw$2;

    invoke-direct {v0, p0}, Lcom/loc/aw$2;-><init>(Lcom/loc/aw;)V

    iput-object v0, p0, Lcom/loc/aw;->X:Ljava/util/TimerTask;

    .line 3797
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "T-O"

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/loc/aw;->W:Ljava/util/Timer;

    .line 3798
    iget-object v0, p0, Lcom/loc/aw;->W:Ljava/util/Timer;

    iget-object v1, p0, Lcom/loc/aw;->X:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 3799
    return-void

    .line 3710
    :cond_1
    invoke-direct {p0}, Lcom/loc/aw;->J()V

    .line 3711
    return-void

    .line 3717
    :cond_2
    invoke-direct {p0}, Lcom/loc/aw;->J()V

    .line 3718
    return-void

    .line 3719
    :cond_3
    iget-object v0, p0, Lcom/loc/aw;->X:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 3723
    return-void
.end method

.method private J()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3814
    iget-object v0, p0, Lcom/loc/aw;->X:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    .line 3818
    :goto_0
    iget-object v0, p0, Lcom/loc/aw;->W:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 3823
    :goto_1
    return-void

    .line 3815
    :cond_0
    iget-object v0, p0, Lcom/loc/aw;->X:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 3816
    iput-object v1, p0, Lcom/loc/aw;->X:Ljava/util/TimerTask;

    goto :goto_0

    .line 3819
    :cond_1
    iget-object v0, p0, Lcom/loc/aw;->W:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3820
    iget-object v0, p0, Lcom/loc/aw;->W:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 3821
    iput-object v1, p0, Lcom/loc/aw;->W:Ljava/util/Timer;

    goto :goto_1
.end method

.method private K()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3885
    iput v0, p0, Lcom/loc/aw;->Z:I

    .line 3886
    iput v0, p0, Lcom/loc/aw;->aa:I

    .line 3887
    return-void
.end method

.method private L()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3896
    iget-object v0, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3898
    sget-object v0, Lcom/loc/bd;->a:[I

    aget v0, v0, v1

    if-eqz v0, :cond_1

    .line 3903
    iget-object v0, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3904
    if-eqz v2, :cond_2

    .line 3910
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "activityoffdl"

    move v0, v1

    .line 3913
    :goto_0
    sget-object v5, Lcom/loc/bd;->a:[I

    array-length v5, v5

    if-lt v0, v5, :cond_3

    .line 3917
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 3918
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3919
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3932
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3935
    return-void

    .line 3897
    :cond_0
    return-void

    .line 3899
    :cond_1
    return-void

    .line 3908
    :cond_2
    return-void

    .line 3914
    :cond_3
    sget-object v5, Lcom/loc/bd;->a:[I

    aget v5, v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3913
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3931
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private M()[D
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    .line 3944
    new-array v0, v0, [D

    .line 3945
    iget-object v1, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v1}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3951
    iget-object v1, p0, Lcom/loc/aw;->g:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v1}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3958
    aput-wide v2, v0, v4

    .line 3959
    aput-wide v2, v0, v5

    .line 3961
    :goto_0
    return-object v0

    .line 3949
    :cond_0
    iget-object v1, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v2

    aput-wide v2, v0, v4

    .line 3950
    iget-object v1, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v2

    aput-wide v2, v0, v5

    goto :goto_0

    .line 3955
    :cond_1
    iget-object v1, p0, Lcom/loc/aw;->g:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v2

    aput-wide v2, v0, v4

    .line 3956
    iget-object v1, p0, Lcom/loc/aw;->g:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v2

    aput-wide v2, v0, v5

    goto :goto_0
.end method

.method private N()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4029
    :try_start_0
    iput-object v0, p0, Lcom/loc/aw;->S:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4030
    iput-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-wide/16 v0, 0x0

    .line 4031
    iput-wide v0, p0, Lcom/loc/aw;->R:J

    const-wide/16 v0, 0x0

    .line 4032
    iput-wide v0, p0, Lcom/loc/aw;->x:J

    .line 4033
    invoke-static {}, Lcom/loc/ba;->a()Lcom/loc/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/ba;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4039
    :goto_0
    return-void

    .line 4038
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/aw;ZI)I
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/loc/aw;->a(ZI)I

    move-result v0

    return v0
.end method

.method private a(ZI)I
    .locals 1

    .prologue
    .line 953
    if-eqz p1, :cond_0

    .line 956
    invoke-direct {p0, p2}, Lcom/loc/aw;->c(I)V

    .line 958
    :goto_0
    invoke-direct {p0}, Lcom/loc/aw;->q()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    return v0

    .line 954
    :cond_0
    invoke-direct {p0}, Lcom/loc/aw;->y()V

    goto :goto_0

    .line 958
    :cond_1
    iget-object v0, p0, Lcom/loc/aw;->L:Lcom/loc/cb;

    invoke-virtual {v0}, Lcom/loc/cb;->g()I

    move-result v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/loc/aw;J)J
    .locals 1

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/loc/aw;->D:J

    return-wide p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 3582
    invoke-static {}, Lcom/loc/bu;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3615
    if-nez p1, :cond_3

    .line 3625
    :cond_0
    invoke-direct {p0}, Lcom/loc/aw;->I()V

    .line 3627
    invoke-static {}, Lcom/loc/bm;->a()Lcom/loc/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bm;->b()Ljava/util/ArrayList;

    move-result-object v8

    .line 3634
    :try_start_0
    invoke-static {}, Lcom/loc/bd;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3665
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 3669
    if-nez v7, :cond_7

    .line 3693
    :goto_0
    return-object v11

    .line 3586
    :cond_2
    return-object v11

    .line 3615
    :cond_3
    iget-object v0, p0, Lcom/loc/aw;->V:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3616
    iget-object v0, p0, Lcom/loc/aw;->U:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_0

    .line 3620
    iget-object v0, p0, Lcom/loc/aw;->U:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    return-object v0

    .line 3635
    :cond_4
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, v0}, Lcom/loc/bd;->a(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v9

    .line 3637
    if-eqz v9, :cond_1

    .line 3638
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v7, v6

    .line 3643
    :goto_1
    if-ge v7, v10, :cond_1

    .line 3644
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3645
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 3646
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3647
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3645
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 3648
    invoke-direct/range {v0 .. v5}, Lcom/loc/aw;->a(Ljava/lang/String;Ljava/lang/String;[DLjava/lang/String;I)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    .line 3650
    invoke-static {v0}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3643
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 3652
    :cond_5
    iput-object p1, p0, Lcom/loc/aw;->V:Ljava/lang/String;

    .line 3653
    iput-object v0, p0, Lcom/loc/aw;->U:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 3658
    return-object v0

    .line 3671
    :cond_6
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bl;

    .line 3673
    invoke-virtual {v0}, Lcom/loc/bl;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/loc/aw;->a(Ljava/lang/String;Ljava/lang/String;[DLjava/lang/String;I)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    .line 3674
    invoke-static {v0}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 3670
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    :cond_7
    if-lt v6, v7, :cond_6

    goto :goto_0

    .line 3676
    :cond_8
    iput-object p1, p0, Lcom/loc/aw;->V:Ljava/lang/String;

    .line 3677
    iput-object v0, p0, Lcom/loc/aw;->U:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3682
    return-object v0

    .line 3691
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[DLjava/lang/String;I)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3837
    invoke-static {}, Lcom/loc/bw;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3841
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 3843
    if-nez v0, :cond_1

    move-object v0, p3

    .line 3857
    :goto_0
    invoke-static {}, Lcom/loc/bw;->b()J

    const/4 v1, 0x2

    .line 3858
    new-array v6, v1, [I

    .line 3859
    iget v1, p0, Lcom/loc/aw;->aa:I

    aput v1, v6, v2

    .line 3860
    iget v1, p0, Lcom/loc/aw;->Z:I

    aput v1, v6, v7

    .line 3861
    iget-object v5, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    invoke-static/range {v0 .. v6}, Lcom/loc/bd;->a([DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;[I)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    .line 3874
    return-object v0

    .line 3838
    :cond_0
    return-object v3

    .line 3844
    :cond_1
    if-eqz p3, :cond_3

    .line 3847
    :goto_1
    aget-wide v0, p3, v2

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_2

    aget-wide v0, p3, v7

    cmpl-double v0, v0, v4

    if-nez v0, :cond_4

    .line 3854
    :cond_2
    return-object v3

    .line 3845
    :cond_3
    invoke-direct {p0}, Lcom/loc/aw;->M()[D

    move-result-object p3

    goto :goto_1

    :cond_4
    move-object v0, p3

    .line 3847
    goto :goto_0
.end method

.method private a(Ljava/lang/String;ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x6

    .line 2298
    iget-object v0, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 2305
    if-nez p1, :cond_2

    .line 2306
    :cond_0
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const/4 v1, 0x3

    .line 2307
    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    .line 2308
    sget-object v1, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    .line 2309
    return-object v0

    .line 2299
    :cond_1
    sget-object v0, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2300
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const/4 v1, 0x1

    .line 2301
    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    .line 2302
    sget-object v1, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    .line 2303
    return-object v0

    .line 2305
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2321
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    .line 2322
    new-instance v0, Lcom/loc/br;

    invoke-direct {v0}, Lcom/loc/br;-><init>()V

    .line 2325
    :try_start_0
    iget-object v1, p0, Lcom/loc/aw;->b:Lcom/loc/bp;

    iget-object v2, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/loc/aw;->H:Lcom/loc/bt;

    invoke-static {}, Lcom/loc/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/loc/bp;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/loc/bt;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2334
    if-eqz v1, :cond_3

    .line 2341
    invoke-static {}, Lcom/loc/bw;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/aw;->ad:J

    .line 2343
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v3, "\"status\":\"0\""

    .line 2344
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2356
    invoke-static {v1}, Lcom/loc/bh;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 2361
    if-eqz v1, :cond_5

    .line 2386
    invoke-virtual {v0, v1}, Lcom/loc/br;->a(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v1

    .line 2393
    invoke-static {v1}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2403
    if-nez v1, :cond_9

    .line 2411
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    .line 2412
    invoke-virtual {v0, v6}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    .line 2413
    sget-object v1, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "location is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2414
    sget-object v1, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    .line 2415
    return-object v0

    .line 2333
    :catch_0
    move-exception v0

    .line 2327
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2328
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    .line 2329
    invoke-virtual {v0, v7}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    .line 2330
    sget-object v1, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "please check the network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2331
    sget-object v1, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    .line 2332
    return-object v0

    .line 2335
    :cond_3
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    .line 2336
    invoke-virtual {v0, v7}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    .line 2337
    sget-object v1, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "please check the network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2338
    sget-object v1, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    .line 2339
    return-object v0

    .line 2349
    :cond_4
    invoke-virtual {v0, v2}, Lcom/loc/br;->b(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    .line 2350
    return-object v0

    .line 2362
    :cond_5
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    .line 2363
    invoke-virtual {v0, v8}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    .line 2364
    sget-object v1, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "decrypt response data error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2365
    sget-object v1, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    .line 2366
    return-object v0

    .line 2394
    :cond_6
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->D()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_7

    .line 2425
    :cond_7
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a()I

    move-result v0

    if-eqz v0, :cond_b

    .line 2439
    :cond_8
    :goto_0
    iget-boolean v0, p0, Lcom/loc/aw;->ac:Z

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(Z)V

    .line 2440
    iget-boolean v0, p0, Lcom/loc/aw;->ab:Z

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Z)V

    .line 2441
    return-object v1

    .line 2404
    :cond_9
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aw;->O:Ljava/lang/String;

    .line 2405
    invoke-virtual {v1, v6}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    .line 2406
    sget-object v2, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "location faile retype:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2407
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " rdesc:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/loc/aw;->O:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string/jumbo v0, "null"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2406
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2408
    sget-object v0, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    .line 2409
    return-object v1

    .line 2407
    :cond_a
    iget-object v0, p0, Lcom/loc/aw;->O:Ljava/lang/String;

    goto :goto_1

    .line 2426
    :cond_b
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b()I

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "-5"

    .line 2427
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2433
    :cond_c
    invoke-virtual {v1, v8}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    .line 2437
    :goto_2
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_d
    const-string/jumbo v0, "1"

    .line 2428
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "2"

    .line 2429
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "14"

    .line 2430
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "24"

    .line 2431
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "-1"

    .line 2432
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2435
    invoke-virtual {v1, v6}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/loc/aw;)Lcom/loc/bg;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    return-object v0
.end method

.method private a(III)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3170
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "e"

    .line 3171
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "d"

    .line 3172
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "u"

    .line 3173
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3174
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/loc/aw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/loc/aw;->Y:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    .locals 26

    .prologue
    .line 1512
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "0"

    const-string/jumbo v11, "0"

    const-string/jumbo v12, "0"

    const-string/jumbo v13, "0"

    const-string/jumbo v14, "0"

    .line 1518
    sget-object v15, Lcom/loc/e;->i:Ljava/lang/String;

    const-string/jumbo v2, "888888888888888"

    .line 1519
    sput-object v2, Lcom/loc/e;->b:Ljava/lang/String;

    const-string/jumbo v2, "888888888888888"

    .line 1520
    sput-object v2, Lcom/loc/e;->c:Ljava/lang/String;

    const-string/jumbo v2, ""

    .line 1521
    sput-object v2, Lcom/loc/e;->d:Ljava/lang/String;

    const/16 v2, -0x8000

    const/16 v3, 0x7fff

    .line 1522
    invoke-static {v2, v3}, Lcom/loc/bw;->a(II)I

    move-result v16

    const-string/jumbo v6, ""

    const-string/jumbo v5, ""

    const-string/jumbo v7, ""

    .line 1527
    sget-object v3, Lcom/loc/e;->e:Ljava/lang/String;

    .line 1528
    sget-object v2, Lcom/loc/e;->f:Ljava/lang/String;

    .line 1530
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/loc/aw;->ac:Z

    if-eqz v4, :cond_3

    move-object v4, v3

    move-object v3, v2

    .line 1535
    :goto_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1536
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1537
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->p:Lcom/loc/bf;

    .line 1540
    invoke-virtual {v2}, Lcom/loc/bf;->c()I

    move-result v20

    .line 1541
    invoke-virtual {v2}, Lcom/loc/bf;->e()Landroid/telephony/TelephonyManager;

    move-result-object v21

    .line 1542
    invoke-virtual {v2}, Lcom/loc/bf;->a()Ljava/util/ArrayList;

    move-result-object v22

    const/4 v2, 0x2

    .line 1544
    move/from16 v0, v20

    if-eq v0, v2, :cond_4

    move-object v9, v8

    .line 1548
    :goto_1
    if-nez v21, :cond_5

    :cond_0
    :goto_2
    const/4 v2, 0x0

    .line 1599
    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/loc/aw;->n:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v2

    .line 1603
    :goto_3
    invoke-static {v2}, Lcom/loc/bw;->a(Landroid/net/NetworkInfo;)I

    move-result v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_b

    const/4 v2, 0x0

    .line 1614
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    .line 1641
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/loc/aw;->B()V

    const-string/jumbo v2, "<?xml version=\"1.0\" encoding=\""

    .line 1642
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "GBK"

    .line 1643
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, "\"?>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<Cell_Req ver=\"3.0\"><HDR version=\"3.0\" cdma=\""

    .line 1644
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\" gtype=\""

    .line 1646
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "1"

    .line 1647
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :goto_5
    const-string/jumbo v2, "\" glong=\""

    .line 1650
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\" glat=\""

    .line 1651
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\" precision=\""

    .line 1652
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\"><src>"

    .line 1653
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</src><license>"

    .line 1654
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</license><key>"

    .line 1655
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</key><clientid>"

    .line 1656
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/loc/e;->h:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</clientid><imei>"

    .line 1657
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/loc/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</imei><imsi>"

    .line 1658
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/loc/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</imsi><reqid>"

    .line 1659
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</reqid><smac>"

    .line 1660
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/loc/aw;->F:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</smac><sdkv>"

    .line 1661
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/loc/aw;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</sdkv><corv>"

    .line 1662
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/loc/aw;->C()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</corv><poiid>"

    .line 1663
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/loc/aw;->G:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</poiid></HDR><DRR phnum=\""

    .line 1664
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v8, Lcom/loc/e;->d:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\" nettype=\""

    .line 1665
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\" inftype=\""

    .line 1666
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, "\">"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1719
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/loc/aw;->p()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1760
    invoke-direct/range {p0 .. p0}, Lcom/loc/aw;->n()V

    .line 1764
    :cond_1
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "<nb>%s</nb>"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v17, v21, v22

    move-object/from16 v0, v21

    invoke-static {v2, v8, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 1775
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<macs>"

    .line 1776
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1777
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "<![CDATA[%s]]>"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v18, v21, v22

    move-object/from16 v0, v21

    invoke-static {v2, v8, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</macs>"

    .line 1778
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<macsage>"

    .line 1779
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/loc/aw;->D:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</macsage>"

    .line 1780
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    const-string/jumbo v2, "<mmac>"

    .line 1782
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "<![CDATA[%s]]>"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v19, v21, v22

    move-object/from16 v0, v21

    invoke-static {v2, v8, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</mmac>"

    .line 1784
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, "</DRR></Cell_Req>"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/loc/aw;->a(Ljava/lang/StringBuilder;)V

    const/4 v2, 0x1

    .line 1790
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v21, "reversegeo"

    move-object/from16 v0, v21

    invoke-static {v8, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 1802
    :goto_8
    if-eqz v2, :cond_1d

    .line 1805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    const/4 v8, 0x0

    iput-short v8, v2, Lcom/loc/bt;->b:S

    .line 1807
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v8, "multi"

    invoke-static {v2, v8}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1824
    :cond_2
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    iput-object v4, v2, Lcom/loc/bt;->c:Ljava/lang/String;

    .line 1825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    iput-object v3, v2, Lcom/loc/bt;->d:Ljava/lang/String;

    .line 1826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    invoke-static {}, Lcom/loc/bw;->f()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/bt;->f:Ljava/lang/String;

    .line 1827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "android"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/loc/bw;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/bt;->g:Ljava/lang/String;

    .line 1828
    sget-object v2, Lcom/loc/e;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1831
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    sget-object v3, Lcom/loc/e;->k:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/bt;->h:Ljava/lang/String;

    .line 1832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    iput-object v9, v2, Lcom/loc/bt;->i:Ljava/lang/String;

    .line 1833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    iput-object v11, v2, Lcom/loc/bt;->j:Ljava/lang/String;

    .line 1834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/loc/aw;->B:Z

    if-nez v2, :cond_20

    const-string/jumbo v2, "0"

    :goto_c
    iput-object v2, v3, Lcom/loc/bt;->k:Ljava/lang/String;

    .line 1835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    iput-object v12, v2, Lcom/loc/bt;->l:Ljava/lang/String;

    .line 1836
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    iput-object v13, v2, Lcom/loc/bt;->m:Ljava/lang/String;

    .line 1837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    iput-object v14, v2, Lcom/loc/bt;->n:Ljava/lang/String;

    .line 1838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    iput-object v15, v2, Lcom/loc/bt;->o:Ljava/lang/String;

    .line 1839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    sget-object v3, Lcom/loc/e;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/bt;->p:Ljava/lang/String;

    .line 1840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    sget-object v3, Lcom/loc/e;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/bt;->q:Ljava/lang/String;

    .line 1841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/bt;->s:Ljava/lang/String;

    .line 1842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/aw;->F:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/bt;->t:Ljava/lang/String;

    .line 1843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    invoke-virtual/range {p0 .. p0}, Lcom/loc/aw;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/bt;->v:Ljava/lang/String;

    .line 1844
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    invoke-direct/range {p0 .. p0}, Lcom/loc/aw;->C()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/bt;->w:Ljava/lang/String;

    .line 1845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/loc/aw;->G:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/bt;->F:Ljava/lang/String;

    .line 1846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    sget-object v3, Lcom/loc/e;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/loc/bt;->u:Ljava/lang/String;

    .line 1847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    iput-object v6, v2, Lcom/loc/bt;->x:Ljava/lang/String;

    .line 1848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    iput-object v5, v2, Lcom/loc/bt;->y:Ljava/lang/String;

    .line 1849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/bt;->z:Ljava/lang/String;

    .line 1850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    iput-object v7, v2, Lcom/loc/bt;->A:Ljava/lang/String;

    .line 1851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/bt;->B:Ljava/lang/String;

    .line 1852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/bt;->D:Ljava/lang/String;

    .line 1853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/loc/aw;->D:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/bt;->E:Ljava/lang/String;

    .line 1854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/loc/bt;->C:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1858
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 1860
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 1862
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1864
    return-object v10

    :cond_3
    const-string/jumbo v3, "UC_nlp_20131029"

    const-string/jumbo v2, "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U"

    move-object v4, v3

    move-object v3, v2

    .line 1532
    goto/16 :goto_0

    :cond_4
    const-string/jumbo v2, "1"

    move-object v9, v2

    .line 1545
    goto/16 :goto_1

    .line 1549
    :cond_5
    sget-object v2, Lcom/loc/e;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "888888888888888"

    .line 1556
    sget-object v8, Lcom/loc/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1564
    :goto_d
    sget-object v2, Lcom/loc/e;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1567
    :goto_e
    sget-object v2, Lcom/loc/e;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "888888888888888"

    .line 1574
    sget-object v8, Lcom/loc/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1582
    :goto_f
    sget-object v2, Lcom/loc/e;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "888888888888888"

    .line 1583
    sput-object v2, Lcom/loc/e;->c:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    const-string/jumbo v2, "888888888888888"

    .line 1550
    sput-object v2, Lcom/loc/e;->b:Ljava/lang/String;

    .line 1552
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/q;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/e;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    .line 1555
    :catch_0
    move-exception v2

    goto :goto_d

    :cond_7
    const-string/jumbo v2, "888888888888888"

    .line 1557
    sput-object v2, Lcom/loc/e;->b:Ljava/lang/String;

    .line 1559
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/q;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/e;->b:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_d

    .line 1562
    :catch_1
    move-exception v2

    goto :goto_d

    :cond_8
    const-string/jumbo v2, "888888888888888"

    .line 1565
    sput-object v2, Lcom/loc/e;->b:Ljava/lang/String;

    goto :goto_e

    :cond_9
    const-string/jumbo v2, "888888888888888"

    .line 1568
    sput-object v2, Lcom/loc/e;->c:Ljava/lang/String;

    .line 1570
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/e;->c:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_f

    .line 1573
    :catch_2
    move-exception v2

    goto :goto_f

    :cond_a
    const-string/jumbo v2, "888888888888888"

    .line 1575
    sput-object v2, Lcom/loc/e;->c:Ljava/lang/String;

    .line 1577
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/e;->c:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_f

    .line 1580
    :catch_3
    move-exception v2

    goto :goto_f

    .line 1604
    :cond_b
    invoke-static/range {v21 .. v21}, Lcom/loc/bw;->b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v5

    .line 1605
    invoke-direct/range {p0 .. p0}, Lcom/loc/aw;->p()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    const-string/jumbo v2, "1"

    .line 1610
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/loc/aw;->p()Z

    move-result v6

    if-eqz v6, :cond_e

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_4

    .line 1605
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/aw;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v2, "2"

    goto :goto_10

    .line 1611
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/loc/aw;->n()V

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_4

    :cond_f
    const-string/jumbo v2, "\" gmock=\""

    .line 1648
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/loc/aw;->B:Z

    if-nez v2, :cond_10

    const-string/jumbo v2, "0"

    :goto_11
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_10
    const-string/jumbo v2, "1"

    goto :goto_11

    .line 1668
    :cond_11
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1669
    packed-switch v20, :pswitch_data_0

    .line 1713
    invoke-direct/range {p0 .. p0}, Lcom/loc/aw;->K()V

    move-object v2, v7

    :goto_12
    const/4 v7, 0x0

    .line 1716
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object v7, v2

    goto/16 :goto_6

    .line 1671
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/loc/aw;->K()V

    const/4 v2, 0x0

    .line 1672
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/be;

    const/4 v7, 0x0

    .line 1673
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<mcc>"

    .line 1674
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/loc/be;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</mcc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<mnc>"

    .line 1675
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/loc/be;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</mnc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<lac>"

    .line 1676
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/be;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</lac>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<cellid>"

    .line 1677
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/be;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "</cellid>"

    .line 1678
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<signal>"

    .line 1679
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v2, v2, Lcom/loc/be;->j:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</signal>"

    .line 1680
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x1

    move v7, v2

    .line 1682
    :goto_13
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v7, v2, :cond_12

    move-object v2, v8

    .line 1692
    goto/16 :goto_12

    .line 1683
    :cond_12
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/be;

    .line 1684
    iget v0, v2, Lcom/loc/be;->c:I

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1685
    iget v0, v2, Lcom/loc/be;->d:I

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1686
    iget v2, v2, Lcom/loc/be;->j:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1687
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v7, v2, :cond_13

    .line 1682
    :goto_14
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_13

    :cond_13
    const-string/jumbo v2, "*"

    .line 1688
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_1
    const/4 v2, 0x0

    .line 1694
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/loc/be;

    const/4 v7, 0x0

    .line 1695
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<mcc>"

    .line 1696
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/loc/be;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</mcc>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<sid>"

    .line 1697
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/be;->g:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</sid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<nid>"

    .line 1698
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/be;->h:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</nid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<bid>"

    .line 1699
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/be;->i:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</bid>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    iget v7, v2, Lcom/loc/be;->f:I

    if-gtz v7, :cond_15

    .line 1706
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/loc/aw;->K()V

    :goto_15
    const-string/jumbo v7, "<signal>"

    .line 1708
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v2, v2, Lcom/loc/be;->j:I

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "</signal>"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_12

    .line 1700
    :cond_15
    iget v7, v2, Lcom/loc/be;->e:I

    if-lez v7, :cond_14

    .line 1701
    iget v7, v2, Lcom/loc/be;->f:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/loc/aw;->Z:I

    .line 1702
    iget v7, v2, Lcom/loc/be;->e:I

    move-object/from16 v0, p0

    iput v7, v0, Lcom/loc/aw;->aa:I

    const-string/jumbo v7, "<lon>"

    .line 1703
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/be;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</lon>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "<lat>"

    .line 1704
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/loc/be;->e:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</lat>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 1720
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/loc/aw;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1750
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/loc/aw;->q:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/4 v2, 0x0

    .line 1752
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v8

    const/16 v22, 0xf

    move/from16 v0, v22

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v22

    move v8, v2

    .line 1753
    :goto_17
    move/from16 v0, v22

    if-ge v8, v0, :cond_1

    .line 1754
    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 1755
    iget-object v0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    iget v0, v2, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1757
    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v23, "*"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_17

    .line 1721
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/16 v8, -0x80

    .line 1723
    if-lt v2, v8, :cond_18

    const/16 v8, 0x7f

    .line 1725
    if-gt v2, v8, :cond_19

    .line 1728
    :goto_18
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const/16 v8, 0x20

    .line 1735
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "UTF-8"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    move-object/from16 v0, v21

    array-length v8, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :goto_19
    const/16 v21, 0x20

    .line 1741
    move/from16 v0, v21

    if-ge v8, v0, :cond_1a

    :goto_1a
    const-string/jumbo v8, "*"

    const-string/jumbo v21, "."

    .line 1747
    move-object/from16 v0, v21

    invoke-virtual {v2, v8, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_16

    :cond_18
    const/4 v2, 0x0

    .line 1724
    goto :goto_18

    :cond_19
    const/4 v2, 0x0

    .line 1726
    goto :goto_18

    :cond_1a
    const-string/jumbo v2, "unkwn"

    goto :goto_1a

    .line 1770
    :cond_1b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<macs>"

    .line 1771
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v8, "<![CDATA[%s]]>"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v19, v21, v22

    move-object/from16 v0, v21

    invoke-static {v2, v8, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "</macs>"

    .line 1773
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1792
    :cond_1c
    :try_start_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v21, "reversegeo"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result v2

    goto/16 :goto_8

    .line 1803
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    const/4 v8, 0x2

    iput-short v8, v2, Lcom/loc/bt;->b:S

    goto/16 :goto_9

    .line 1809
    :cond_1e
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v8, "multi"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->H:Lcom/loc/bt;

    const/4 v8, 0x1

    iput-short v8, v2, Lcom/loc/bt;->b:S
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_a

    .line 1822
    :catch_4
    move-exception v2

    goto/16 :goto_a

    .line 1829
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aw;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/bw;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/e;->k:Ljava/lang/String;

    goto/16 :goto_b

    :cond_20
    const-string/jumbo v2, "1"

    goto/16 :goto_c

    .line 1800
    :catch_5
    move-exception v8

    goto/16 :goto_8

    .line 1740
    :catch_6
    move-exception v21

    goto/16 :goto_19

    .line 1602
    :catch_7
    move-exception v8

    goto/16 :goto_3

    .line 1669
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/loc/aw;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/loc/aw;->r:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2806
    iget-object v1, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 2809
    if-eqz p1, :cond_2

    const-string/jumbo v1, "smac"

    .line 2817
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2833
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2837
    :cond_0
    :goto_1
    return-void

    .line 2807
    :cond_1
    return-void

    .line 2813
    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    .line 2819
    :try_start_0
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    .line 2821
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 2820
    invoke-static {v2}, Lcom/loc/r;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2831
    :catch_0
    move-exception v2

    .line 2829
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "00:00:00:00:00:00"

    .line 2833
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2834
    iput-object v0, p0, Lcom/loc/aw;->F:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic a(Lcom/loc/aw;I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/loc/aw;->b(I)V

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x1

    .line 2451
    if-eqz p1, :cond_0

    const/16 v1, 0x1a

    .line 2454
    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, " phnum=\"\""

    .line 2455
    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string/jumbo v3, " nettype=\"\""

    .line 2456
    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " nettype=\"UNKWN\""

    .line 2457
    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, " inftype=\"\""

    .line 2458
    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "<macs><![CDATA[]]></macs>"

    .line 2459
    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "<nb></nb>"

    .line 2460
    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "<mmac><![CDATA[]]></mmac>"

    .line 2461
    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, " gtype=\"0\""

    .line 2462
    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, " gmock=\"0\""

    .line 2463
    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, " glong=\"0.0\""

    .line 2464
    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, " glat=\"0.0\""

    .line 2465
    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, " precision=\"0.0\""

    .line 2466
    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, " glong=\"0\""

    .line 2467
    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, " glat=\"0\""

    .line 2468
    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, " precision=\"0\""

    .line 2469
    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "<smac>null</smac>"

    .line 2470
    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "<smac>00:00:00:00:00:00</smac>"

    .line 2471
    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "<imei>000000000000000</imei>"

    .line 2472
    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "<imsi>000000000000000</imsi>"

    .line 2473
    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "<mcc>000</mcc>"

    .line 2474
    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "<mcc>0</mcc>"

    .line 2475
    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v3, "<lac>0</lac>"

    .line 2476
    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string/jumbo v3, "<cellid>0</cellid>"

    .line 2477
    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string/jumbo v3, "<key></key>"

    .line 2478
    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string/jumbo v3, "<poiid></poiid>"

    .line 2479
    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string/jumbo v3, "<poiid>null</poiid>"

    .line 2480
    aput-object v3, v1, v2

    .line 2481
    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_1

    :goto_1
    const-string/jumbo v0, "*<"

    .line 2488
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 2492
    return-void

    .line 2452
    :cond_0
    return-void

    .line 2481
    :cond_1
    aget-object v3, v1, v0

    .line 2482
    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 2481
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2483
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 2484
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "*<"

    .line 2489
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2490
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private a(I)Z
    .locals 3

    .prologue
    const/16 v1, 0x14

    const/4 v0, 0x1

    const/16 v2, 0x14

    .line 2040
    :try_start_0
    invoke-static {p1, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2050
    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0

    .line 2049
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private a(J)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1223
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v2

    .line 1224
    sub-long/2addr v2, p1

    const-wide/16 v4, 0x320

    .line 1229
    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    .line 1231
    iget-object v4, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v4}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    const-wide/16 v4, 0x2710

    .line 1234
    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    move v2, v1

    :goto_2
    if-nez v2, :cond_4

    .line 1245
    :cond_0
    :goto_3
    return v0

    :cond_1
    move v2, v0

    .line 1229
    goto :goto_0

    .line 1232
    :cond_2
    invoke-static {}, Lcom/loc/bw;->a()J

    move-result-wide v2

    iget-object v4, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v4}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k()J

    move-result-wide v4

    sub-long/2addr v2, v4

    goto :goto_1

    :cond_3
    move v2, v0

    .line 1234
    goto :goto_2

    :cond_4
    move v0, v1

    .line 1242
    goto :goto_3
.end method

.method private a(Landroid/net/wifi/WifiInfo;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1422
    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 1433
    :cond_1
    :goto_0
    return v0

    .line 1422
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1424
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1426
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1428
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1430
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 1431
    goto :goto_0

    :cond_3
    move v0, v1

    .line 1425
    goto :goto_0

    :cond_4
    move v0, v1

    .line 1427
    goto :goto_0

    :cond_5
    move v0, v1

    .line 1429
    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/aw;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/loc/aw;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(I)V
    .locals 6

    .prologue
    const v1, 0x282fffff

    const v0, 0x42fffff

    .line 2968
    invoke-direct {p0}, Lcom/loc/aw;->q()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2975
    :try_start_0
    invoke-direct {p0}, Lcom/loc/aw;->z()V

    .line 2977
    packed-switch p1, :pswitch_data_0

    .line 2997
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/loc/aw;->L:Lcom/loc/cb;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v3}, Lcom/loc/aw;->a(III)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/loc/cb;->a(Lcom/loc/ch;Ljava/lang/String;)V

    .line 2998
    iget-object v1, p0, Lcom/loc/aw;->L:Lcom/loc/cb;

    invoke-virtual {v1}, Lcom/loc/cb;->e()Lcom/loc/ch;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/aw;->M:Lcom/loc/ch;

    .line 2999
    iget-object v1, p0, Lcom/loc/aw;->M:Lcom/loc/ch;

    if-nez v1, :cond_4

    .line 3043
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/loc/aw;->t()V

    .line 3049
    invoke-direct {p0}, Lcom/loc/aw;->q()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3057
    :cond_1
    iget v0, p0, Lcom/loc/aw;->K:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_9

    .line 3071
    :goto_2
    return-void

    .line 2969
    :cond_2
    return-void

    :pswitch_1
    move v0, v1

    .line 2983
    goto :goto_0

    .line 2985
    :pswitch_2
    invoke-direct {p0}, Lcom/loc/aw;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7c2fffff

    .line 2991
    goto :goto_0

    :cond_3
    move v0, v1

    .line 2989
    goto :goto_0

    .line 3000
    :cond_4
    iget-object v1, p0, Lcom/loc/aw;->M:Lcom/loc/ch;

    invoke-virtual {v1}, Lcom/loc/ch;->a()[B

    move-result-object v1

    .line 3004
    iget-object v2, p0, Lcom/loc/aw;->b:Lcom/loc/bp;

    iget-object v3, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    const-string/jumbo v4, "http://cgicol.amap.com/collection/writedata?ver=v1.0_ali&"

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/loc/bp;->a([BLandroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 3013
    invoke-direct {p0}, Lcom/loc/aw;->q()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3014
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3035
    :cond_5
    iget v1, p0, Lcom/loc/aw;->K:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/loc/aw;->K:I

    .line 3036
    iget-object v1, p0, Lcom/loc/aw;->L:Lcom/loc/cb;

    iget-object v2, p0, Lcom/loc/aw;->M:Lcom/loc/ch;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4}, Lcom/loc/aw;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/loc/cb;->a(Lcom/loc/ch;Ljava/lang/String;)V

    goto :goto_1

    .line 3070
    :catch_0
    move-exception v0

    goto :goto_2

    :cond_6
    const-string/jumbo v3, "true"

    .line 3014
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3015
    iget-object v2, p0, Lcom/loc/aw;->L:Lcom/loc/cb;

    iget-object v3, p0, Lcom/loc/aw;->M:Lcom/loc/ch;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {p0, v4, v0, v5}, Lcom/loc/aw;->a(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/loc/cb;->a(Lcom/loc/ch;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const-string/jumbo v0, "yyyyMMdd"

    .line 3016
    invoke-static {v2, v3, v0}, Lcom/loc/bw;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3017
    iget-object v2, p0, Lcom/loc/aw;->N:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_7

    .line 3021
    :try_start_1
    iget-object v2, p0, Lcom/loc/aw;->N:[I

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3030
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/loc/aw;->N:[I

    const/4 v2, 0x1

    array-length v1, v1

    aput v1, v0, v2

    .line 3032
    :goto_4
    iget-object v0, p0, Lcom/loc/aw;->N:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/loc/aw;->N:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 3033
    invoke-direct {p0}, Lcom/loc/aw;->F()V

    goto/16 :goto_1

    .line 3018
    :cond_7
    iget-object v0, p0, Lcom/loc/aw;->N:[I

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v0, v3

    array-length v1, v1

    add-int/2addr v1, v3

    aput v1, v0, v2

    goto :goto_4

    .line 3029
    :catch_1
    move-exception v0

    .line 3023
    iget-object v0, p0, Lcom/loc/aw;->N:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    .line 3024
    iget-object v0, p0, Lcom/loc/aw;->N:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v0, v2

    .line 3025
    iget-object v0, p0, Lcom/loc/aw;->N:[I

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v0, v2

    goto :goto_3

    .line 3049
    :cond_8
    iget-object v0, p0, Lcom/loc/aw;->L:Lcom/loc/cb;

    invoke-virtual {v0}, Lcom/loc/cb;->g()I

    move-result v0

    if-nez v0, :cond_1

    .line 3056
    invoke-direct {p0}, Lcom/loc/aw;->y()V

    goto/16 :goto_2

    .line 3064
    :cond_9
    invoke-direct {p0}, Lcom/loc/aw;->y()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 2977
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Landroid/content/SharedPreferences;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3324
    iget-object v1, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 3327
    iget-object v1, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3328
    if-eqz v1, :cond_2

    const-string/jumbo v2, "coluphist"

    .line 3334
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3355
    :cond_0
    :goto_0
    return-void

    .line 3325
    :cond_1
    return-void

    .line 3332
    :cond_2
    return-void

    :cond_3
    :try_start_0
    const-string/jumbo v2, "coluphist"

    const/4 v3, 0x0

    .line 3336
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    .line 3338
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/loc/r;->a([B)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    .line 3339
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v3, 0x3

    .line 3340
    if-ge v0, v3, :cond_0

    .line 3341
    iget-object v3, p0, Lcom/loc/aw;->N:[I

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3340
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3353
    :catch_0
    move-exception v0

    .line 3352
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "coluphist"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private c(I)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x7d0

    .line 3083
    invoke-direct {p0}, Lcom/loc/aw;->t()V

    .line 3092
    iget-object v0, p0, Lcom/loc/aw;->J:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 3117
    :goto_0
    iget-object v0, p0, Lcom/loc/aw;->I:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 3121
    :goto_1
    return-void

    .line 3093
    :cond_0
    new-instance v0, Lcom/loc/aw$1;

    invoke-direct {v0, p0, p1}, Lcom/loc/aw$1;-><init>(Lcom/loc/aw;I)V

    iput-object v0, p0, Lcom/loc/aw;->J:Ljava/util/TimerTask;

    goto :goto_0

    .line 3118
    :cond_1
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "T-U"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/loc/aw;->I:Ljava/util/Timer;

    .line 3119
    iget-object v0, p0, Lcom/loc/aw;->I:Ljava/util/Timer;

    iget-object v1, p0, Lcom/loc/aw;->J:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1
.end method

.method private c(Landroid/content/SharedPreferences;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3976
    if-eqz p1, :cond_1

    const-string/jumbo v1, "activityoffdl"

    .line 3985
    invoke-interface {p1, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4005
    :cond_0
    :goto_0
    return-void

    .line 3980
    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    .line 3987
    :try_start_0
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3988
    invoke-static {v2}, Lcom/loc/bw;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    .line 3989
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_1
    const/4 v3, 0x2

    .line 3990
    if-ge v0, v3, :cond_0

    .line 3991
    sget-object v3, Lcom/loc/bd;->a:[I

    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3990
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4003
    :catch_0
    move-exception v0

    .line 4002
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/loc/aw;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/loc/aw;->n()V

    return-void
.end method

.method static synthetic d(Lcom/loc/aw;)Lcom/loc/cb;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/loc/aw;->L:Lcom/loc/cb;

    return-object v0
.end method

.method static synthetic e(Lcom/loc/aw;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/loc/aw;->u()V

    return-void
.end method

.method static synthetic f(Lcom/loc/aw;)Z
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/loc/aw;->A()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/loc/aw;)J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/loc/aw;->z:J

    return-wide v0
.end method

.method static synthetic h(Lcom/loc/aw;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/loc/aw;->y()V

    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 1180
    :try_start_0
    new-instance v1, Lcom/loc/bg;

    iget-object v2, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    iget-object v0, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-static {v0, v3}, Lcom/loc/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    invoke-direct {v1, v2, v0, v3}, Lcom/loc/bg;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    const-string/jumbo v0, "connectivity"

    .line 1184
    iget-object v1, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/loc/bw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/loc/aw;->n:Landroid/net/ConnectivityManager;

    .line 1186
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 1187
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    .line 1188
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    .line 1189
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    .line 1190
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    .line 1191
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.location.GPS_FIX_CHANGE"

    .line 1192
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 1193
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1194
    iget-object v1, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/aw;->t:Lcom/loc/aw$b;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1198
    invoke-direct {p0}, Lcom/loc/aw;->o()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1202
    :goto_0
    return-void

    .line 1201
    :catch_0
    move-exception v0

    .line 1200
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic i(Lcom/loc/aw;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/loc/aw;->J()V

    return-void
.end method

.method static synthetic j(Lcom/loc/aw;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 1211
    new-instance v0, Lcom/loc/bf;

    iget-object v1, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2}, Lcom/loc/bf;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    .line 1212
    iget-object v0, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    invoke-virtual {v0}, Lcom/loc/bf;->h()V

    .line 1213
    return-void
.end method

.method static synthetic k(Lcom/loc/aw;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/loc/aw;->Y:Ljava/lang/String;

    return-object v0
.end method

.method private k()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x2710

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1868
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v4

    .line 1870
    invoke-direct {p0}, Lcom/loc/aw;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1921
    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x14

    .line 1874
    iget-object v6, p0, Lcom/loc/aw;->r:Ljava/util/ArrayList;

    .line 1876
    iget-wide v8, p0, Lcom/loc/aw;->y:J

    sub-long v8, v4, v8

    cmp-long v3, v8, v10

    if-gez v3, :cond_4

    move v3, v1

    :goto_1
    if-nez v3, :cond_2

    .line 1877
    iget-object v3, p0, Lcom/loc/aw;->h:Ljava/lang/Object;

    monitor-enter v3

    .line 1878
    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1879
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1881
    :cond_2
    invoke-direct {p0}, Lcom/loc/aw;->o()V

    .line 1883
    iget-wide v8, p0, Lcom/loc/aw;->y:J

    sub-long/2addr v4, v8

    cmp-long v3, v4, v10

    if-gez v3, :cond_5

    :goto_2
    if-nez v1, :cond_3

    .line 1884
    :goto_3
    if-gtz v0, :cond_6

    .line 1900
    :cond_3
    iget-object v1, p0, Lcom/loc/aw;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1901
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1904
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    if-eqz v0, :cond_0

    .line 1905
    iget-object v0, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    invoke-virtual {v0}, Lcom/loc/bg;->a()Ljava/util/List;

    move-result-object v0

    .line 1906
    if-eqz v0, :cond_0

    .line 1907
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    move v3, v2

    .line 1876
    goto :goto_1

    .line 1879
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    move v1, v2

    .line 1883
    goto :goto_2

    .line 1885
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1887
    const-wide/16 v2, 0x96

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1891
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1890
    :catch_0
    move-exception v1

    goto :goto_4

    .line 1901
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method static synthetic l(Lcom/loc/aw;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    return-object v0
.end method

.method private l()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2098
    iget-object v2, p0, Lcom/loc/aw;->G:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2108
    invoke-direct {p0}, Lcom/loc/aw;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2110
    iget-wide v2, p0, Lcom/loc/aw;->C:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 2126
    :cond_0
    :goto_0
    return v0

    .line 2105
    :cond_1
    return v0

    :cond_2
    move v0, v1

    .line 2109
    goto :goto_0

    .line 2112
    :cond_3
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/aw;->C:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    move v2, v0

    :goto_1
    if-nez v2, :cond_5

    move v0, v1

    .line 2116
    goto :goto_0

    :cond_4
    move v2, v1

    .line 2112
    goto :goto_1

    .line 2117
    :cond_5
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/aw;->D:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x5dc

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    move v2, v0

    :goto_2
    if-nez v2, :cond_0

    move v0, v1

    .line 2121
    goto :goto_0

    :cond_6
    move v2, v1

    .line 2117
    goto :goto_2
.end method

.method static synthetic m(Lcom/loc/aw;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/loc/aw;->L()V

    return-void
.end method

.method private m()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2508
    iget-wide v2, p0, Lcom/loc/aw;->x:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2509
    return v0

    .line 2511
    :cond_0
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/aw;->x:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private n()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 2525
    iput-wide v0, p0, Lcom/loc/aw;->D:J

    .line 2526
    iget-object v0, p0, Lcom/loc/aw;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 2527
    iput-object v0, p0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    .line 2529
    iget-object v1, p0, Lcom/loc/aw;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 2530
    :try_start_0
    iget-object v0, p0, Lcom/loc/aw;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2531
    iget-object v0, p0, Lcom/loc/aw;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2532
    monitor-exit v1

    .line 2533
    return-void

    .line 2532
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private o()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2543
    invoke-direct {p0}, Lcom/loc/aw;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2547
    invoke-static {}, Lcom/loc/bw;->c()I

    move-result v0

    const/16 v2, 0x12

    if-lt v0, v2, :cond_4

    :cond_0
    move v0, v1

    .line 2559
    :goto_0
    if-nez v0, :cond_6

    .line 2575
    :cond_1
    :goto_1
    if-eqz v1, :cond_7

    .line 2586
    :cond_2
    :goto_2
    return-void

    .line 2544
    :cond_3
    return-void

    .line 2547
    :cond_4
    invoke-static {}, Lcom/loc/bw;->c()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    .line 2548
    iget-object v0, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v2, "wifiactivescan"

    invoke-static {v0, v2}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    :try_start_0
    const-string/jumbo v0, "1"

    .line 2550
    iget-object v2, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v3, "wifiactivescan"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 2555
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 2561
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    invoke-virtual {v0}, Lcom/loc/bg;->e()Z

    move-result v1

    .line 2562
    if-eqz v1, :cond_1

    .line 2566
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/aw;->C:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2572
    :catch_1
    move-exception v0

    goto :goto_1

    .line 2575
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    invoke-virtual {v0}, Lcom/loc/bg;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2579
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/aw;->C:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 2585
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private p()Z
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    if-nez v0, :cond_0

    .line 2654
    const/4 v0, 0x0

    return v0

    .line 2653
    :cond_0
    iget-object v0, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    invoke-virtual {v0}, Lcom/loc/bg;->f()Z

    move-result v0

    return v0
.end method

.method private q()Z
    .locals 1

    .prologue
    .line 2664
    iget-object v0, p0, Lcom/loc/aw;->L:Lcom/loc/cb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private r()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2676
    :try_start_0
    invoke-direct {p0}, Lcom/loc/aw;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/aw;->L:Lcom/loc/cb;

    invoke-virtual {v1}, Lcom/loc/cb;->d()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2685
    :cond_0
    :goto_0
    return v0

    .line 2684
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private s()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2702
    iget-object v2, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v3, "coll"

    invoke-static {v2, v3}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2713
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 2720
    invoke-direct {p0}, Lcom/loc/aw;->r()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2733
    :try_start_0
    iget-object v0, p0, Lcom/loc/aw;->L:Lcom/loc/cb;

    sget v1, Lcom/loc/e;->m:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/loc/cb;->b(I)V

    .line 2734
    invoke-direct {p0}, Lcom/loc/aw;->z()V

    .line 2735
    invoke-direct {p0}, Lcom/loc/aw;->t()V

    .line 2739
    iget-object v0, p0, Lcom/loc/aw;->L:Lcom/loc/cb;

    invoke-virtual {v0}, Lcom/loc/cb;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2745
    :goto_1
    return-void

    .line 2704
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v3, "coll"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2705
    goto :goto_0

    .line 2714
    :cond_2
    invoke-direct {p0}, Lcom/loc/aw;->u()V

    .line 2718
    return-void

    .line 2724
    :cond_3
    return-void

    .line 2744
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2711
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private t()V
    .locals 1

    .prologue
    .line 2754
    invoke-direct {p0}, Lcom/loc/aw;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2757
    invoke-direct {p0}, Lcom/loc/aw;->q()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2761
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/loc/aw;->q()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    .line 2771
    :cond_1
    :goto_0
    return-void

    .line 2755
    :cond_2
    return-void

    .line 2757
    :cond_3
    iget-object v0, p0, Lcom/loc/aw;->L:Lcom/loc/cb;

    invoke-virtual {v0}, Lcom/loc/cb;->g()I

    move-result v0

    if-lez v0, :cond_0

    .line 2758
    return-void

    .line 2761
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/loc/aw;->L:Lcom/loc/cb;

    invoke-virtual {v0}, Lcom/loc/cb;->f()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2770
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private u()V
    .locals 1

    .prologue
    .line 2780
    invoke-direct {p0}, Lcom/loc/aw;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    .line 2789
    sput v0, Lcom/loc/e;->m:I

    .line 2791
    :try_start_0
    iget-object v0, p0, Lcom/loc/aw;->L:Lcom/loc/cb;

    invoke-virtual {v0}, Lcom/loc/cb;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2797
    :goto_0
    return-void

    .line 2784
    :cond_0
    return-void

    .line 2796
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private v()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 2846
    iget-object v1, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 2848
    iget-object v1, p0, Lcom/loc/aw;->F:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2852
    iget-object v1, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2855
    :try_start_0
    iget-object v2, p0, Lcom/loc/aw;->F:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    .line 2856
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 2855
    invoke-static {v2}, Lcom/loc/r;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2862
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2871
    :goto_1
    return-void

    .line 2847
    :cond_0
    return-void

    .line 2849
    :cond_1
    return-void

    :cond_2
    const-string/jumbo v2, "smac"

    .line 2864
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 2861
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private w()V
    .locals 1

    .prologue
    const-string/jumbo v0, ""

    .line 2880
    sput-object v0, Lcom/loc/e;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 2881
    sput-object v0, Lcom/loc/e;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 2882
    sput-object v0, Lcom/loc/e;->h:Ljava/lang/String;

    .line 2883
    return-void
.end method

.method private x()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2898
    iget-object v1, p0, Lcom/loc/aw;->r:Ljava/util/ArrayList;

    .line 2904
    :try_start_0
    iget-object v2, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v3, "wait1stwifi"

    invoke-static {v2, v3}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2907
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2915
    :cond_0
    return-void

    .line 2905
    :cond_1
    iget-object v0, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v2, "wait1stwifi"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "1"

    .line 2907
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 2921
    :goto_1
    iget-object v2, p0, Lcom/loc/aw;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 2922
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2923
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2924
    invoke-direct {p0}, Lcom/loc/aw;->o()V

    const/16 v0, 0x14

    .line 2928
    :goto_2
    if-gtz v0, :cond_5

    .line 2941
    :cond_3
    iget-object v2, p0, Lcom/loc/aw;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 2942
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2944
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2955
    :cond_4
    :goto_3
    return-void

    .line 2923
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2929
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2931
    const-wide/16 v2, 0x96

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2935
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 2934
    :catch_0
    move-exception v2

    goto :goto_4

    .line 2942
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 2944
    :cond_6
    iget-object v0, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    if-eqz v0, :cond_4

    .line 2945
    iget-object v0, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    invoke-virtual {v0}, Lcom/loc/bg;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 2919
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private y()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3130
    iget-object v0, p0, Lcom/loc/aw;->J:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    .line 3134
    :goto_0
    iget-object v0, p0, Lcom/loc/aw;->I:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 3139
    :goto_1
    return-void

    .line 3131
    :cond_0
    iget-object v0, p0, Lcom/loc/aw;->J:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 3132
    iput-object v1, p0, Lcom/loc/aw;->J:Ljava/util/TimerTask;

    goto :goto_0

    .line 3135
    :cond_1
    iget-object v0, p0, Lcom/loc/aw;->I:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3136
    iget-object v0, p0, Lcom/loc/aw;->I:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 3137
    iput-object v1, p0, Lcom/loc/aw;->I:Ljava/util/Timer;

    goto :goto_1
.end method

.method private z()V
    .locals 2

    .prologue
    .line 3148
    invoke-direct {p0}, Lcom/loc/aw;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3152
    :try_start_0
    iget-object v0, p0, Lcom/loc/aw;->L:Lcom/loc/cb;

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Lcom/loc/cb;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3158
    :goto_0
    return-void

    .line 3149
    :cond_0
    return-void

    .line 3157
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public varargs a(Lcom/autonavi/aps/amapapi/model/AmapLoc;[Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1031
    if-nez p2, :cond_1

    .line 1032
    :cond_0
    invoke-static {}, Lcom/loc/ba;->a()Lcom/loc/ba;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/ba;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0

    .line 1031
    :cond_1
    array-length v0, p2

    if-eqz v0, :cond_0

    .line 1033
    aget-object v0, p2, v2

    const-string/jumbo v1, "shake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1035
    aget-object v0, p2, v2

    const-string/jumbo v1, "fusion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1038
    return-object p1

    .line 1034
    :cond_2
    invoke-static {}, Lcom/loc/ba;->a()Lcom/loc/ba;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/ba;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0

    .line 1036
    :cond_3
    invoke-static {}, Lcom/loc/ba;->a()Lcom/loc/ba;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/ba;->b(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    monitor-enter p0

    .line 373
    :try_start_0
    sget-object v0, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 376
    :goto_0
    invoke-direct {p0}, Lcom/loc/aw;->E()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 385
    iget-object v0, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v1, "reversegeo"

    invoke-static {v0, v1}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v1, v5

    .line 388
    :goto_1
    iget-object v0, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v2, "isOffset"

    invoke-static {v0, v2}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v5

    .line 392
    :goto_2
    iget-boolean v2, p0, Lcom/loc/aw;->ac:Z

    if-eq v0, v2, :cond_9

    .line 393
    :cond_0
    invoke-direct {p0}, Lcom/loc/aw;->N()V

    .line 395
    :goto_3
    iput-boolean v0, p0, Lcom/loc/aw;->ac:Z

    .line 396
    iput-boolean v1, p0, Lcom/loc/aw;->ab:Z

    .line 398
    iget v0, p0, Lcom/loc/aw;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/aw;->E:I

    .line 402
    iget-object v0, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bw;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/aw;->A:Z

    .line 407
    if-nez p1, :cond_a

    .line 410
    iget v0, p0, Lcom/loc/aw;->E:I

    if-eq v0, v6, :cond_b

    .line 478
    :goto_4
    iget v0, p0, Lcom/loc/aw;->E:I

    if-eq v0, v5, :cond_d

    .line 528
    :cond_1
    :goto_5
    iget-wide v0, p0, Lcom/loc/aw;->x:J

    invoke-direct {p0, v0, v1}, Lcom/loc/aw;->a(J)Z

    move-result v0

    if-nez v0, :cond_11

    .line 544
    :cond_2
    iget-object v0, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    invoke-virtual {v0}, Lcom/loc/bf;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    if-eqz p1, :cond_12

    .line 564
    :goto_6
    :try_start_1
    invoke-virtual {p0}, Lcom/loc/aw;->d()V

    .line 572
    invoke-virtual {p0}, Lcom/loc/aw;->e()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    :goto_7
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/loc/aw;->b(Z)Ljava/lang/String;

    move-result-object v7

    .line 590
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 600
    iget-boolean v0, p0, Lcom/loc/aw;->f:Z

    if-eqz v0, :cond_13

    :goto_8
    const/4 v0, 0x4

    .line 607
    :goto_9
    if-gtz v0, :cond_14

    .line 618
    :cond_3
    iget v0, p0, Lcom/loc/aw;->e:I

    if-eqz v0, :cond_15

    .line 629
    :cond_4
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    .line 631
    iget v1, p0, Lcom/loc/aw;->j:I

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    .line 632
    sget-object v1, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 633
    return-object v0

    .line 374
    :cond_5
    :try_start_3
    sget-object v0, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v2, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 377
    :cond_6
    :try_start_4
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const/4 v1, 0x1

    .line 378
    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(I)V

    .line 379
    sget-object v1, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 380
    return-object v0

    .line 386
    :cond_7
    :try_start_5
    iget-object v0, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v1, "reversegeo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    move v1, v0

    goto/16 :goto_1

    .line 389
    :cond_8
    iget-object v0, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v2, "isOffset"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_2

    .line 392
    :cond_9
    iget-boolean v2, p0, Lcom/loc/aw;->ab:Z

    if-ne v1, v2, :cond_0

    goto/16 :goto_3

    .line 408
    :cond_a
    invoke-direct {p0}, Lcom/loc/aw;->G()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 419
    :cond_b
    :try_start_6
    invoke-direct {p0}, Lcom/loc/aw;->t()V

    .line 431
    invoke-direct {p0}, Lcom/loc/aw;->D()V

    .line 436
    iget-object v0, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 471
    :goto_a
    invoke-direct {p0}, Lcom/loc/aw;->I()V

    goto/16 :goto_4

    .line 438
    :cond_c
    iget-object v0, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 443
    invoke-direct {p0, v0}, Lcom/loc/aw;->b(Landroid/content/SharedPreferences;)V

    .line 453
    invoke-direct {p0, v0}, Lcom/loc/aw;->c(Landroid/content/SharedPreferences;)V

    .line 461
    invoke-direct {p0, v0}, Lcom/loc/aw;->a(Landroid/content/SharedPreferences;)V

    goto :goto_a

    .line 478
    :cond_d
    invoke-direct {p0}, Lcom/loc/aw;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/loc/aw;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 507
    :goto_b
    invoke-direct {p0}, Lcom/loc/aw;->x()V

    goto/16 :goto_5

    .line 483
    :cond_e
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/aw;->D:J

    .line 487
    iget-object v0, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    invoke-virtual {v0}, Lcom/loc/bg;->a()Ljava/util/List;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/loc/aw;->h:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 494
    :try_start_7
    iget-object v2, p0, Lcom/loc/aw;->r:Ljava/util/ArrayList;

    if-nez v2, :cond_10

    .line 496
    :cond_f
    :goto_c
    monitor-exit v1

    goto :goto_b

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 494
    :cond_10
    if-eqz v0, :cond_f

    .line 495
    :try_start_9
    iget-object v2, p0, Lcom/loc/aw;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_c

    .line 529
    :cond_11
    :try_start_a
    iget-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 537
    iget-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    .line 538
    iget-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object v0

    .line 554
    :cond_12
    :try_start_b
    invoke-direct {p0}, Lcom/loc/aw;->k()V

    .line 555
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/aw;->y:J
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_6

    .line 581
    :catch_0
    move-exception v0

    goto/16 :goto_7

    .line 604
    :cond_13
    :try_start_c
    invoke-virtual {p0}, Lcom/loc/aw;->g()V

    goto/16 :goto_8

    .line 608
    :cond_14
    iget v1, p0, Lcom/loc/aw;->e:I

    if-eqz v1, :cond_3

    const-wide/16 v2, 0x1f4

    .line 614
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 615
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_9

    .line 622
    :cond_15
    iget-object v0, p0, Lcom/loc/aw;->d:Lcom/loc/ax;

    invoke-virtual {v0}, Lcom/loc/ax;->d()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 623
    iget-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_4

    .line 624
    iget-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_16
    :try_start_d
    const-string/jumbo v0, ""

    .line 636
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/loc/aw;->c(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 639
    iget-boolean v0, p0, Lcom/loc/aw;->A:Z

    if-eqz v0, :cond_20

    move-object v0, v3

    .line 652
    :goto_d
    if-eqz v0, :cond_21

    :cond_17
    iget-object v1, p0, Lcom/loc/aw;->T:Lcom/loc/be;

    if-nez v1, :cond_22

    :cond_18
    move v1, v5

    .line 657
    :goto_e
    invoke-direct {p0}, Lcom/loc/aw;->m()Z

    move-result v9

    .line 662
    iget-object v6, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-nez v6, :cond_23

    move v8, v4

    .line 667
    :goto_f
    iget-object v6, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-nez v6, :cond_26

    :cond_19
    move v1, v4

    .line 715
    :cond_1a
    if-eqz v1, :cond_2a

    const-wide/16 v10, 0x0

    .line 718
    iput-wide v10, p0, Lcom/loc/aw;->R:J

    .line 721
    :goto_10
    iget-object v1, p0, Lcom/loc/aw;->P:Ljava/lang/String;

    if-nez v1, :cond_2b

    .line 729
    :cond_1b
    iget-object v1, p0, Lcom/loc/aw;->P:Ljava/lang/String;

    if-eqz v1, :cond_2e

    .line 733
    invoke-static {}, Lcom/loc/bw;->a()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/loc/aw;->Q:J

    move-object v6, v7

    .line 737
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/loc/aw;->ac:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/loc/aw;->ab:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 740
    if-eqz v8, :cond_2f

    .line 761
    :cond_1c
    :goto_12
    if-eqz v9, :cond_30

    :cond_1d
    if-nez v8, :cond_31

    .line 789
    if-nez v9, :cond_32

    const-wide/16 v4, 0x0

    .line 815
    iput-wide v4, p0, Lcom/loc/aw;->R:J

    const/4 v0, 0x4

    .line 816
    invoke-virtual {v3, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    .line 817
    iput-object v3, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 819
    invoke-direct {p0}, Lcom/loc/aw;->H()V

    .line 827
    :cond_1e
    :goto_13
    invoke-static {}, Lcom/loc/bj;->a()Lcom/loc/bj;

    move-result-object v0

    iget-object v3, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v4, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/loc/bj;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AmapLoc;Landroid/content/Context;Z)V

    .line 836
    invoke-static {}, Lcom/loc/bm;->a()Lcom/loc/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0, v1, v6, v3}, Lcom/loc/bm;->a(Landroid/content/Context;Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AmapLoc;)V

    .line 844
    iget-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_1f
    :goto_14
    const/4 v0, 0x0

    .line 877
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 886
    iget-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    return-object v0

    .line 643
    :cond_20
    :try_start_e
    iget-object v0, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    invoke-virtual {v0}, Lcom/loc/bf;->b()Lcom/loc/be;

    move-result-object v0

    goto/16 :goto_d

    .line 652
    :cond_21
    iget-object v1, p0, Lcom/loc/aw;->T:Lcom/loc/be;

    if-nez v1, :cond_17

    :goto_15
    move v1, v4

    .line 653
    goto/16 :goto_e

    .line 652
    :cond_22
    iget-object v1, p0, Lcom/loc/aw;->T:Lcom/loc/be;

    .line 653
    invoke-virtual {v1, v0}, Lcom/loc/be;->a(Lcom/loc/be;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_15

    .line 663
    :cond_23
    iget-object v6, p0, Lcom/loc/aw;->q:Ljava/util/ArrayList;

    .line 664
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 665
    iget-object v8, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v8}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j()F

    move-result v8

    const v10, 0x43958000    # 299.0f

    cmpl-float v8, v8, v10

    if-lez v8, :cond_24

    const/4 v8, 0x5

    if-gt v6, v8, :cond_25

    :cond_24
    move v6, v4

    :goto_16
    move v8, v6

    goto/16 :goto_f

    :cond_25
    move v6, v5

    goto :goto_16

    .line 667
    :cond_26
    iget-object v6, p0, Lcom/loc/aw;->S:Ljava/lang/String;

    if-eqz v6, :cond_19

    if-nez v8, :cond_19

    if-nez v1, :cond_19

    .line 672
    invoke-static {}, Lcom/loc/bj;->a()Lcom/loc/bj;

    move-result-object v1

    iget-object v6, p0, Lcom/loc/aw;->S:Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Lcom/loc/bj;->b(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v1

    .line 681
    if-eqz v1, :cond_27

    .line 683
    :goto_17
    iget-object v6, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    iget-boolean v10, p0, Lcom/loc/aw;->A:Z

    invoke-virtual {v6, v10}, Lcom/loc/bf;->a(Z)Z

    move-result v6

    if-nez v6, :cond_29

    .line 700
    :goto_18
    iget-object v6, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v6}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 704
    iget-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-string/jumbo v1, "mem"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    .line 706
    iget-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit p0

    return-object v0

    .line 681
    :cond_27
    :try_start_f
    iget-wide v10, p0, Lcom/loc/aw;->R:J

    cmp-long v6, v10, v12

    if-eqz v6, :cond_1a

    .line 682
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/loc/aw;->R:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0xbb8

    cmp-long v6, v10, v12

    if-ltz v6, :cond_28

    move v6, v5

    :goto_19
    if-nez v6, :cond_1a

    goto :goto_17

    :cond_28
    move v6, v4

    goto :goto_19

    .line 688
    :cond_29
    iget-object v6, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    invoke-virtual {v6}, Lcom/loc/bf;->h()V

    goto :goto_18

    .line 716
    :cond_2a
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/loc/aw;->R:J

    goto/16 :goto_10

    .line 721
    :cond_2b
    iget-object v1, p0, Lcom/loc/aw;->P:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 723
    invoke-static {}, Lcom/loc/bw;->a()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/loc/aw;->Q:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0xbb8

    cmp-long v1, v10, v12

    if-ltz v1, :cond_2c

    :goto_1a
    if-nez v5, :cond_2d

    .line 724
    iget-object v1, p0, Lcom/loc/aw;->P:Ljava/lang/String;

    move-object v6, v1

    goto/16 :goto_11

    :cond_2c
    move v5, v4

    .line 723
    goto :goto_1a

    .line 726
    :cond_2d
    invoke-static {}, Lcom/loc/bw;->a()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/loc/aw;->Q:J

    .line 727
    iput-object v7, p0, Lcom/loc/aw;->P:Ljava/lang/String;

    move-object v6, v7

    goto/16 :goto_11

    .line 730
    :cond_2e
    invoke-static {}, Lcom/loc/bw;->a()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/loc/aw;->Q:J

    .line 731
    iput-object v7, p0, Lcom/loc/aw;->P:Ljava/lang/String;

    move-object v6, v7

    goto/16 :goto_11

    .line 740
    :cond_2f
    if-nez v9, :cond_1c

    .line 744
    invoke-static {}, Lcom/loc/bj;->a()Lcom/loc/bj;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/loc/bj;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v3

    goto/16 :goto_12

    .line 761
    :cond_30
    invoke-static {v3}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 765
    :cond_31
    invoke-virtual {p0}, Lcom/loc/aw;->f()Ljava/lang/String;

    move-result-object v3

    .line 773
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/loc/aw;->a(Ljava/lang/String;ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v3

    iput-object v3, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 780
    iget-object v3, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v3}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 781
    iget-object v3, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-string/jumbo v4, "new"

    invoke-virtual {v3, v4}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->f(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/loc/aw;->S:Ljava/lang/String;

    .line 783
    iput-object v0, p0, Lcom/loc/aw;->T:Lcom/loc/be;

    .line 784
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/loc/aw;->x:J

    .line 786
    invoke-direct {p0}, Lcom/loc/aw;->H()V

    goto/16 :goto_13

    .line 793
    :cond_32
    invoke-virtual {p0}, Lcom/loc/aw;->f()Ljava/lang/String;

    move-result-object v3

    .line 799
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/loc/aw;->a(Ljava/lang/String;ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v3

    iput-object v3, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 803
    iget-object v3, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v3}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 804
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/loc/aw;->S:Ljava/lang/String;

    .line 805
    iput-object v0, p0, Lcom/loc/aw;->T:Lcom/loc/be;

    .line 806
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/loc/aw;->x:J

    .line 808
    invoke-direct {p0}, Lcom/loc/aw;->H()V

    goto/16 :goto_13

    .line 852
    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/loc/aw;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    .line 858
    invoke-static {v0}, Lcom/loc/bw;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 862
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/aw;->S:Ljava/lang/String;

    .line 863
    iget-object v1, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 864
    iput-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 865
    iget-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    .line 867
    iget-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u79bb\u7ebf\u5b9a\u4f4d\uff0c\u5728\u7ebf\u5b9a\u4f4d\u5931\u8d25\u539f\u56e0:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 868
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 867
    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_14
.end method

.method public a()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 895
    invoke-static {}, Lcom/loc/bu;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v2

    invoke-static {}, Lcom/loc/bu;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/loc/bu;->b()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    :goto_1
    if-nez v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 903
    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/loc/aw;->b(Z)Ljava/lang/String;

    .line 904
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/loc/aw;->c(Z)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {p0}, Lcom/loc/aw;->f()Ljava/lang/String;

    move-result-object v0

    .line 906
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/loc/aw;->a(Ljava/lang/String;ZZ)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 911
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 896
    goto :goto_1

    .line 897
    :cond_4
    iget-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    .line 898
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 171
    if-eqz p1, :cond_0

    .line 177
    :try_start_0
    sget-object v0, Lcom/loc/e;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    .line 188
    invoke-static {p1}, Lcom/loc/bp;->a(Landroid/content/Context;)Lcom/loc/bp;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aw;->b:Lcom/loc/bp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :try_start_1
    iget-object v0, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    .line 229
    invoke-static {v0}, Lcom/loc/cb;->a(Landroid/content/Context;)Lcom/loc/cb;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aw;->L:Lcom/loc/cb;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/aw;->z:J

    .line 237
    invoke-direct {p0}, Lcom/loc/aw;->i()V

    .line 238
    invoke-direct {p0}, Lcom/loc/aw;->j()V

    .line 239
    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/e;->n:Z

    .line 240
    new-instance v0, Lcom/loc/bt;

    invoke-direct {v0}, Lcom/loc/bt;-><init>()V

    iput-object v0, p0, Lcom/loc/aw;->H:Lcom/loc/bt;

    .line 250
    iget-object v0, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    invoke-virtual {v0}, Lcom/loc/bf;->d()Landroid/telephony/CellLocation;

    .line 255
    invoke-static {}, Lcom/loc/bj;->a()Lcom/loc/bj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/bj;->a(Landroid/content/Context;)V

    .line 264
    invoke-static {}, Lcom/loc/bm;->a()Lcom/loc/bm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/bm;->a(Landroid/content/Context;)V

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/aw;->i:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 270
    return-void

    :cond_0
    monitor-exit p0

    .line 175
    return-void

    .line 178
    :cond_1
    :try_start_3
    invoke-static {p1}, Lcom/loc/bw;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/e;->k:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    monitor-exit p0

    .line 185
    return-void

    .line 234
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/loc/aw;->w()V

    .line 292
    return-void

    :cond_1
    const-string/jumbo v0, "##"

    .line 287
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "##"

    .line 294
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 295
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 302
    aget-object v1, v0, v3

    sput-object v1, Lcom/loc/e;->e:Ljava/lang/String;

    const/4 v1, 0x1

    .line 303
    aget-object v1, v0, v1

    sput-object v1, Lcom/loc/e;->f:Ljava/lang/String;

    const/4 v1, 0x2

    .line 304
    aget-object v1, v0, v1

    sput-object v1, Lcom/loc/e;->h:Ljava/lang/String;

    const/4 v1, 0x3

    .line 305
    aget-object v0, v0, v1

    sput-object v0, Lcom/loc/e;->i:Ljava/lang/String;

    .line 306
    return-void

    .line 299
    :cond_2
    invoke-direct {p0}, Lcom/loc/aw;->w()V

    .line 300
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 328
    iput-object p1, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v0, "collwifiscan"

    .line 333
    invoke-static {p1, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    if-nez v0, :cond_3

    .line 359
    :goto_1
    iget-object v0, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    if-nez v0, :cond_4

    .line 361
    :goto_2
    return-void

    :cond_1
    :try_start_0
    const-string/jumbo v0, "collwifiscan"

    .line 338
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 342
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/loc/e;->m:I

    .line 347
    :goto_3
    invoke-direct {p0}, Lcom/loc/aw;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/loc/aw;->L:Lcom/loc/cb;

    sget v1, Lcom/loc/e;->m:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/loc/cb;->b(I)V

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x14

    .line 340
    sput v0, Lcom/loc/e;->m:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    invoke-virtual {v0, p1}, Lcom/loc/bf;->a(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 360
    :cond_4
    iget-object v0, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    invoke-virtual {v0, p1}, Lcom/loc/bg;->a(Lorg/json/JSONObject;)V

    goto :goto_2
.end method

.method public declared-synchronized b(Z)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    .line 1256
    :try_start_0
    iget-boolean v0, p0, Lcom/loc/aw;->A:Z

    if-nez v0, :cond_2

    .line 1264
    iget-object v0, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    invoke-virtual {v0}, Lcom/loc/bf;->j()V

    :goto_0
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    const-string/jumbo v4, "network"

    .line 1269
    invoke-direct {p0}, Lcom/loc/aw;->p()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1272
    invoke-direct {p0}, Lcom/loc/aw;->n()V

    :goto_1
    const-string/jumbo v1, ""

    .line 1275
    iget-object v1, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    invoke-virtual {v1}, Lcom/loc/bf;->c()I

    move-result v1

    .line 1276
    iget-object v5, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    invoke-virtual {v5}, Lcom/loc/bf;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 1277
    iget-object v6, p0, Lcom/loc/aw;->q:Ljava/util/ArrayList;

    .line 1278
    if-nez v5, :cond_4

    :cond_0
    if-nez v6, :cond_6

    .line 1280
    :cond_1
    sget-object v1, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u2297 lstCgi & \u2297 wifis"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    .line 1281
    iput v1, p0, Lcom/loc/aw;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1282
    return-object v0

    .line 1261
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    invoke-virtual {v0}, Lcom/loc/bf;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1270
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/loc/aw;->o:Lcom/loc/bg;

    invoke-virtual {v1}, Lcom/loc/bg;->b()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    goto :goto_1

    .line 1278
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1288
    :goto_2
    sparse-switch v1, :sswitch_data_0

    const/16 v1, 0xb

    .line 1398
    iput v1, p0, Lcom/loc/aw;->j:I

    .line 1402
    sget-object v1, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "get cgi failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    :cond_5
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_13

    :goto_4
    monitor-exit p0

    .line 1411
    return-object v0

    .line 1279
    :cond_6
    :try_start_3
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    .line 1290
    :sswitch_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    .line 1291
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/be;

    .line 1292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1293
    iget-object v2, v0, Lcom/loc/be;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    iget-object v2, v0, Lcom/loc/be;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    iget v2, v0, Lcom/loc/be;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    iget v0, v0, Lcom/loc/be;->d:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const-string/jumbo v0, "cgiwifi"

    .line 1303
    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1298
    :cond_8
    iget-object v0, p0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/aw;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "cgi"

    goto :goto_5

    .line 1310
    :sswitch_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    .line 1311
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/be;

    .line 1312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1313
    iget-object v2, v0, Lcom/loc/be;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    iget-object v2, v0, Lcom/loc/be;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    iget v2, v0, Lcom/loc/be;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    iget v2, v0, Lcom/loc/be;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    iget v0, v0, Lcom/loc/be;->i:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    const-string/jumbo v0, "cgiwifi"

    .line 1324
    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 1319
    :cond_a
    iget-object v0, p0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/aw;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "cgi"

    goto :goto_6

    .line 1332
    :sswitch_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move v1, v3

    .line 1335
    :goto_7
    if-eqz p1, :cond_e

    .line 1379
    :cond_c
    :goto_8
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "#%s#"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1380
    if-nez v1, :cond_12

    const-string/jumbo v1, "network"

    .line 1385
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v0, ""

    const/4 v1, 0x2

    .line 1390
    iput v1, p0, Lcom/loc/aw;->j:I

    .line 1391
    sget-object v1, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    const-string/jumbo v2, "is network & no wifi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1332
    :cond_d
    iget-object v0, p0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/aw;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_b

    move v1, v2

    goto :goto_7

    .line 1339
    :cond_e
    iget-object v0, p0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/aw;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1349
    :cond_f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_c

    const/4 v0, 0x2

    .line 1350
    iput v0, p0, Lcom/loc/aw;->j:I

    .line 1351
    iget-object v0, p0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Lcom/loc/aw;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 1364
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1365
    iget-object v3, p0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1369
    sget-object v0, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "same access wifi & around wifi 1"

    .line 1370
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 1371
    goto :goto_8

    .line 1339
    :cond_10
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    .line 1346
    iput v0, p0, Lcom/loc/aw;->j:I

    .line 1347
    sget-object v0, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2297 around wifi(s) & has access wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 1348
    goto :goto_8

    .line 1358
    :cond_11
    sget-object v0, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2297 access wifi & around wifi 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 1359
    goto/16 :goto_8

    .line 1384
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_13
    const-string/jumbo v1, "#"

    .line 1406
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1409
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/loc/bw;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 1407
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_9

    .line 1288
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public declared-synchronized b()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 1048
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/loc/aw;->i:Z

    .line 1049
    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/e;->n:Z

    .line 1054
    invoke-direct {p0}, Lcom/loc/aw;->u()V

    const/4 v0, 0x0

    .line 1055
    iput-object v0, p0, Lcom/loc/aw;->L:Lcom/loc/cb;

    const/4 v0, 0x0

    .line 1056
    iput-object v0, p0, Lcom/loc/aw;->M:Lcom/loc/ch;

    const/4 v0, 0x0

    .line 1058
    iput-object v0, p0, Lcom/loc/aw;->S:Ljava/lang/String;

    .line 1060
    invoke-direct {p0}, Lcom/loc/aw;->H()V

    .line 1065
    iget-object v0, p0, Lcom/loc/aw;->d:Lcom/loc/ax;

    if-nez v0, :cond_0

    .line 1073
    :goto_0
    invoke-direct {p0}, Lcom/loc/aw;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    :try_start_1
    invoke-static {}, Lcom/loc/bk;->a()Lcom/loc/bk;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/loc/bk;->a(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1084
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/loc/ba;->a()Lcom/loc/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/ba;->b()V

    .line 1085
    invoke-static {}, Lcom/loc/bw;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1094
    :try_start_3
    iget-object v0, p0, Lcom/loc/aw;->m:Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_1

    :goto_2
    const/4 v0, 0x0

    .line 1105
    :try_start_4
    iput-object v0, p0, Lcom/loc/aw;->t:Lcom/loc/aw$b;

    .line 1117
    :goto_3
    iget-object v0, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    if-nez v0, :cond_2

    .line 1122
    :goto_4
    invoke-static {}, Lcom/loc/bj;->a()Lcom/loc/bj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bj;->c()V

    .line 1125
    invoke-static {}, Lcom/loc/bm;->a()Lcom/loc/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bm;->c()V

    .line 1128
    invoke-static {}, Lcom/loc/bd;->a()V

    .line 1129
    invoke-direct {p0}, Lcom/loc/aw;->J()V

    const-wide/16 v0, 0x0

    .line 1131
    iput-wide v0, p0, Lcom/loc/aw;->x:J

    const-wide/16 v0, 0x0

    .line 1132
    iput-wide v0, p0, Lcom/loc/aw;->Q:J

    .line 1135
    invoke-direct {p0}, Lcom/loc/aw;->n()V

    const/4 v0, 0x0

    .line 1136
    iput-object v0, p0, Lcom/loc/aw;->w:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const/4 v0, 0x0

    .line 1139
    iput-object v0, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    const/4 v0, -0x1

    .line 1142
    sput v0, Lcom/loc/n;->a:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 1154
    return-void

    .line 1067
    :cond_0
    :try_start_5
    iget-object v0, p0, Lcom/loc/aw;->d:Lcom/loc/ax;

    invoke-virtual {v0}, Lcom/loc/ax;->a()V

    const/4 v0, 0x0

    .line 1068
    iput-object v0, p0, Lcom/loc/aw;->d:Lcom/loc/ax;

    .line 1069
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/aw;->f:Z

    const/4 v0, -0x1

    .line 1070
    iput v0, p0, Lcom/loc/aw;->e:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1098
    :cond_1
    :try_start_6
    iget-object v0, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/aw;->t:Lcom/loc/aw$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 1106
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 1105
    :try_start_7
    iput-object v0, p0, Lcom/loc/aw;->t:Lcom/loc/aw$b;

    goto :goto_3

    .line 1106
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    .line 1105
    iput-object v1, p0, Lcom/loc/aw;->t:Lcom/loc/aw$b;

    throw v0

    .line 1118
    :cond_2
    iget-object v0, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    invoke-virtual {v0}, Lcom/loc/bf;->i()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 1082
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 3444
    :try_start_0
    sget v0, Lcom/loc/n;->a:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    .line 3455
    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "2.3.0"

    .line 3445
    invoke-static {v0}, Lcom/loc/e;->a(Ljava/lang/String;)Lcom/loc/v;

    move-result-object v0

    .line 3446
    iget-object v1, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/loc/n;->b(Landroid/content/Context;Lcom/loc/v;)Z

    .line 3447
    invoke-static {p1}, Lcom/loc/bu;->a(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3454
    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "2.3.0"

    .line 1164
    return-object v0
.end method

.method public declared-synchronized c(Z)Ljava/lang/StringBuilder;
    .locals 13

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    .line 1444
    :try_start_0
    iget-object v0, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    .line 1446
    iget-boolean v1, p0, Lcom/loc/aw;->A:Z

    if-nez v1, :cond_4

    .line 1449
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v1, 0x2bc

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1450
    invoke-virtual {v0}, Lcom/loc/bf;->c()I

    move-result v1

    .line 1451
    invoke-virtual {v0}, Lcom/loc/bf;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 1453
    packed-switch v1, :pswitch_data_0

    .line 1464
    :cond_0
    if-eqz p1, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/loc/aw;->F:Ljava/lang/String;

    const-string/jumbo v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1473
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/loc/aw;->p()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1497
    invoke-direct {p0}, Lcom/loc/aw;->n()V

    .line 1499
    :cond_3
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_b

    :goto_3
    monitor-exit p0

    .line 1502
    return-object v5

    .line 1447
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lcom/loc/bf;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_0
    move v1, v3

    .line 1455
    :goto_4
    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const-string/jumbo v0, "#"

    .line 1456
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/be;

    iget-object v0, v0, Lcom/loc/be;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    .line 1457
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/be;

    iget v0, v0, Lcom/loc/be;->c:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    .line 1458
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/be;

    iget v0, v0, Lcom/loc/be;->d:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1455
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 1464
    :cond_5
    iget-object v0, p0, Lcom/loc/aw;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1465
    :cond_6
    iget-object v0, p0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_2

    .line 1466
    iget-object v0, p0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aw;->F:Ljava/lang/String;

    .line 1467
    invoke-direct {p0}, Lcom/loc/aw;->v()V

    .line 1468
    iget-object v0, p0, Lcom/loc/aw;->F:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "00:00:00:00:00:00"

    .line 1469
    iput-object v0, p0, Lcom/loc/aw;->F:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string/jumbo v0, ""

    .line 1475
    iget-object v1, p0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v1}, Lcom/loc/aw;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-nez v1, :cond_8

    move-object v1, v0

    .line 1479
    :goto_5
    iget-object v6, p0, Lcom/loc/aw;->q:Ljava/util/ArrayList;

    .line 1481
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v4, v2

    :goto_6
    if-lt v4, v7, :cond_9

    .line 1492
    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "#"

    .line 1493
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ",access"

    .line 1494
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1476
    :cond_8
    iget-object v0, p0, Lcom/loc/aw;->u:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_5

    .line 1482
    :cond_9
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v8, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v0, "nb"

    .line 1484
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 1488
    :goto_7
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v10, "#%s,%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v8, 0x1

    aput-object v0, v11, v8

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_6

    :cond_a
    const-string/jumbo v0, "access"

    move v2, v3

    .line 1486
    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    .line 1500
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 1453
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized d()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 1925
    :try_start_0
    iget-object v0, p0, Lcom/loc/aw;->q:Ljava/util/ArrayList;

    .line 1926
    iget-object v1, p0, Lcom/loc/aw;->r:Ljava/util/ArrayList;

    .line 1927
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1928
    iget-object v2, p0, Lcom/loc/aw;->h:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1929
    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1930
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 1932
    return-void

    .line 1930
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 10

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 1940
    :try_start_0
    iget-object v0, p0, Lcom/loc/aw;->q:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    .line 1941
    return-void

    .line 1940
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/aw;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1947
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/loc/aw;->D:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x36ee80

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3

    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 1948
    invoke-direct {p0}, Lcom/loc/aw;->n()V

    .line 1956
    :cond_2
    invoke-static {}, Lcom/loc/bw;->h()Z

    move-result v0

    .line 1957
    iget-object v4, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v5, "nbssid"

    invoke-static {v4, v5}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v0

    .line 1970
    :goto_1
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 1971
    iget-object v6, p0, Lcom/loc/aw;->q:Ljava/util/ArrayList;

    .line 1972
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v2, v1

    .line 1974
    :goto_2
    if-lt v2, v7, :cond_7

    .line 2014
    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 2015
    invoke-virtual {v0, v5}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 2016
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 2017
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 2025
    invoke-virtual {v5}, Ljava/util/Hashtable;->clear()V

    .line 2027
    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 2029
    return-void

    :cond_3
    move v0, v1

    .line 1947
    goto :goto_0

    .line 1959
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v5, "nbssid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1961
    iget-object v2, p0, Lcom/loc/aw;->v:Lorg/json/JSONObject;

    const-string/jumbo v4, "nbssid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_6

    :goto_4
    move v4, v0

    .line 1968
    goto :goto_1

    :cond_5
    move v0, v2

    .line 1960
    goto :goto_4

    :cond_6
    move v0, v1

    .line 1962
    goto :goto_4

    .line 1968
    :catch_0
    move-exception v2

    move v4, v0

    goto :goto_1

    .line 1975
    :cond_7
    :try_start_3
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 1976
    invoke-static {v0}, Lcom/loc/bw;->a(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x14

    .line 1979
    if-gt v7, v1, :cond_a

    .line 1982
    :goto_5
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string/jumbo v1, "unkwn"

    .line 2009
    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 2011
    :cond_8
    :goto_6
    iget v1, v0, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v1, v1, 0x1e

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1974
    :cond_9
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_2

    .line 1979
    :cond_a
    iget v1, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-direct {p0, v1}, Lcom/loc/aw;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    .line 1983
    :cond_b
    if-nez v4, :cond_c

    .line 2006
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1984
    :cond_c
    :try_start_4
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string/jumbo v8, "*"

    const-string/jumbo v9, "."

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1990
    :try_start_5
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string/jumbo v8, "UTF-8"

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1996
    :goto_7
    if-lt v1, v3, :cond_8

    .line 2000
    :try_start_6
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_6

    .line 1995
    :catch_1
    move-exception v1

    move v1, v3

    goto :goto_7

    .line 2017
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2018
    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3
.end method

.method public declared-synchronized f()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 2060
    :try_start_0
    iget-object v0, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    iget-boolean v1, p0, Lcom/loc/aw;->A:Z

    invoke-virtual {v0, v1}, Lcom/loc/bf;->a(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    .line 2069
    :try_start_1
    invoke-direct {p0, v0}, Lcom/loc/aw;->a(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2076
    if-nez v0, :cond_1

    .line 2085
    :try_start_2
    sget-object v0, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "get parames is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 2086
    return-object v4

    .line 2062
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/loc/aw;->p:Lcom/loc/bf;

    invoke-virtual {v0}, Lcom/loc/bf;->h()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2074
    :catch_0
    move-exception v0

    .line 2071
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2072
    sget-object v1, Lcom/loc/aw;->c:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get parames error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    .line 2073
    return-object v4

    .line 2080
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized g()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    monitor-enter p0

    .line 3409
    :try_start_0
    iget v0, p0, Lcom/loc/aw;->E:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 3440
    return-void

    .line 3409
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/loc/aw;->f:Z

    if-nez v0, :cond_0

    .line 3413
    iget-object v0, p0, Lcom/loc/aw;->d:Lcom/loc/ax;

    if-eqz v0, :cond_2

    .line 3420
    :goto_1
    invoke-static {}, Lcom/loc/bu;->p()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/aw;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3414
    :cond_2
    :try_start_2
    new-instance v0, Lcom/loc/ax;

    iget-object v1, p0, Lcom/loc/aw;->m:Landroid/content/Context;

    .line 3415
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/loc/ax;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/aw;->d:Lcom/loc/ax;

    .line 3416
    iget-object v0, p0, Lcom/loc/aw;->d:Lcom/loc/ax;

    iget-object v1, p0, Lcom/loc/aw;->l:Lcom/loc/aw$a;

    invoke-virtual {v0, v1}, Lcom/loc/ax;->a(Lcom/loc/ax$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3422
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/loc/aw;->d:Lcom/loc/ax;

    if-nez v0, :cond_4

    .line 3425
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/aw;->f:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3432
    :catch_0
    move-exception v0

    .line 3427
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/loc/aw;->f:Z

    .line 3428
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 3423
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/loc/aw;->d:Lcom/loc/ax;

    invoke-virtual {v0}, Lcom/loc/ax;->b()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public h()V
    .locals 1

    .prologue
    .line 4020
    iget-boolean v0, p0, Lcom/loc/aw;->k:Z

    if-nez v0, :cond_1

    .line 4025
    :cond_0
    :goto_0
    return-void

    .line 4021
    :cond_1
    invoke-direct {p0}, Lcom/loc/aw;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4022
    invoke-direct {p0}, Lcom/loc/aw;->s()V

    goto :goto_0
.end method
