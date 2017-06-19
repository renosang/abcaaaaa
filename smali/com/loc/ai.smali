.class Lcom/loc/ai;
.super Ljava/lang/ClassLoader;
.source "DynamicClassLoader.java"


# static fields
.field private static c:Lcom/loc/ai;


# instance fields
.field volatile a:Z

.field private final b:Landroid/content/Context;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private e:Ldalvik/system/DexFile;

.field private f:Ljava/lang/String;

.field private g:Lcom/loc/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/loc/ai;->c:Lcom/loc/ai;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 482
    invoke-direct {p0, p2}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loc/ai;->d:Ljava/util/Map;

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/loc/ai;->e:Ldalvik/system/DexFile;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/ai;->a:Z

    .line 483
    iput-object p1, p0, Lcom/loc/ai;->b:Landroid/content/Context;

    .line 485
    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/loc/ai;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-class v1, Lcom/loc/ai;

    monitor-enter v1

    .line 131
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 138
    return-object v3

    .line 131
    :cond_1
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-static {p0, p1}, Lcom/loc/aj;->a(Landroid/content/Context;Lcom/loc/v;)Lcom/loc/aj;

    .line 142
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    sget-object v2, Lcom/loc/ai;->c:Lcom/loc/ai;

    if-eqz v2, :cond_3

    .line 199
    :goto_0
    sget-object v0, Lcom/loc/ai;->c:Lcom/loc/ai;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    .line 145
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/loc/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 148
    return-object v3

    .line 151
    :cond_3
    :try_start_3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    :try_start_4
    new-instance v2, Lcom/loc/ai;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p5}, Lcom/loc/ai;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    sput-object v2, Lcom/loc/ai;->c:Lcom/loc/ai;

    .line 155
    sget-object v2, Lcom/loc/ai;->c:Lcom/loc/ai;

    iput-object p1, v2, Lcom/loc/ai;->g:Lcom/loc/v;

    .line 157
    sget-object v2, Lcom/loc/ai;->c:Lcom/loc/ai;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p2, v0}, Lcom/loc/ai;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    :goto_1
    :try_start_5
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 183
    new-instance v0, Lcom/loc/ai$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/loc/ai$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/loc/ai$1;->start()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 174
    :catch_0
    move-exception v0

    .line 173
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 322
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 324
    :try_start_0
    new-instance v0, Lcom/loc/aa;

    invoke-static {}, Lcom/loc/ak;->c()Lcom/loc/ak;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/loc/aa;-><init>(Landroid/content/Context;Lcom/loc/z;)V

    .line 328
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/loc/ai;->a(Lcom/loc/aa;Ljava/lang/String;)V

    .line 332
    iget-object v2, p0, Lcom/loc/ai;->g:Lcom/loc/v;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/loc/ai;->a(Lcom/loc/aa;Lcom/loc/v;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 374
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-direct {p0, p2, v1}, Lcom/loc/ai;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-object v1, Lcom/loc/ai;->c:Lcom/loc/ai;

    iget-object v4, p0, Lcom/loc/ai;->f:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v4, v0}, Lcom/loc/ai;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/loc/aa;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :cond_1
    :goto_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 450
    return-void

    .line 342
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/loc/ai;->a:Z

    .line 344
    iget-object v2, p0, Lcom/loc/ai;->b:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/loc/ah;->b(Landroid/content/Context;Lcom/loc/aa;Ljava/lang/String;)V

    .line 347
    iget-object v2, p0, Lcom/loc/ai;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/ai;->g:Lcom/loc/v;

    invoke-static {v2, v0, v3}, Lcom/loc/ah;->a(Landroid/content/Context;Lcom/loc/aa;Lcom/loc/v;)Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 353
    iput-object v2, p0, Lcom/loc/ai;->f:Ljava/lang/String;

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/loc/ai;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/loc/ai;->a:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 439
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 380
    :cond_3
    return-void

    .line 389
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/loc/ai;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v5}, Lcom/loc/ai;->a(Lcom/loc/aa;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 394
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-direct {p0, p2, v1}, Lcom/loc/ai;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/loc/ai;->f:Ljava/lang/String;

    invoke-direct {p0, v3, v2, v1, v0}, Lcom/loc/ai;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/loc/aa;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method private a(Lcom/loc/aa;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 312
    invoke-static {p1, p2}, Lcom/loc/ah$a;->a(Lcom/loc/aa;Ljava/lang/String;)Lcom/loc/am;

    move-result-object v0

    .line 314
    if-nez v0, :cond_0

    .line 318
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-virtual {v0}, Lcom/loc/am;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ai;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/ai;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/loc/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/loc/aa;)V
    .locals 6

    .prologue
    .line 454
    iget-object v0, p0, Lcom/loc/ai;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-static {p2}, Lcom/loc/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 456
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 457
    iget-object v0, p0, Lcom/loc/ai;->g:Lcom/loc/v;

    invoke-virtual {v0}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v3

    .line 458
    iget-object v0, p0, Lcom/loc/ai;->g:Lcom/loc/v;

    invoke-virtual {v0}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v4

    .line 465
    new-instance v0, Lcom/loc/am$a;

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/loc/am$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "useodex"

    invoke-virtual {v0, v2}, Lcom/loc/am$a;->a(Ljava/lang/String;)Lcom/loc/am$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/am$a;->a()Lcom/loc/am;

    move-result-object v0

    .line 468
    invoke-static {v1}, Lcom/loc/al;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v0, v1}, Lcom/loc/ah$a;->a(Lcom/loc/aa;Lcom/loc/am;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/loc/ai;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 95
    invoke-direct {p0}, Lcom/loc/ai;->d()V

    const/4 v0, 0x0

    .line 96
    invoke-static {p1, p2, v0}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ai;->e:Ldalvik/system/DexFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Lcom/loc/aa;Lcom/loc/v;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p2}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/ah;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3, p2}, Lcom/loc/ah;->a(Lcom/loc/aa;Ljava/lang/String;Ljava/lang/String;Lcom/loc/v;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/loc/aa;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/loc/ai;->b:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/loc/ah;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    iget-object v0, p0, Lcom/loc/ai;->g:Lcom/loc/v;

    invoke-static {p1, p2, v1, v0}, Lcom/loc/ah;->a(Lcom/loc/aa;Ljava/lang/String;Ljava/lang/String;Lcom/loc/v;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-static {p1, p2}, Lcom/loc/ah$a;->a(Lcom/loc/aa;Ljava/lang/String;)Lcom/loc/am;

    move-result-object v0

    .line 292
    if-nez v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/loc/ai;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    :goto_0
    return v6

    .line 287
    :cond_0
    return v6

    .line 293
    :cond_1
    return v2

    .line 296
    :cond_2
    new-instance v0, Lcom/loc/am$a;

    invoke-static {v1}, Lcom/loc/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/loc/ai;->g:Lcom/loc/v;

    invoke-virtual {v1}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/loc/ai;->g:Lcom/loc/v;

    invoke-virtual {v1}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v4

    move-object v1, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/loc/am$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "useodex"

    invoke-virtual {v0, v1}, Lcom/loc/am$a;->a(Ljava/lang/String;)Lcom/loc/am$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/am$a;->a()Lcom/loc/am;

    move-result-object v0

    .line 301
    invoke-static {p2}, Lcom/loc/al;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/loc/ah$a;->a(Lcom/loc/aa;Lcom/loc/am;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b()Lcom/loc/ai;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/loc/ai;->c:Lcom/loc/ai;

    return-object v0
.end method

.method static declared-synchronized b(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 5

    .prologue
    const-class v1, Lcom/loc/ai;

    monitor-enter v1

    .line 217
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 218
    return-void

    .line 217
    :cond_1
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-static {p0, p1}, Lcom/loc/aj;->a(Landroid/content/Context;Lcom/loc/v;)Lcom/loc/aj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    sget-object v2, Lcom/loc/ai;->c:Lcom/loc/ai;

    if-nez v2, :cond_3

    .line 232
    :goto_0
    new-instance v2, Lcom/loc/ai;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p5}, Lcom/loc/ai;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    sput-object v2, Lcom/loc/ai;->c:Lcom/loc/ai;

    .line 234
    sget-object v2, Lcom/loc/ai;->c:Lcom/loc/ai;

    iput-object p1, v2, Lcom/loc/ai;->g:Lcom/loc/v;

    .line 237
    sget-object v2, Lcom/loc/ai;->c:Lcom/loc/ai;

    invoke-direct {v2, p0, p2, p3}, Lcom/loc/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sget-object v2, Lcom/loc/ai;->c:Lcom/loc/ai;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ah;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p2, v0}, Lcom/loc/ai;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit v1

    .line 261
    return-void

    .line 224
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/loc/ah;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    .line 226
    return-void

    .line 230
    :cond_3
    :try_start_4
    sget-object v2, Lcom/loc/ai;->c:Lcom/loc/ai;

    invoke-direct {v2}, Lcom/loc/ai;->c()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 258
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/loc/ai;->d()V

    .line 68
    iget-object v0, p0, Lcom/loc/ai;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 69
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/loc/ai;->e:Ldalvik/system/DexFile;

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 74
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/ai;->e:Ldalvik/system/DexFile;

    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 87
    :catch_1
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/loc/ai;->e:Ldalvik/system/DexFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/loc/ai;->e:Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/loc/ai;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 509
    if-nez v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/loc/ai;->e:Ldalvik/system/DexFile;

    invoke-virtual {v0, p1, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lcom/loc/ai;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    if-eqz v0, :cond_2

    .line 517
    return-object v0

    .line 502
    :cond_0
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :catch_0
    move-exception v0

    .line 523
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 524
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_1
    return-object v0

    .line 515
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method
