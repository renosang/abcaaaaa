.class public Lcom/loc/n;
.super Ljava/lang/Object;
.source "AuthManager.java"


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field private static c:Lcom/loc/v;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 19
    sput v0, Lcom/loc/n;->a:I

    const-string/jumbo v0, ""

    .line 23
    sput-object v0, Lcom/loc/n;->b:Ljava/lang/String;

    const-string/jumbo v0, "http://apiinit.amap.com/v3/log/init"

    .line 27
    sput-object v0, Lcom/loc/n;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/loc/n;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/loc/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string/jumbo v0, "resType"

    const-string/jumbo v2, "json"

    .line 195
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "encode"

    const-string/jumbo v2, "UTF-8"

    .line 196
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {}, Lcom/loc/o;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ts"

    .line 199
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "key"

    .line 200
    invoke-static {p0}, Lcom/loc/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resType=json&encode=UTF-8&key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/loc/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {v2}, Lcom/loc/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "scode"

    .line 211
    invoke-static {p0, v0, v2}, Lcom/loc/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-object v1

    .line 216
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Auth"

    const-string/jumbo v3, "gParams"

    .line 214
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    invoke-static {p0}, Lcom/loc/m;->a(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/loc/v;)Z
    .locals 2

    .prologue
    const-class v0, Lcom/loc/n;

    monitor-enter v0

    .line 105
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/loc/n;->a(Landroid/content/Context;Lcom/loc/v;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Landroid/content/Context;Lcom/loc/v;Z)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 33
    sput-object p1, Lcom/loc/n;->c:Lcom/loc/v;

    .line 39
    :try_start_0
    invoke-static {}, Lcom/loc/n;->a()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v4, "application/x-www-form-urlencoded"

    .line 41
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Accept-Encoding"

    const-string/jumbo v4, "gzip"

    .line 42
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "Connection"

    const-string/jumbo v4, "Keep-Alive"

    .line 43
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "User-Agent"

    .line 44
    sget-object v4, Lcom/loc/n;->c:Lcom/loc/v;

    iget-object v4, v4, Lcom/loc/v;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "X-INFO"

    .line 56
    sget-object v4, Lcom/loc/n;->c:Lcom/loc/v;

    const/4 v5, 0x0

    invoke-static {p0, v4, v5, p2}, Lcom/loc/o;->a(Landroid/content/Context;Lcom/loc/v;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "logversion"

    const-string/jumbo v4, "2.1"

    .line 58
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "platinfo"

    const-string/jumbo v4, "platform=Android&sdkversion=%s&product=%s"

    const/4 v5, 0x2

    .line 60
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/loc/n;->c:Lcom/loc/v;

    iget-object v7, v7, Lcom/loc/v;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/loc/n;->c:Lcom/loc/v;

    iget-object v7, v7, Lcom/loc/v;->c:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/loc/ap;->a()Lcom/loc/ap;

    move-result-object v3

    .line 74
    new-instance v4, Lcom/loc/x;

    invoke-direct {v4}, Lcom/loc/x;-><init>()V

    .line 75
    invoke-static {p0}, Lcom/loc/t;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/loc/x;->a(Ljava/net/Proxy;)V

    .line 76
    invoke-virtual {v4, v2}, Lcom/loc/x;->a(Ljava/util/Map;)V

    .line 77
    invoke-static {p0}, Lcom/loc/n;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 78
    invoke-virtual {v4, v2}, Lcom/loc/x;->b(Ljava/util/Map;)V

    .line 79
    invoke-virtual {v4, v0}, Lcom/loc/x;->a(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v3, v4}, Lcom/loc/ap;->b(Lcom/loc/at;)[B

    move-result-object v0

    .line 97
    invoke-static {v0}, Lcom/loc/n;->a([B)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 102
    :goto_0
    return v0

    .line 101
    :catch_0
    move-exception v0

    const-string/jumbo v2, "Auth"

    const-string/jumbo v3, "getAuth"

    .line 100
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method private static a([B)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 141
    if-eqz p0, :cond_1

    .line 145
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 150
    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    .line 151
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    const-string/jumbo v0, "info"

    .line 159
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 162
    :goto_2
    sget v0, Lcom/loc/n;->a:I

    if-eqz v0, :cond_5

    .line 165
    :goto_3
    sget v0, Lcom/loc/n;->a:I

    if-eq v0, v2, :cond_6

    .line 168
    return v3

    .line 142
    :cond_1
    return v2

    .line 149
    :catch_0
    move-exception v0

    .line 148
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    const-string/jumbo v1, "Auth"

    const-string/jumbo v2, "lData"

    .line 182
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_4
    return v3

    :cond_2
    :try_start_2
    const-string/jumbo v0, "status"

    .line 152
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 153
    if-eq v0, v2, :cond_3

    .line 155
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 156
    sput v0, Lcom/loc/n;->a:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 187
    :catch_2
    move-exception v0

    const-string/jumbo v1, "Auth"

    const-string/jumbo v2, "lData"

    .line 186
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    const/4 v0, 0x1

    .line 154
    :try_start_3
    sput v0, Lcom/loc/n;->a:I

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "info"

    .line 160
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/n;->b:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "AuthFailure"

    .line 163
    sget-object v1, Lcom/loc/n;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 166
    :cond_6
    return v2
.end method

.method public static declared-synchronized b(Landroid/content/Context;Lcom/loc/v;)Z
    .locals 2

    .prologue
    const-class v0, Lcom/loc/n;

    monitor-enter v0

    .line 118
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/loc/n;->a(Landroid/content/Context;Lcom/loc/v;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
