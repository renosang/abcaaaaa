.class public final Lcom/loc/cy;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:J

.field private k:Lcom/loc/cx;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/loc/cy;->a:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/loc/cy;->b:Z

    const/16 v0, 0x4f6

    iput v0, p0, Lcom/loc/cy;->c:I

    const/16 v0, 0x136

    iput v0, p0, Lcom/loc/cy;->d:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/loc/cy;->e:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/loc/cy;->f:I

    iput v2, p0, Lcom/loc/cy;->g:I

    iput v1, p0, Lcom/loc/cy;->h:I

    iput v1, p0, Lcom/loc/cy;->i:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/cy;->j:J

    iput-object v3, p0, Lcom/loc/cy;->k:Lcom/loc/cx;

    iput-object p1, p0, Lcom/loc/cy;->a:Landroid/content/Context;

    return-void
.end method

.method private static a([BI)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    add-int v2, v0, p1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v3, v0, 0x3

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;)Lcom/loc/cy;
    .locals 15

    const-wide/32 v12, 0x5265c00

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/loc/cy;

    invoke-direct {v4, p0}, Lcom/loc/cy;-><init>(Landroid/content/Context;)V

    iput v3, v4, Lcom/loc/cy;->h:I

    iput v3, v4, Lcom/loc/cy;->i:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x1b77400

    add-long/2addr v6, v8

    div-long/2addr v6, v12

    mul-long/2addr v6, v12

    iput-wide v6, v4, Lcom/loc/cy;->j:J

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/cy;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "data_carrier_status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x20

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    if-nez v6, :cond_3

    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    return-object v4

    :cond_2
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v5, v1, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_3
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_3
    :try_start_5
    array-length v1, v6

    const/16 v7, 0x16

    if-lt v1, v7, :cond_0

    const/4 v1, 0x0

    aget-byte v1, v6, v1

    if-nez v1, :cond_4

    move v1, v3

    :goto_4
    iput-boolean v1, v4, Lcom/loc/cy;->b:Z

    const/4 v1, 0x1

    aget-byte v1, v6, v1

    mul-int/lit8 v1, v1, 0xa

    shl-int/lit8 v1, v1, 0xa

    iput v1, v4, Lcom/loc/cy;->c:I

    const/4 v1, 0x2

    aget-byte v1, v6, v1

    mul-int/lit8 v1, v1, 0xa

    shl-int/lit8 v1, v1, 0xa

    iput v1, v4, Lcom/loc/cy;->d:I

    const/4 v1, 0x3

    aget-byte v1, v6, v1

    iput v1, v4, Lcom/loc/cy;->e:I

    const/4 v1, 0x4

    aget-byte v1, v6, v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, v4, Lcom/loc/cy;->f:I

    const/4 v1, 0x5

    aget-byte v1, v6, v1

    iput v1, v4, Lcom/loc/cy;->g:I

    const/16 v1, 0xe

    invoke-static {v6, v1}, Lcom/loc/cy;->b([BI)J

    move-result-wide v8

    iget-wide v10, v4, Lcom/loc/cy;->j:J

    sub-long/2addr v10, v8

    cmp-long v1, v10, v12

    if-ltz v1, :cond_5

    move v1, v2

    :goto_5
    if-nez v1, :cond_0

    iput-wide v8, v4, Lcom/loc/cy;->j:J

    const/4 v1, 0x6

    invoke-static {v6, v1}, Lcom/loc/cy;->a([BI)I

    move-result v1

    iput v1, v4, Lcom/loc/cy;->h:I

    const/16 v1, 0xa

    invoke-static {v6, v1}, Lcom/loc/cy;->a([BI)I

    move-result v1

    iput v1, v4, Lcom/loc/cy;->i:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    :goto_6
    if-nez v1, :cond_6

    :goto_7
    throw v0

    :cond_4
    move v1, v2

    goto :goto_4

    :cond_5
    move v1, v3

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_6
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_3
.end method

.method private static a(J)[B
    .locals 8

    const/16 v6, 0x8

    new-array v1, v6, [B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v6, :cond_0

    return-object v1

    :cond_0
    shl-int/lit8 v2, v0, 0x3

    shr-long v2, p0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b([BI)J
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    int-to-long v0, v1

    return-wide v0

    :cond_0
    add-int/lit8 v2, v0, 0xe

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v3, v0, 0x3

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    :goto_0
    :try_start_0
    const-string/jumbo v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    :cond_0
    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/loc/ci;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/loc/ci;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private static c(I)[B
    .locals 4

    const/4 v3, 0x4

    new-array v1, v3, [B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    return-object v1

    :cond_0
    shl-int/lit8 v2, v0, 0x3

    shr-int v2, p0, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private g()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x5265c00

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b77400

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/loc/cy;->j:J

    sub-long v4, v2, v4

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    div-long/2addr v2, v6

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lcom/loc/cy;->j:J

    iput v1, p0, Lcom/loc/cy;->h:I

    iput v1, p0, Lcom/loc/cy;->i:I

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final a(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/loc/cy;->g()V

    if-ltz p1, :cond_0

    :goto_0
    iput p1, p0, Lcom/loc/cy;->h:I

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method protected final a(Lcom/loc/cx;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/loc/cy;->k:Lcom/loc/cx;

    return-void
.end method

.method protected final a()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/loc/cy;->g()V

    iget-object v0, p0, Lcom/loc/cy;->a:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/loc/cy;->b:Z

    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/loc/cy;->b:Z

    if-nez v0, :cond_6

    :cond_2
    return v2

    :cond_3
    iget-boolean v0, p0, Lcom/loc/cy;->b:Z

    if-nez v0, :cond_5

    :cond_4
    return v2

    :cond_5
    iget v0, p0, Lcom/loc/cy;->h:I

    iget v1, p0, Lcom/loc/cy;->c:I

    if-ge v0, v1, :cond_4

    return v3

    :cond_6
    iget v0, p0, Lcom/loc/cy;->i:I

    iget v1, p0, Lcom/loc/cy;->d:I

    if-ge v0, v1, :cond_2

    return v3
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "e"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    const-string/jumbo v0, "d"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    :goto_1
    const-string/jumbo v0, "u"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_7

    :cond_1
    :goto_2
    move v0, v1

    :goto_3
    :try_start_1
    invoke-direct {p0}, Lcom/loc/cy;->g()V

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/loc/cy;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/loc/cy;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "data_carrier_status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v4, p0, Lcom/loc/cy;->h:I

    invoke-static {v4}, Lcom/loc/cy;->c(I)[B

    move-result-object v4

    iget v5, p0, Lcom/loc/cy;->i:I

    invoke-static {v5}, Lcom/loc/cy;->c(I)[B

    move-result-object v5

    iget-wide v6, p0, Lcom/loc/cy;->j:J

    invoke-static {v6, v7}, Lcom/loc/cy;->a(J)[B

    move-result-object v6

    const/16 v7, 0x16

    new-array v7, v7, [B

    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/loc/cy;->b:Z

    if-nez v9, :cond_8

    :goto_4
    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v7, v8

    const/4 v1, 0x1

    iget v2, p0, Lcom/loc/cy;->c:I

    div-int/lit16 v2, v2, 0x2800

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/loc/cy;->d:I

    div-int/lit16 v2, v2, 0x2800

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/loc/cy;->e:I

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/loc/cy;->f:I

    div-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/loc/cy;->g:I

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/4 v1, 0x6

    const/4 v2, 0x0

    aget-byte v2, v4, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/4 v1, 0x7

    const/4 v2, 0x1

    aget-byte v2, v4, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/16 v1, 0x8

    const/4 v2, 0x2

    aget-byte v2, v4, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/16 v1, 0x9

    const/4 v2, 0x3

    aget-byte v2, v4, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/16 v1, 0xa

    const/4 v2, 0x0

    aget-byte v2, v5, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/16 v1, 0xb

    const/4 v2, 0x1

    aget-byte v2, v5, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/16 v1, 0xc

    const/4 v2, 0x2

    aget-byte v2, v5, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/16 v1, 0xd

    const/4 v2, 0x3

    aget-byte v2, v5, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/16 v1, 0xe

    const/4 v2, 0x0

    aget-byte v2, v6, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/16 v1, 0xf

    const/4 v2, 0x1

    aget-byte v2, v6, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/16 v1, 0x10

    const/4 v2, 0x2

    aget-byte v2, v6, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/16 v1, 0x11

    const/4 v2, 0x3

    aget-byte v2, v6, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/16 v1, 0x12

    const/4 v2, 0x4

    aget-byte v2, v6, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/16 v1, 0x13

    const/4 v2, 0x5

    aget-byte v2, v6, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/16 v1, 0x14

    const/4 v2, 0x6

    aget-byte v2, v6, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    const/16 v1, 0x15

    const/4 v2, 0x7

    aget-byte v2, v6, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v1

    invoke-virtual {v3, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_5
    return v0

    :cond_3
    :try_start_4
    const-string/jumbo v0, "e"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/loc/cy;->b:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_4
    move v0, v2

    goto :goto_6

    :cond_5
    const-string/jumbo v0, "d"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v5, v0, 0x7f

    mul-int/lit8 v5, v5, 0xa

    shl-int/lit8 v5, v5, 0xa

    iput v5, p0, Lcom/loc/cy;->c:I

    and-int/lit16 v5, v0, 0xf80

    shr-int/lit8 v5, v5, 0x7

    mul-int/lit8 v5, v5, 0xa

    shl-int/lit8 v5, v5, 0xa

    iput v5, p0, Lcom/loc/cy;->d:I

    const v5, 0x7f000

    and-int/2addr v5, v0

    shr-int/lit8 v5, v5, 0xc

    iput v5, p0, Lcom/loc/cy;->e:I

    const/high16 v5, 0x3f80000

    and-int/2addr v5, v0

    shr-int/lit8 v5, v5, 0x13

    mul-int/lit8 v5, v5, 0xa

    iput v5, p0, Lcom/loc/cy;->f:I

    const/high16 v5, 0x7c000000

    and-int/2addr v0, v5

    shr-int/lit8 v0, v0, 0x1a

    iput v0, p0, Lcom/loc/cy;->g:I

    iget v0, p0, Lcom/loc/cy;->g:I

    const/16 v5, 0x1f

    if-eq v0, v5, :cond_6

    :goto_7
    iget-object v0, p0, Lcom/loc/cy;->k:Lcom/loc/cx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cy;->k:Lcom/loc/cx;

    invoke-virtual {v0}, Lcom/loc/cx;->a()V

    goto/16 :goto_1

    :cond_6
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/loc/cy;->g:I

    goto :goto_7

    :cond_7
    const-string/jumbo v0, "u"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto/16 :goto_3

    :cond_8
    move v1, v2

    goto/16 :goto_4

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v1, v4

    :goto_8
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v3, v4

    :goto_9
    if-nez v3, :cond_9

    :goto_a
    throw v0

    :cond_9
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v1

    move-object v1, v3

    goto :goto_8
.end method

.method protected final b()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/loc/cy;->e:I

    return v0
.end method

.method protected final b(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/loc/cy;->g()V

    if-ltz p1, :cond_0

    :goto_0
    iput p1, p0, Lcom/loc/cy;->i:I

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method protected final c()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/loc/cy;->f:I

    return v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/loc/cy;->g:I

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/loc/cy;->g()V

    iget v0, p0, Lcom/loc/cy;->h:I

    return v0
.end method

.method protected final f()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/loc/cy;->g()V

    iget v0, p0, Lcom/loc/cy;->i:I

    return v0
.end method
