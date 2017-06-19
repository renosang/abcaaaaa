.class public Lcom/loc/a;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"

# interfaces
.implements Lcom/amap/api/location/LocationManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/a$a;,
        Lcom/loc/a$b;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/location/AMapLocationClientOption;

.field b:Lcom/loc/a$b;

.field c:Lcom/loc/g;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/location/AMapLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/loc/f;

.field f:Z

.field g:Lcom/loc/i;

.field h:Landroid/os/Messenger;

.field i:Landroid/os/Messenger;

.field j:Lcom/loc/a$a;

.field k:Landroid/content/Intent;

.field l:I

.field m:J

.field n:J

.field o:I

.field p:Z

.field private final q:I

.field private final r:I

.field private s:Landroid/content/Context;

.field private t:Z

.field private u:Z

.field private v:J

.field private w:Z

.field private x:Z

.field private y:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    .line 85
    iput v0, p0, Lcom/loc/a;->q:I

    const/16 v0, 0x7530

    .line 89
    iput v0, p0, Lcom/loc/a;->r:I

    .line 93
    iput-object v2, p0, Lcom/loc/a;->c:Lcom/loc/g;

    .line 98
    iput-boolean v1, p0, Lcom/loc/a;->t:Z

    .line 103
    iput-boolean v3, p0, Lcom/loc/a;->u:Z

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    .line 121
    iput-boolean v1, p0, Lcom/loc/a;->f:Z

    .line 122
    iput-wide v4, p0, Lcom/loc/a;->v:J

    .line 126
    iput-boolean v3, p0, Lcom/loc/a;->w:Z

    .line 130
    iput-boolean v1, p0, Lcom/loc/a;->x:Z

    .line 140
    iput-object v2, p0, Lcom/loc/a;->h:Landroid/os/Messenger;

    .line 144
    iput-object v2, p0, Lcom/loc/a;->i:Landroid/os/Messenger;

    .line 152
    iput-object v2, p0, Lcom/loc/a;->k:Landroid/content/Intent;

    .line 220
    new-instance v0, Lcom/loc/b;

    invoke-direct {v0, p0}, Lcom/loc/b;-><init>(Lcom/loc/a;)V

    iput-object v0, p0, Lcom/loc/a;->y:Landroid/content/ServiceConnection;

    .line 402
    iput v1, p0, Lcom/loc/a;->l:I

    .line 559
    iput-wide v4, p0, Lcom/loc/a;->m:J

    .line 569
    iput-wide v4, p0, Lcom/loc/a;->n:J

    .line 582
    iput v1, p0, Lcom/loc/a;->o:I

    .line 583
    iput-boolean v1, p0, Lcom/loc/a;->p:Z

    .line 160
    iput-object p1, p0, Lcom/loc/a;->s:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/loc/a;->k:Landroid/content/Intent;

    .line 162
    invoke-direct {p0}, Lcom/loc/a;->b()V

    .line 163
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 202
    if-eqz p1, :cond_0

    :goto_0
    :try_start_0
    const-string/jumbo v0, "apiKey"

    .line 207
    sget-object v1, Lcom/loc/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    iget-object v0, p0, Lcom/loc/a;->s:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/a;->y:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 218
    :goto_1
    return-void

    .line 203
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/a;->s:Landroid/content/Context;

    const-class v1, Lcom/amap/api/location/APSService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/loc/a;)Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/loc/a;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/loc/a;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/loc/a;->t:Z

    return p1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/loc/a;->k:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/loc/a;->a(Landroid/content/Intent;)V

    .line 169
    iget-object v0, p0, Lcom/loc/a;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/i;->a(Landroid/content/Context;)Lcom/loc/i;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/a;->g:Lcom/loc/i;

    .line 171
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Lcom/loc/a$b;

    invoke-direct {v0, p0}, Lcom/loc/a$b;-><init>(Lcom/loc/a;)V

    iput-object v0, p0, Lcom/loc/a;->b:Lcom/loc/a$b;

    .line 179
    :goto_0
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/loc/a;->b:Lcom/loc/a$b;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/loc/a;->i:Landroid/os/Messenger;

    .line 181
    new-instance v0, Lcom/loc/g;

    iget-object v1, p0, Lcom/loc/a;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/a;->b:Lcom/loc/a$b;

    invoke-direct {v0, v1, v2}, Lcom/loc/g;-><init>(Landroid/content/Context;Lcom/loc/a$b;)V

    iput-object v0, p0, Lcom/loc/a;->c:Lcom/loc/g;

    .line 186
    :try_start_0
    new-instance v0, Lcom/loc/f;

    iget-object v1, p0, Lcom/loc/a;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/a;->e:Lcom/loc/f;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_1
    return-void

    .line 172
    :cond_0
    new-instance v0, Lcom/loc/a$b;

    iget-object v1, p0, Lcom/loc/a;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/loc/a$b;-><init>(Lcom/loc/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/loc/a;->b:Lcom/loc/a$b;

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/loc/a;)Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/loc/a;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/loc/a;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/loc/a;->w:Z

    return p1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/loc/a;->j:Lcom/loc/a$a;

    if-eqz v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 262
    :cond_0
    new-instance v0, Lcom/loc/a$a;

    const-string/jumbo v1, "locationThread"

    invoke-direct {v0, p0, v1}, Lcom/loc/a$a;-><init>(Lcom/loc/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/a;->j:Lcom/loc/a$a;

    .line 263
    iget-object v0, p0, Lcom/loc/a;->j:Lcom/loc/a$a;

    invoke-virtual {v0}, Lcom/loc/a$a;->start()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/loc/a;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/loc/a;->w:Z

    return v0
.end method

.method static synthetic d(Lcom/loc/a;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/loc/a;->f()V

    return-void
.end method

.method private d()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 562
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v4

    .line 563
    iget-wide v6, p0, Lcom/loc/a;->m:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 564
    return v1

    :cond_0
    move v0, v2

    .line 563
    goto :goto_0

    .line 566
    :cond_1
    return v2
.end method

.method private e()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 571
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v4

    .line 572
    iget-wide v6, p0, Lcom/loc/a;->n:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_0

    .line 573
    return v2

    .line 575
    :cond_0
    iget-wide v6, p0, Lcom/loc/a;->n:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 576
    return v1

    :cond_1
    move v0, v2

    .line 575
    goto :goto_0

    .line 578
    :cond_2
    return v2
.end method

.method static synthetic e(Lcom/loc/a;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/loc/a;->u:Z

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 753
    :try_start_0
    iget-object v2, p0, Lcom/loc/a;->s:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 754
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 755
    if-eqz v2, :cond_1

    .line 758
    iget-object v2, p0, Lcom/loc/a;->s:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_0

    move v1, v0

    .line 763
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 792
    invoke-direct {p0}, Lcom/loc/a;->g()V

    .line 798
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 757
    goto :goto_0

    .line 764
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/loc/a;->s:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 765
    invoke-static {}, Lcom/loc/bu;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v2, ""

    .line 766
    invoke-static {}, Lcom/loc/bu;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 777
    :cond_3
    :goto_2
    invoke-static {}, Lcom/loc/bu;->l()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/loc/a$2;

    invoke-direct {v3, p0}, Lcom/loc/a$2;-><init>(Lcom/loc/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 784
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 785
    if-nez v0, :cond_5

    .line 789
    :goto_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 790
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 797
    :catch_0
    move-exception v0

    .line 796
    invoke-direct {p0}, Lcom/loc/a;->g()V

    goto :goto_1

    .line 767
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/loc/bu;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 768
    invoke-static {}, Lcom/loc/bu;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/loc/a$1;

    invoke-direct {v3, p0}, Lcom/loc/a$1;-><init>(Lcom/loc/a;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 786
    :cond_5
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d3

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method static synthetic f(Lcom/loc/a;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/loc/a;->g()V

    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 805
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 806
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.autonavi.minimap"

    .line 807
    invoke-static {}, Lcom/loc/bu;->o()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 809
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 810
    invoke-static {}, Lcom/loc/bu;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 811
    iget-object v1, p0, Lcom/loc/a;->s:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_0
    return-void

    .line 820
    :catch_0
    move-exception v0

    .line 814
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    .line 815
    invoke-static {}, Lcom/loc/bu;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 816
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 817
    iget-object v1, p0, Lcom/loc/a;->s:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 819
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 334
    iget-object v0, p0, Lcom/loc/a;->j:Lcom/loc/a$a;

    if-nez v0, :cond_0

    .line 338
    :goto_0
    iput-object v2, p0, Lcom/loc/a;->j:Lcom/loc/a$a;

    .line 339
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/loc/a;->j:Lcom/loc/a$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/loc/a$a;->a:Z

    .line 336
    iget-object v0, p0, Lcom/loc/a;->j:Lcom/loc/a$a;

    invoke-virtual {v0}, Lcom/loc/a$a;->interrupt()V

    goto :goto_0
.end method

.method public addGeoFenceAlert(Ljava/lang/String;DDFJLandroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 372
    new-instance v0, Lcom/amap/api/fence/Fence;

    invoke-direct {v0}, Lcom/amap/api/fence/Fence;-><init>()V

    .line 373
    iput-object p1, v0, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    .line 374
    iput-wide p2, v0, Lcom/amap/api/fence/Fence;->d:D

    .line 375
    iput-wide p4, v0, Lcom/amap/api/fence/Fence;->c:D

    .line 376
    iput p6, v0, Lcom/amap/api/fence/Fence;->e:F

    .line 377
    iput-object p9, v0, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    .line 378
    invoke-virtual {v0, p7, p8}, Lcom/amap/api/fence/Fence;->a(J)V

    .line 379
    iget-object v1, p0, Lcom/loc/a;->e:Lcom/loc/f;

    if-nez v1, :cond_0

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/loc/a;->e:Lcom/loc/f;

    iget-object v2, v0, Lcom/amap/api/fence/Fence;->a:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2}, Lcom/loc/f;->a(Lcom/amap/api/fence/Fence;Landroid/app/PendingIntent;)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/a;->w:Z

    .line 346
    invoke-virtual {p0}, Lcom/loc/a;->stopLocation()V

    .line 349
    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/f;

    if-nez v0, :cond_0

    .line 353
    :goto_0
    iget-object v0, p0, Lcom/loc/a;->y:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    .line 356
    :goto_1
    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 360
    :goto_2
    iput-object v2, p0, Lcom/loc/a;->y:Landroid/content/ServiceConnection;

    .line 361
    iget-object v0, p0, Lcom/loc/a;->b:Lcom/loc/a$b;

    if-nez v0, :cond_3

    .line 364
    :goto_3
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/f;

    invoke-virtual {v0}, Lcom/loc/f;->a()V

    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/loc/a;->s:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/a;->y:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 358
    iput-object v2, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    goto :goto_2

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/loc/a;->b:Lcom/loc/a$b;

    invoke-virtual {v0, v2}, Lcom/loc/a$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/f;

    if-nez v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/f;

    invoke-virtual {v0, p1}, Lcom/loc/f;->a(Landroid/app/PendingIntent;)Z

    goto :goto_0
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/f;

    if-nez v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/loc/a;->e:Lcom/loc/f;

    invoke-virtual {v0, p1, p2}, Lcom/loc/f;->a(Landroid/app/PendingIntent;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 2

    .prologue
    .line 248
    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    :goto_1
    return-void

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    goto :goto_0

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    .line 245
    return-void
.end method

.method public startAssistantLocation()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/loc/a;->b:Lcom/loc/a$b;

    if-nez v0, :cond_0

    .line 548
    :goto_0
    return-void

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/loc/a;->b:Lcom/loc/a$b;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/loc/a$b;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public startLocation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz v0, :cond_1

    .line 274
    :goto_0
    iput-boolean v2, p0, Lcom/loc/a;->u:Z

    .line 283
    invoke-direct {p0}, Lcom/loc/a;->c()V

    .line 284
    sget-object v0, Lcom/loc/c;->a:[I

    iget-object v1, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 301
    :cond_0
    :goto_1
    return-void

    .line 269
    :cond_1
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    goto :goto_0

    .line 287
    :pswitch_0
    iget-object v0, p0, Lcom/loc/a;->c:Lcom/loc/g;

    invoke-virtual {v0}, Lcom/loc/g;->a()V

    .line 288
    iput-boolean v2, p0, Lcom/loc/a;->x:Z

    goto :goto_1

    .line 294
    :pswitch_1
    iget-boolean v0, p0, Lcom/loc/a;->x:Z

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/loc/a;->c:Lcom/loc/g;

    iget-object v1, p0, Lcom/loc/a;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/loc/g;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/a;->x:Z

    goto :goto_1

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public stopAssistantLocation()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/loc/a;->b:Lcom/loc/a$b;

    if-nez v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/loc/a;->b:Lcom/loc/a$b;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/loc/a$b;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public stopLocation()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 320
    invoke-virtual {p0}, Lcom/loc/a;->a()V

    .line 322
    iget-object v0, p0, Lcom/loc/a;->c:Lcom/loc/g;

    invoke-virtual {v0}, Lcom/loc/g;->a()V

    .line 324
    iput-boolean v1, p0, Lcom/loc/a;->x:Z

    .line 325
    iput-boolean v1, p0, Lcom/loc/a;->p:Z

    .line 326
    iput-boolean v1, p0, Lcom/loc/a;->t:Z

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/a;->u:Z

    .line 328
    iput-wide v2, p0, Lcom/loc/a;->n:J

    .line 329
    iput-wide v2, p0, Lcom/loc/a;->m:J

    .line 330
    iput v1, p0, Lcom/loc/a;->o:I

    .line 331
    iput v1, p0, Lcom/loc/a;->l:I

    .line 332
    return-void
.end method

.method public unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 858
    :goto_1
    return-void

    .line 852
    :cond_1
    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/loc/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 856
    :cond_2
    invoke-virtual {p0}, Lcom/loc/a;->stopLocation()V

    goto :goto_1
.end method
