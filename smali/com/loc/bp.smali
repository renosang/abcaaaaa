.class public Lcom/loc/bp;
.super Ljava/lang/Object;
.source "LocNetManager.java"


# static fields
.field private static e:Lcom/loc/bp;


# instance fields
.field a:Lcom/loc/v;

.field b:Ljava/lang/String;

.field c:Lcom/loc/ap;

.field d:Lcom/loc/aq;

.field private f:J

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-object v0, Lcom/loc/bp;->e:Lcom/loc/bp;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/loc/bp;->a:Lcom/loc/v;

    .line 38
    iput-object v0, p0, Lcom/loc/bp;->b:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/loc/bp;->c:Lcom/loc/ap;

    .line 40
    iput-object v0, p0, Lcom/loc/bp;->d:Lcom/loc/aq;

    const-wide/16 v0, 0x0

    .line 41
    iput-wide v0, p0, Lcom/loc/bp;->f:J

    .line 84
    sget v0, Lcom/loc/e;->j:I

    iput v0, p0, Lcom/loc/bp;->g:I

    .line 85
    sget v0, Lcom/loc/e;->j:I

    iput v0, p0, Lcom/loc/bp;->h:I

    .line 48
    :try_start_0
    new-instance v0, Lcom/loc/v$a;

    const-string/jumbo v1, "loc"

    const-string/jumbo v2, "2.3.0"

    const-string/jumbo v3, "AMAP_Location_SDK_Android 2.3.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/loc/v$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/e;->b()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/v$a;->a([Ljava/lang/String;)Lcom/loc/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/v$a;->a()Lcom/loc/v;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bp;->a:Lcom/loc/v;
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    iget-object v1, p0, Lcom/loc/bp;->a:Lcom/loc/v;

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Lcom/loc/o;->a(Landroid/content/Context;Lcom/loc/v;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bp;->b:Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/loc/ap;->a()Lcom/loc/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bp;->c:Lcom/loc/ap;

    .line 68
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Lcom/loc/l;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/net/NetworkInfo;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 280
    if-eqz p0, :cond_0

    .line 282
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 289
    :cond_0
    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/loc/bp;
    .locals 2

    .prologue
    const-class v1, Lcom/loc/bp;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcom/loc/bp;->e:Lcom/loc/bp;

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    sget-object v0, Lcom/loc/bp;->e:Lcom/loc/bp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 78
    :cond_0
    :try_start_1
    new-instance v0, Lcom/loc/bp;

    invoke-direct {v0, p0}, Lcom/loc/bp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/loc/bp;->e:Lcom/loc/bp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a([BLandroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 222
    invoke-static {p2}, Lcom/loc/bw;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 224
    invoke-static {v0}, Lcom/loc/bp;->a(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v2, -0x1

    .line 225
    if-eq v0, v2, :cond_0

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 232
    new-instance v2, Lcom/loc/bq;

    invoke-direct {v2}, Lcom/loc/bq;-><init>()V

    .line 233
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v4, "application/x-www-form-urlencoded"

    .line 234
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Connection"

    const-string/jumbo v4, "Keep-Alive"

    .line 236
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    if-nez p4, :cond_1

    .line 243
    :goto_0
    invoke-virtual {v2, v0}, Lcom/loc/bq;->a(Ljava/util/Map;)V

    .line 244
    invoke-virtual {v2, p3}, Lcom/loc/bq;->a(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v2, p1}, Lcom/loc/bq;->a([B)V

    .line 246
    invoke-static {p2}, Lcom/loc/t;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/loc/bq;->a(Ljava/net/Proxy;)V

    .line 247
    sget v0, Lcom/loc/e;->j:I

    invoke-virtual {v2, v0}, Lcom/loc/bq;->a(I)V

    .line 248
    sget v0, Lcom/loc/e;->j:I

    invoke-virtual {v2, v0}, Lcom/loc/bq;->b(I)V

    .line 256
    if-nez p4, :cond_2

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/loc/bp;->c:Lcom/loc/ap;

    invoke-virtual {v0, v2}, Lcom/loc/ap;->b(Lcom/loc/at;)[B

    move-result-object v0

    move-object v2, v0

    .line 261
    :goto_1
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 271
    :goto_2
    return-object v0

    .line 226
    :cond_0
    return-object v1

    :cond_1
    const-string/jumbo v3, "Accept-Encoding"

    const-string/jumbo v4, "gzip"

    .line 238
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "User-Agent"

    const-string/jumbo v4, "AMAP_Location_SDK_Android 2.3.0"

    .line 239
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "platinfo"

    .line 240
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "platform=Android&sdkversion=%s&product=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "2.3.0"

    aput-object v7, v6, v8

    const/4 v7, 0x1

    const-string/jumbo v8, "loc"

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "logversion"

    const-string/jumbo v4, "2.1"

    .line 241
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 257
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/loc/bp;->c:Lcom/loc/ap;

    invoke-virtual {v0, v2}, Lcom/loc/ap;->a(Lcom/loc/at;)[B
    :try_end_1
    .catch Lcom/loc/l; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 266
    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Lcom/loc/l;->printStackTrace()V

    move-object v0, v1

    .line 266
    goto :goto_2

    :catch_1
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_2
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;[B)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 388
    :try_start_0
    invoke-static {p1}, Lcom/loc/bw;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 389
    invoke-static {v1}, Lcom/loc/bp;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    const/4 v2, -0x1

    .line 390
    if-eq v1, v2, :cond_0

    .line 394
    new-instance v1, Lcom/loc/bq;

    invoke-direct {v1}, Lcom/loc/bq;-><init>()V

    .line 395
    invoke-virtual {v1, p3}, Lcom/loc/bq;->a(Ljava/util/Map;)V

    .line 396
    invoke-virtual {v1, p2}, Lcom/loc/bq;->a(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v1, p4}, Lcom/loc/bq;->a([B)V

    .line 398
    invoke-static {p1}, Lcom/loc/t;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/loc/bq;->a(Ljava/net/Proxy;)V

    .line 399
    sget v2, Lcom/loc/e;->j:I

    invoke-virtual {v1, v2}, Lcom/loc/bq;->a(I)V

    .line 400
    sget v2, Lcom/loc/e;->j:I

    invoke-virtual {v1, v2}, Lcom/loc/bq;->b(I)V

    .line 401
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 404
    :goto_0
    iget-object v2, p0, Lcom/loc/bp;->c:Lcom/loc/ap;

    invoke-virtual {v2, v1, v0}, Lcom/loc/ap;->a(Lcom/loc/at;Z)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 405
    return-object v0

    .line 391
    :cond_0
    return-object v4

    :cond_1
    const/4 v0, 0x1

    .line 402
    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 412
    return-object v4
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/loc/bt;Ljava/lang/String;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string/jumbo v0, "httptimeout"

    .line 165
    invoke-static {p2, v0}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    invoke-static {p1}, Lcom/loc/bw;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/loc/bp;->a(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v1, -0x1

    .line 177
    if-eq v0, v1, :cond_1

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 181
    new-instance v1, Lcom/loc/bq;

    invoke-direct {v1}, Lcom/loc/bq;-><init>()V

    .line 182
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string/jumbo v2, "Content-Type"

    const-string/jumbo v3, "application/octet-stream"

    .line 183
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "Accept-Encoding"

    const-string/jumbo v3, "gzip"

    .line 185
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "gzipped"

    const-string/jumbo v3, "1"

    .line 186
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "Connection"

    const-string/jumbo v3, "Keep-Alive"

    .line 187
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "User-Agent"

    const-string/jumbo v3, "AMAP_Location_SDK_Android 2.3.0"

    .line 188
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "X-INFO"

    .line 189
    iget-object v3, p0, Lcom/loc/bp;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "KEY"

    .line 190
    invoke-static {p1}, Lcom/loc/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "enginever"

    const-string/jumbo v3, "4.2"

    .line 191
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {}, Lcom/loc/o;->a()Ljava/lang/String;

    move-result-object v2

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/loc/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/loc/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ts"

    .line 194
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "scode"

    .line 195
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "platinfo"

    .line 196
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "platform=Android&sdkversion=%s&product=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "2.3.0"

    aput-object v6, v5, v7

    const/4 v6, 0x1

    const-string/jumbo v7, "loc"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "logversion"

    const-string/jumbo v3, "2.1"

    .line 197
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "encr"

    const-string/jumbo v3, "1"

    .line 201
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-virtual {v1, v0}, Lcom/loc/bq;->a(Ljava/util/Map;)V

    .line 203
    invoke-virtual {v1, p4}, Lcom/loc/bq;->a(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p3}, Lcom/loc/bt;->a()[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bw;->a([B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/loc/bq;->a([B)V

    .line 205
    invoke-static {p1}, Lcom/loc/t;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/loc/bq;->a(Ljava/net/Proxy;)V

    .line 206
    iget v0, p0, Lcom/loc/bp;->g:I

    invoke-virtual {v1, v0}, Lcom/loc/bq;->a(I)V

    .line 207
    iget v0, p0, Lcom/loc/bp;->g:I

    invoke-virtual {v1, v0}, Lcom/loc/bq;->b(I)V

    .line 213
    iget-object v0, p0, Lcom/loc/bp;->c:Lcom/loc/ap;

    invoke-virtual {v0, v1}, Lcom/loc/ap;->b(Lcom/loc/at;)[B

    move-result-object v0

    .line 218
    return-object v0

    :cond_0
    :try_start_0
    const-string/jumbo v0, "httptimeout"

    .line 167
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/loc/bp;->g:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 173
    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 178
    return-object v0
.end method
