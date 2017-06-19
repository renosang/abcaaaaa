.class public Lcom/loc/ad;
.super Ljava/lang/Thread;
.source "DexDownLoad.java"

# interfaces
.implements Lcom/loc/aq$a;


# instance fields
.field private a:Lcom/loc/ae;

.field private b:Lcom/loc/aq;

.field private c:Lcom/loc/v;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/RandomAccessFile;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/ae;Lcom/loc/v;)V
    .locals 3

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 80
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    .line 81
    iput-object p3, p0, Lcom/loc/ad;->c:Lcom/loc/v;

    .line 82
    if-eqz p2, :cond_0

    .line 94
    iput-object p2, p0, Lcom/loc/ad;->a:Lcom/loc/ae;

    .line 96
    new-instance v0, Lcom/loc/aq;

    new-instance v1, Lcom/loc/ag;

    iget-object v2, p0, Lcom/loc/ad;->a:Lcom/loc/ae;

    invoke-direct {v1, v2}, Lcom/loc/ag;-><init>(Lcom/loc/ae;)V

    invoke-direct {v0, v1}, Lcom/loc/aq;-><init>(Lcom/loc/at;)V

    iput-object v0, p0, Lcom/loc/ad;->b:Lcom/loc/aq;

    .line 99
    iget-object v0, p0, Lcom/loc/ad;->a:Lcom/loc/ae;

    invoke-virtual {v0}, Lcom/loc/ae;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    array-length v1, v0

    .line 102
    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/loc/ad;->f:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/loc/ad;->f:Ljava/lang/String;

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 106
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/loc/ad;->h:Ljava/lang/String;

    .line 108
    invoke-virtual {p2}, Lcom/loc/ae;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/ad;->i:Ljava/lang/String;

    const/4 v1, 0x1

    .line 110
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/loc/ad;->j:Ljava/lang/String;

    const/4 v1, 0x3

    .line 112
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/loc/ad;->l:I

    const/4 v1, 0x4

    .line 114
    aget-object v0, v0, v1

    const-string/jumbo v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/loc/ad;->m:I

    .line 117
    invoke-virtual {p2}, Lcom/loc/ae;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ad;->k:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/loc/ad;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/loc/ah;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ad;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 92
    :cond_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 413
    new-instance v2, Lcom/loc/aa;

    iget-object v1, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    invoke-static {}, Lcom/loc/ak;->c()Lcom/loc/ak;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/loc/aa;-><init>(Landroid/content/Context;Lcom/loc/z;)V

    const-string/jumbo v1, "copy"

    .line 416
    invoke-static {p1, v1}, Lcom/loc/al;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/loc/al;

    invoke-direct {v3}, Lcom/loc/al;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/loc/aa;->c(Ljava/lang/String;Lcom/loc/ab;)Ljava/util/List;

    move-result-object v3

    .line 420
    invoke-static {v3}, Lcom/loc/ah;->a(Ljava/util/List;)V

    .line 422
    if-nez v3, :cond_1

    .line 432
    :cond_0
    return-void

    .line 422
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 423
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    .line 425
    :goto_0
    if-ge v1, v4, :cond_0

    .line 426
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/am;

    .line 427
    iget-object v5, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/loc/am;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/loc/ah;->a(Landroid/content/Context;Lcom/loc/aa;Ljava/lang/String;)V

    .line 425
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 355
    invoke-static {p1}, Lcom/loc/q;->h(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private a(Lcom/loc/aa;Lcom/loc/am;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "errorstatus"

    .line 175
    invoke-virtual {p2}, Lcom/loc/am;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/ad;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    invoke-static {p3, p4}, Lcom/loc/ah;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3, p4, p5}, Lcom/loc/al;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/loc/al;

    invoke-direct {v1}, Lcom/loc/al;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/loc/aa;->c(Ljava/lang/String;Lcom/loc/ab;)Ljava/util/List;

    move-result-object v0

    .line 212
    if-nez v0, :cond_4

    .line 220
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loc/ad;->c:Lcom/loc/v;

    invoke-virtual {v0}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/loc/ah;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 224
    new-instance v0, Lcom/loc/am$a;

    move-object v2, p6

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/loc/am$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "usedex"

    invoke-virtual {v0, v1}, Lcom/loc/am$a;->a(Ljava/lang/String;)Lcom/loc/am$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/am$a;->a()Lcom/loc/am;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/ad;->c:Lcom/loc/v;

    iget-object v3, p0, Lcom/loc/ad;->d:Ljava/lang/String;

    invoke-static {v1, p1, v2, v0, v3}, Lcom/loc/ah;->a(Landroid/content/Context;Lcom/loc/aa;Lcom/loc/v;Lcom/loc/am;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/ad;->c:Lcom/loc/v;

    iget-object v2, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/ad;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/loc/ad;->c:Lcom/loc/v;

    invoke-virtual {v4}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/loc/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/ah;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/loc/ai;->b(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 257
    :goto_0
    return v6

    .line 178
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/ad;->c:Lcom/loc/v;

    invoke-virtual {v2}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/ad;->c:Lcom/loc/v;

    invoke-virtual {v3}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/loc/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    :goto_1
    return v6

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/ad;->c:Lcom/loc/v;

    invoke-static {v0, p1, v1}, Lcom/loc/ah;->a(Landroid/content/Context;Lcom/loc/aa;Lcom/loc/v;)Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/ad;->c:Lcom/loc/v;

    iget-object v2, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/ad;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/ad;->c:Lcom/loc/v;

    invoke-virtual {v5}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/loc/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/ah;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/loc/ai;->b(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_1

    .line 200
    :cond_3
    return v2

    .line 212
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 213
    return v6

    .line 256
    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    .line 248
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 256
    :catch_2
    move-exception v0

    .line 254
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 331
    iget-object v1, p0, Lcom/loc/ad;->c:Lcom/loc/v;

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/loc/ad;->c:Lcom/loc/v;

    invoke-virtual {v1}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    return v0

    .line 334
    :cond_2
    iget-object v1, p0, Lcom/loc/ad;->c:Lcom/loc/v;

    invoke-virtual {v1}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 275
    new-instance v1, Lcom/loc/aa;

    iget-object v0, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    invoke-static {}, Lcom/loc/ak;->c()Lcom/loc/ak;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/loc/aa;-><init>(Landroid/content/Context;Lcom/loc/z;)V

    :try_start_0
    const-string/jumbo v0, "usedex"

    .line 279
    invoke-static {p3, v0}, Lcom/loc/al;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/loc/al;

    invoke-direct {v2}, Lcom/loc/al;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/loc/aa;->c(Ljava/lang/String;Lcom/loc/ab;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 283
    if-nez v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    invoke-static {v1, p1}, Lcom/loc/ah$a;->a(Lcom/loc/aa;Ljava/lang/String;)Lcom/loc/am;

    move-result-object v2

    .line 310
    if-nez v2, :cond_2

    .line 318
    return v3

    .line 283
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 284
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/am;

    .line 285
    invoke-virtual {v0}, Lcom/loc/am;->e()Ljava/lang/String;

    move-result-object v0

    .line 287
    iget-object v2, p0, Lcom/loc/ad;->j:Ljava/lang/String;

    .line 288
    invoke-static {v0, v2}, Lcom/loc/an;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-lez v0, :cond_0

    .line 289
    const/4 v0, 0x1

    return v0

    .line 299
    :catch_0
    move-exception v0

    .line 298
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p5

    .line 313
    invoke-direct/range {v0 .. v6}, Lcom/loc/ad;->a(Lcom/loc/aa;Lcom/loc/am;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 344
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/loc/ad;->m:I

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/loc/ad;->l:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/loc/ad;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/ad;->i:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/loc/ad;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 398
    :cond_0
    return v6

    .line 391
    :cond_1
    iget-object v1, p0, Lcom/loc/ad;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/ad;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/ad;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/loc/ad;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/ad;->k:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/loc/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/loc/ad;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/loc/ad;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/loc/ad;->c:Lcom/loc/v;

    invoke-virtual {v0}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/ad;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    const/4 v0, 0x1

    return v0

    .line 398
    :catch_0
    move-exception v0

    .line 400
    invoke-static {v0}, Lcom/loc/ah;->a(Ljava/lang/Throwable;)V

    .line 401
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 402
    return v6
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/loc/ad;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/loc/ad;->e:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 488
    :try_start_1
    iget-object v0, p0, Lcom/loc/ad;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 503
    :goto_0
    return-void

    .line 484
    :cond_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 493
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 502
    :catch_1
    move-exception v0

    .line 501
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a([BJ)V
    .locals 4

    .prologue
    .line 440
    :try_start_0
    iget-object v0, p0, Lcom/loc/ad;->e:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 458
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/ad;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 459
    iget-object v0, p0, Lcom/loc/ad;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 476
    :goto_1
    return-void

    .line 441
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/ad;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 443
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    :goto_2
    :try_start_3
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loc/ad;->e:Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 453
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 474
    :catch_1
    move-exception v0

    .line 473
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 444
    :cond_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    .line 467
    :catch_2
    move-exception v0

    .line 465
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method public b()V
    .locals 0

    .prologue
    .line 613
    return-void
.end method

.method public c()V
    .locals 7

    .prologue
    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/loc/ad;->e:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 514
    :try_start_1
    iget-object v0, p0, Lcom/loc/ad;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 524
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/ad;->a:Lcom/loc/ae;

    invoke-virtual {v0}, Lcom/loc/ae;->b()Ljava/lang/String;

    move-result-object v2

    .line 533
    iget-object v0, p0, Lcom/loc/ad;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/loc/ah;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-nez v0, :cond_1

    .line 588
    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/ad;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    .line 604
    :goto_1
    return-void

    .line 511
    :cond_0
    return-void

    .line 521
    :catch_0
    move-exception v0

    .line 520
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 603
    :catch_1
    move-exception v0

    .line 602
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 534
    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/loc/ad;->a:Lcom/loc/ae;

    invoke-virtual {v0}, Lcom/loc/ae;->c()Ljava/lang/String;

    move-result-object v4

    .line 536
    new-instance v6, Lcom/loc/aa;

    iget-object v0, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    invoke-static {}, Lcom/loc/ak;->c()Lcom/loc/ak;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/loc/aa;-><init>(Landroid/content/Context;Lcom/loc/z;)V

    .line 538
    new-instance v0, Lcom/loc/am$a;

    iget-object v1, p0, Lcom/loc/ad;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/ad;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/ad;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/loc/am$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "copy"

    invoke-virtual {v0, v1}, Lcom/loc/am$a;->a(Ljava/lang/String;)Lcom/loc/am$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/am$a;->a()Lcom/loc/am;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/loc/ad;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/ad;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/ad;->j:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5}, Lcom/loc/al;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/loc/ah$a;->a(Lcom/loc/aa;Lcom/loc/am;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 549
    :try_start_6
    new-instance v0, Lcom/loc/am$a;

    iget-object v1, p0, Lcom/loc/ad;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/ad;->c:Lcom/loc/v;

    invoke-virtual {v3}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/loc/ah;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/loc/ad;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/ad;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/loc/am$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "usedex"

    invoke-virtual {v0, v1}, Lcom/loc/am$a;->a(Ljava/lang/String;)Lcom/loc/am$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/am$a;->a()Lcom/loc/am;

    move-result-object v0

    .line 555
    iget-object v1, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/ad;->c:Lcom/loc/v;

    iget-object v3, p0, Lcom/loc/ad;->d:Ljava/lang/String;

    invoke-static {v1, v6, v2, v0, v3}, Lcom/loc/ah;->a(Landroid/content/Context;Lcom/loc/aa;Lcom/loc/v;Lcom/loc/am;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/ad;->c:Lcom/loc/v;

    iget-object v2, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/ad;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/loc/ad;->c:Lcom/loc/v;

    invoke-virtual {v4}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/loc/ah;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/ah;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/loc/ad;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/loc/ai;->b(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 585
    :catch_2
    move-exception v0

    .line 569
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 585
    :catch_3
    move-exception v0

    .line 576
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 585
    :catch_4
    move-exception v0

    .line 583
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 595
    :catch_5
    move-exception v0

    .line 594
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1
.end method

.method public run()V
    .locals 1

    .prologue
    .line 146
    :try_start_0
    invoke-direct {p0}, Lcom/loc/ad;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/loc/ad;->b:Lcom/loc/aq;

    invoke-virtual {v0, p0}, Lcom/loc/aq;->a(Lcom/loc/aq$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
