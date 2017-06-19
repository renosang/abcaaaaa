.class public Lcom/loc/bu;
.super Ljava/lang/Object;
.source "AuthUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/bu$a;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/reflect/Method;

.field private static a:Landroid/content/Context;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Z

.field private static i:J

.field private static j:J

.field private static k:Z

.field private static l:I

.field private static m:Z

.field private static n:I

.field private static o:Z

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:I

.field private static s:J

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Landroid/content/SharedPreferences;

.field private static x:Landroid/content/SharedPreferences$Editor;

.field private static y:Landroid/content/SharedPreferences;

.field private static z:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "\u63d0\u793a\u4fe1\u606f"

    .line 46
    sput-object v0, Lcom/loc/bu;->b:Ljava/lang/String;

    const-string/jumbo v0, "\u786e\u8ba4"

    .line 47
    sput-object v0, Lcom/loc/bu;->c:Ljava/lang/String;

    const-string/jumbo v0, "\u53d6\u6d88"

    .line 48
    sput-object v0, Lcom/loc/bu;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 49
    sput-object v0, Lcom/loc/bu;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 50
    sput-object v0, Lcom/loc/bu;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 51
    sput-object v0, Lcom/loc/bu;->g:Ljava/lang/String;

    .line 61
    sput-boolean v1, Lcom/loc/bu;->h:Z

    .line 67
    sput-wide v4, Lcom/loc/bu;->i:J

    .line 72
    sput-wide v4, Lcom/loc/bu;->j:J

    .line 115
    sput-boolean v1, Lcom/loc/bu;->k:Z

    .line 120
    sput v1, Lcom/loc/bu;->l:I

    .line 156
    sput-boolean v1, Lcom/loc/bu;->m:Z

    .line 161
    sput v1, Lcom/loc/bu;->n:I

    .line 166
    sput-boolean v1, Lcom/loc/bu;->o:Z

    const-string/jumbo v0, "1"

    .line 204
    sput-object v0, Lcom/loc/bu;->p:Ljava/lang/String;

    const-string/jumbo v0, "1"

    .line 561
    sput-object v0, Lcom/loc/bu;->q:Ljava/lang/String;

    const/4 v0, -0x1

    .line 565
    sput v0, Lcom/loc/bu;->r:I

    .line 569
    sput-wide v4, Lcom/loc/bu;->s:J

    const-string/jumbo v0, "0"

    .line 632
    sput-object v0, Lcom/loc/bu;->v:Ljava/lang/String;

    .line 642
    sput-object v2, Lcom/loc/bu;->w:Landroid/content/SharedPreferences;

    .line 643
    sput-object v2, Lcom/loc/bu;->x:Landroid/content/SharedPreferences$Editor;

    .line 647
    sput-object v2, Lcom/loc/bu;->y:Landroid/content/SharedPreferences;

    .line 648
    sput-object v2, Lcom/loc/bu;->z:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 245
    if-eqz p0, :cond_1

    const-string/jumbo v0, ""

    .line 250
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 256
    :cond_0
    :goto_0
    return-object v0

    .line 246
    :cond_1
    return-object v0

    .line 250
    :cond_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    .line 254
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 777
    :try_start_0
    sget-object v0, Lcom/loc/bu;->y:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 781
    :goto_0
    sget-object v0, Lcom/loc/bu;->z:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 784
    :goto_1
    sget-object v0, Lcom/loc/bu;->z:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 785
    sget-object v0, Lcom/loc/bu;->z:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/loc/bu;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 792
    :goto_2
    return-void

    :cond_0
    const-string/jumbo v0, "pref"

    const/4 v1, 0x0

    .line 778
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/loc/bu;->y:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 791
    :catch_0
    move-exception v0

    .line 790
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 782
    :cond_1
    :try_start_1
    sget-object v0, Lcom/loc/bu;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/loc/bu;->z:Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 654
    :try_start_0
    sget-object v0, Lcom/loc/bu;->w:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 658
    :goto_0
    sget-object v0, Lcom/loc/bu;->x:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 661
    :goto_1
    sget-object v0, Lcom/loc/bu;->x:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "abc"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 662
    sget-object v0, Lcom/loc/bu;->x:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/loc/bu;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 669
    :goto_2
    return-void

    :cond_0
    const-string/jumbo v0, "abcd"

    const/4 v1, 0x0

    .line 655
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/loc/bu;->w:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 668
    :catch_0
    move-exception v0

    .line 667
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 659
    :cond_1
    :try_start_1
    sget-object v0, Lcom/loc/bu;->w:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/loc/bu;->x:Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .prologue
    .line 688
    if-eqz p0, :cond_0

    .line 691
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 707
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 709
    :goto_0
    return-void

    .line 689
    :cond_0
    return-void

    .line 693
    :cond_1
    :try_start_0
    sget-object v0, Lcom/loc/bu;->A:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 698
    :goto_1
    sget-object v0, Lcom/loc/bu;->A:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 705
    :catch_0
    move-exception v0

    .line 703
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 704
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_2
    :try_start_1
    const-class v0, Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "apply"

    const/4 v2, 0x0

    .line 695
    new-array v2, v2, [Ljava/lang/Class;

    .line 696
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/loc/bu;->A:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    const-class v0, Lcom/loc/bu;

    monitor-enter v0

    .line 639
    :try_start_0
    sput-object p0, Lcom/loc/bu;->v:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 640
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/loc/bu;->h:Z

    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const-class v2, Lcom/loc/bu;

    monitor-enter v2

    .line 30
    :try_start_0
    sput-object p0, Lcom/loc/bu;->a:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "2.3.0"

    .line 33
    invoke-static {v1}, Lcom/loc/e;->a(Ljava/lang/String;)Lcom/loc/v;

    move-result-object v1

    const-string/jumbo v3, "callamappro;fast;sdkupdate;sdkcoordinate;locate;opflag"

    .line 34
    invoke-static {p0, v1, v3}, Lcom/loc/p;->a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;)Lcom/loc/p$a;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 36
    if-nez v1, :cond_0

    :goto_0
    monitor-exit v2

    .line 43
    return v0

    .line 37
    :cond_0
    :try_start_2
    invoke-static {v1}, Lcom/loc/bu;->a(Lcom/loc/p$a;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    .line 40
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    .line 41
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static a(Lcom/loc/p$a;)Z
    .locals 12

    .prologue
    const-wide/32 v10, 0x36ee80

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/loc/p$a;->a:Lorg/json/JSONObject;

    .line 265
    if-nez v0, :cond_4

    .line 280
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/p$a;->b:Lorg/json/JSONObject;

    .line 283
    if-nez v0, :cond_5

    .line 312
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/loc/p$a;->e:Lorg/json/JSONObject;

    .line 313
    if-nez v3, :cond_9

    :goto_2
    const-string/jumbo v0, "2.3.0"

    .line 366
    invoke-static {v0}, Lcom/loc/e;->a(Ljava/lang/String;)Lcom/loc/v;

    move-result-object v0

    .line 368
    iget-object v3, p0, Lcom/loc/p$a;->g:Lcom/loc/p$a$c;

    .line 369
    if-nez v3, :cond_1d

    .line 385
    new-instance v3, Lcom/loc/ad;

    sget-object v4, Lcom/loc/bu;->a:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v0}, Lcom/loc/ad;-><init>(Landroid/content/Context;Lcom/loc/ae;Lcom/loc/v;)V

    .line 386
    invoke-virtual {v3}, Lcom/loc/ad;->a()V

    .line 392
    :goto_3
    iget-object v0, p0, Lcom/loc/p$a;->h:Lcom/loc/p$a$b;

    .line 393
    if-nez v0, :cond_20

    .line 423
    :cond_2
    :goto_4
    iget-object v3, p0, Lcom/loc/p$a;->c:Lorg/json/JSONObject;

    .line 424
    if-nez v3, :cond_21

    .line 505
    :cond_3
    :goto_5
    return v2

    :cond_4
    const-string/jumbo v3, "opflag"

    .line 269
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "opflag"

    .line 270
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bu;->p:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    :catch_0
    move-exception v0

    const-string/jumbo v2, "0"

    .line 501
    sput-object v2, Lcom/loc/bu;->v:Ljava/lang/String;

    .line 502
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 503
    return v1

    :cond_5
    :try_start_1
    const-string/jumbo v3, "callamapflag"

    .line 287
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    :goto_6
    const-string/jumbo v3, "count"

    .line 290
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    :goto_7
    const-string/jumbo v3, "nowtime"

    .line 293
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 296
    :goto_8
    sget v0, Lcom/loc/bu;->r:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    sget-wide v4, Lcom/loc/bu;->s:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 297
    sget-object v0, Lcom/loc/bu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bu;->e(Landroid/content/Context;)J

    move-result-wide v4

    .line 299
    sget-wide v6, Lcom/loc/bu;->s:J

    invoke-static {v6, v7, v4, v5}, Lcom/loc/bw;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    sget-object v0, Lcom/loc/bu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bu;->c(Landroid/content/Context;)V

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "callamapflag"

    .line 288
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/loc/bu;->q:Ljava/lang/String;

    goto :goto_6

    :cond_7
    const-string/jumbo v3, "count"

    .line 291
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/loc/bu;->r:I

    goto :goto_7

    :cond_8
    const-string/jumbo v3, "nowtime"

    .line 294
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lcom/loc/bu;->s:J

    goto :goto_8

    :cond_9
    const-string/jumbo v0, "f"

    .line 317
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_a
    :goto_9
    const-string/jumbo v0, "a"

    .line 336
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    :goto_a
    const-string/jumbo v0, "o"

    .line 340
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    :goto_b
    const-string/jumbo v0, "c"

    .line 343
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    :goto_c
    const-string/jumbo v0, "i"

    .line 346
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    :goto_d
    const-string/jumbo v0, "u"

    .line 349
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    :goto_e
    const-string/jumbo v0, "t"

    .line 352
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    :goto_f
    const-string/jumbo v0, ""

    .line 355
    sget-object v3, Lcom/loc/bu;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_b
    const-string/jumbo v0, ""

    sget-object v3, Lcom/loc/bu;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_c
    const-string/jumbo v0, "0"

    .line 356
    sput-object v0, Lcom/loc/bu;->v:Ljava/lang/String;

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v0, "f"

    .line 318
    invoke-static {v3, v0}, Lcom/loc/bu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bu;->v:Ljava/lang/String;

    const-string/jumbo v0, "1"

    .line 319
    sget-object v4, Lcom/loc/bu;->v:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "0"

    .line 333
    sput-object v0, Lcom/loc/bu;->v:Ljava/lang/String;

    goto :goto_9

    .line 320
    :cond_e
    sget-object v0, Lcom/loc/bu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bu;->b(Landroid/content/Context;)J

    move-result-wide v4

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 322
    sub-long v8, v6, v4

    cmp-long v0, v8, v10

    if-gtz v0, :cond_11

    move v0, v2

    :goto_10
    if-nez v0, :cond_f

    .line 323
    sget-object v0, Lcom/loc/bu;->a:Landroid/content/Context;

    invoke-static {v0, v6, v7}, Lcom/loc/bu;->a(Landroid/content/Context;J)V

    .line 325
    :cond_f
    cmp-long v0, v6, v4

    if-gtz v0, :cond_12

    move v0, v2

    :goto_11
    if-nez v0, :cond_10

    sub-long v8, v6, v4

    cmp-long v0, v8, v10

    if-ltz v0, :cond_13

    move v0, v2

    :goto_12
    if-nez v0, :cond_10

    const-string/jumbo v0, "0"

    .line 326
    sput-object v0, Lcom/loc/bu;->v:Ljava/lang/String;

    .line 328
    :cond_10
    cmp-long v0, v6, v4

    if-ltz v0, :cond_14

    move v0, v2

    :goto_13
    if-nez v0, :cond_a

    const-string/jumbo v0, "0"

    .line 329
    sput-object v0, Lcom/loc/bu;->v:Ljava/lang/String;

    .line 330
    sget-object v0, Lcom/loc/bu;->a:Landroid/content/Context;

    invoke-static {v0, v6, v7}, Lcom/loc/bu;->a(Landroid/content/Context;J)V

    goto/16 :goto_9

    :cond_11
    move v0, v1

    .line 322
    goto :goto_10

    :cond_12
    move v0, v1

    .line 325
    goto :goto_11

    :cond_13
    move v0, v1

    goto :goto_12

    :cond_14
    move v0, v1

    .line 328
    goto :goto_13

    :cond_15
    const-string/jumbo v0, "a"

    .line 338
    invoke-static {v3, v0}, Lcom/loc/bu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bu;->b:Ljava/lang/String;

    goto/16 :goto_a

    :cond_16
    const-string/jumbo v0, "o"

    .line 341
    invoke-static {v3, v0}, Lcom/loc/bu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bu;->c:Ljava/lang/String;

    goto/16 :goto_b

    :cond_17
    const-string/jumbo v0, "c"

    .line 344
    invoke-static {v3, v0}, Lcom/loc/bu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bu;->d:Ljava/lang/String;

    goto/16 :goto_c

    :cond_18
    const-string/jumbo v0, "i"

    .line 347
    invoke-static {v3, v0}, Lcom/loc/bu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bu;->e:Ljava/lang/String;

    goto/16 :goto_d

    :cond_19
    const-string/jumbo v0, "u"

    .line 350
    invoke-static {v3, v0}, Lcom/loc/bu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bu;->f:Ljava/lang/String;

    goto/16 :goto_e

    :cond_1a
    const-string/jumbo v0, "t"

    .line 353
    invoke-static {v3, v0}, Lcom/loc/bu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bu;->g:Ljava/lang/String;

    goto/16 :goto_f

    .line 355
    :cond_1b
    sget-object v0, Lcom/loc/bu;->e:Ljava/lang/String;

    if-eqz v0, :cond_b

    goto/16 :goto_2

    :cond_1c
    sget-object v0, Lcom/loc/bu;->f:Ljava/lang/String;

    if-eqz v0, :cond_c

    goto/16 :goto_2

    .line 370
    :cond_1d
    iget-object v4, v3, Lcom/loc/p$a$c;->b:Ljava/lang/String;

    .line 371
    iget-object v5, v3, Lcom/loc/p$a$c;->a:Ljava/lang/String;

    .line 372
    iget-object v3, v3, Lcom/loc/p$a$c;->c:Ljava/lang/String;

    .line 373
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 374
    :cond_1e
    new-instance v3, Lcom/loc/ad;

    sget-object v4, Lcom/loc/bu;->a:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v0}, Lcom/loc/ad;-><init>(Landroid/content/Context;Lcom/loc/ae;Lcom/loc/v;)V

    .line 375
    invoke-virtual {v3}, Lcom/loc/ad;->a()V

    goto/16 :goto_3

    .line 373
    :cond_1f
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 377
    new-instance v6, Lcom/loc/ae;

    invoke-direct {v6, v5, v4, v3}, Lcom/loc/ae;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v3, Lcom/loc/ad;

    sget-object v4, Lcom/loc/bu;->a:Landroid/content/Context;

    invoke-direct {v3, v4, v6, v0}, Lcom/loc/ad;-><init>(Landroid/content/Context;Lcom/loc/ae;Lcom/loc/v;)V

    .line 379
    invoke-virtual {v3}, Lcom/loc/ad;->a()V

    goto/16 :goto_3

    .line 394
    :cond_20
    iget-object v3, v0, Lcom/loc/p$a$b;->a:Ljava/lang/String;

    sput-object v3, Lcom/loc/bu;->t:Ljava/lang/String;

    .line 395
    iget-object v0, v0, Lcom/loc/p$a$b;->b:Ljava/lang/String;

    sput-object v0, Lcom/loc/bu;->u:Ljava/lang/String;

    .line 396
    sget-object v0, Lcom/loc/bu;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/loc/bu;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 401
    new-instance v0, Lcom/loc/u;

    sget-object v3, Lcom/loc/bu;->a:Landroid/content/Context;

    const-string/jumbo v4, "loc"

    sget-object v5, Lcom/loc/bu;->t:Ljava/lang/String;

    sget-object v6, Lcom/loc/bu;->u:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/loc/u;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0}, Lcom/loc/u;->a()V

    goto/16 :goto_4

    :cond_21
    const-string/jumbo v0, "fs"

    .line 435
    invoke-static {v3, v0}, Lcom/loc/bu;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/loc/bu$a;

    move-result-object v4

    .line 436
    if-nez v4, :cond_22

    :goto_14
    const-string/jumbo v0, "us"

    .line 456
    invoke-static {v3, v0}, Lcom/loc/bu;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/loc/bu$a;

    move-result-object v4

    .line 457
    if-nez v4, :cond_24

    :goto_15
    const-string/jumbo v0, "rs"

    .line 476
    invoke-static {v3, v0}, Lcom/loc/bu;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/loc/bu$a;

    move-result-object v3

    .line 477
    if-eqz v3, :cond_3

    .line 478
    iget-object v0, v3, Lcom/loc/bu$a;->c:Ljava/lang/String;

    const-string/jumbo v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    move v0, v1

    :goto_16
    sput-boolean v0, Lcom/loc/bu;->h:Z

    .line 479
    sget-boolean v0, Lcom/loc/bu;->h:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_28

    .line 483
    :goto_17
    :try_start_2
    iget-object v0, v3, Lcom/loc/bu$a;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    sput-wide v4, Lcom/loc/bu;->i:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5

    .line 489
    :catch_1
    move-exception v0

    goto/16 :goto_5

    .line 437
    :cond_22
    :try_start_3
    iget-object v0, v4, Lcom/loc/bu$a;->c:Ljava/lang/String;

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    move v0, v1

    :goto_18
    sput-boolean v0, Lcom/loc/bu;->k:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 439
    :try_start_4
    iget-object v0, v4, Lcom/loc/bu$a;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/loc/bu;->l:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_14

    .line 445
    :catch_2
    move-exception v0

    goto :goto_14

    :cond_23
    move v0, v2

    .line 437
    goto :goto_18

    .line 458
    :cond_24
    :try_start_5
    iget-object v0, v4, Lcom/loc/bu$a;->c:Ljava/lang/String;

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v1

    :goto_19
    sput-boolean v0, Lcom/loc/bu;->m:Z

    .line 459
    iget-object v0, v4, Lcom/loc/bu$a;->a:Ljava/lang/String;

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    move v0, v2

    :goto_1a
    sput-boolean v0, Lcom/loc/bu;->o:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 461
    :try_start_6
    iget-object v0, v4, Lcom/loc/bu$a;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/loc/bu;->n:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_15

    .line 467
    :catch_3
    move-exception v0

    goto :goto_15

    :cond_25
    move v0, v2

    .line 458
    goto :goto_19

    :cond_26
    move v0, v1

    .line 459
    goto :goto_1a

    :cond_27
    move v0, v2

    .line 478
    goto :goto_16

    .line 480
    :cond_28
    :try_start_7
    invoke-static {}, Lcom/loc/bw;->b()J

    move-result-wide v4

    sput-wide v4, Lcom/loc/bu;->j:J
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_17
.end method

.method public static b()J
    .locals 2

    .prologue
    .line 94
    sget-wide v0, Lcom/loc/bu;->i:J

    return-wide v0
.end method

.method private static b(Landroid/content/Context;)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    :try_start_0
    const-string/jumbo v0, "abcd"

    const/4 v1, 0x0

    .line 673
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "abc"

    const-wide/16 v2, 0x0

    .line 675
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 676
    return-wide v0

    :catch_0
    move-exception v0

    .line 681
    return-wide v4
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/loc/bu$a;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 518
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    move-object v1, v0

    .line 541
    :goto_1
    return-object v1

    .line 519
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 520
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 521
    if-eqz v2, :cond_0

    .line 522
    new-instance v1, Lcom/loc/bu$a;

    invoke-direct {v1}, Lcom/loc/bu$a;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v0, "b"

    .line 527
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    const-string/jumbo v0, "t"

    .line 530
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    const-string/jumbo v0, "st"

    .line 533
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "b"

    .line 528
    invoke-static {v2, v0}, Lcom/loc/bu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/bu$a;->a:Ljava/lang/String;

    goto :goto_2

    .line 540
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "t"

    .line 531
    invoke-static {v2, v0}, Lcom/loc/bu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/bu$a;->b:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string/jumbo v0, "st"

    .line 534
    invoke-static {v2, v0}, Lcom/loc/bu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/bu$a;->c:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 540
    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_1
.end method

.method public static c()J
    .locals 2

    .prologue
    .line 103
    sget-wide v0, Lcom/loc/bu;->j:J

    return-wide v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 720
    :try_start_0
    sget-object v0, Lcom/loc/bu;->y:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 724
    :goto_0
    sget-object v0, Lcom/loc/bu;->z:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    .line 727
    :goto_1
    sget-wide v0, Lcom/loc/bu;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 728
    sget-object v0, Lcom/loc/bu;->z:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "nowtime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 736
    :goto_2
    sget v0, Lcom/loc/bu;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 739
    sget-object v0, Lcom/loc/bu;->z:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 741
    :goto_3
    sget-object v0, Lcom/loc/bu;->z:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/loc/bu;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 748
    :goto_4
    return-void

    :cond_0
    const-string/jumbo v0, "pref"

    const/4 v1, 0x0

    .line 721
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/loc/bu;->y:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 747
    :catch_0
    move-exception v0

    .line 746
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 725
    :cond_1
    :try_start_1
    sget-object v0, Lcom/loc/bu;->y:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/loc/bu;->z:Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 731
    :cond_2
    :try_start_2
    sget-object v0, Lcom/loc/bu;->z:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "nowtime"

    sget-wide v2, Lcom/loc/bu;->s:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 734
    :catch_1
    move-exception v0

    .line 733
    :try_start_3
    sget-object v0, Lcom/loc/bu;->z:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "nowtime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 737
    :cond_3
    sget-object v0, Lcom/loc/bu;->z:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "count"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method

.method private static d(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 759
    :try_start_0
    sget-object v1, Lcom/loc/bu;->y:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 763
    :goto_0
    sget-object v1, Lcom/loc/bu;->y:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "count"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 766
    :goto_1
    return v0

    :cond_0
    const-string/jumbo v1, "pref"

    const/4 v2, 0x0

    .line 760
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/loc/bu;->y:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 765
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static d()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/loc/bu;->k:Z

    return v0
.end method

.method public static e()I
    .locals 1

    .prologue
    .line 143
    sget v0, Lcom/loc/bu;->l:I

    return v0
.end method

.method private static e(Landroid/content/Context;)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 803
    :try_start_0
    sget-object v2, Lcom/loc/bu;->y:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 807
    :goto_0
    sget-object v2, Lcom/loc/bu;->y:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "nowtime"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 811
    :goto_1
    return-wide v0

    :cond_0
    const-string/jumbo v2, "pref"

    const/4 v3, 0x0

    .line 804
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/loc/bu;->y:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 810
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 181
    sget-boolean v0, Lcom/loc/bu;->m:Z

    return v0
.end method

.method public static g()I
    .locals 1

    .prologue
    .line 190
    sget v0, Lcom/loc/bu;->n:I

    return v0
.end method

.method public static h()Z
    .locals 1

    .prologue
    .line 198
    sget-boolean v0, Lcom/loc/bu;->o:Z

    return v0
.end method

.method public static i()Z
    .locals 2

    .prologue
    const-string/jumbo v0, "1"

    .line 215
    sget-object v1, Lcom/loc/bu;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 216
    sput-boolean v0, Lcom/loc/az;->a:Z

    .line 217
    return v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lcom/loc/bu;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/loc/bu;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lcom/loc/bu;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcom/loc/bu;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/loc/bu;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/loc/bu;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static p()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "1"

    .line 580
    sget-object v1, Lcom/loc/bu;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 581
    if-eqz v0, :cond_1

    .line 585
    sget v0, Lcom/loc/bu;->r:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 586
    :cond_0
    return v5

    .line 582
    :cond_1
    return v4

    .line 585
    :cond_2
    sget-wide v0, Lcom/loc/bu;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 588
    sget-object v0, Lcom/loc/bu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bu;->e(Landroid/content/Context;)J

    move-result-wide v0

    .line 590
    sget-wide v2, Lcom/loc/bu;->s:J

    invoke-static {v2, v3, v0, v1}, Lcom/loc/bw;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 595
    sget-object v0, Lcom/loc/bu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bu;->d(Landroid/content/Context;)I

    move-result v0

    .line 596
    sget v1, Lcom/loc/bu;->r:I

    if-lt v0, v1, :cond_4

    .line 601
    return v4

    .line 591
    :cond_3
    sget-object v0, Lcom/loc/bu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bu;->c(Landroid/content/Context;)V

    .line 592
    sget-object v0, Lcom/loc/bu;->a:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/loc/bu;->a(Landroid/content/Context;I)V

    .line 593
    return v5

    .line 597
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 598
    sget-object v1, Lcom/loc/bu;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/loc/bu;->a(Landroid/content/Context;I)V

    .line 599
    return v5
.end method

.method public static declared-synchronized q()Z
    .locals 3

    .prologue
    const-class v1, Lcom/loc/bu;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "1"

    .line 635
    sget-object v2, Lcom/loc/bu;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
