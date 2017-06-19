.class public Lcom/loc/bg;
.super Ljava/lang/Object;
.source "WifiManagerWrapper.java"


# instance fields
.field private a:Landroid/net/wifi/WifiManager;

.field private b:Lorg/json/JSONObject;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/loc/bg;->a:Landroid/net/wifi/WifiManager;

    .line 39
    iput-object p3, p0, Lcom/loc/bg;->b:Lorg/json/JSONObject;

    .line 41
    iput-object p1, p0, Lcom/loc/bg;->c:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private a(Landroid/net/wifi/WifiInfo;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 269
    if-nez p1, :cond_2

    :cond_0
    move v0, v1

    .line 280
    :cond_1
    :goto_0
    return v0

    .line 269
    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 273
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "00:00:00:00:00:00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 275
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 277
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 278
    goto :goto_0

    :cond_3
    move v0, v1

    .line 272
    goto :goto_0

    :cond_4
    move v0, v1

    .line 274
    goto :goto_0

    :cond_5
    move v0, v1

    .line 276
    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/loc/bg;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 57
    return-object v1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/loc/bg;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 62
    return-object v1
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/loc/bg;->b:Lorg/json/JSONObject;

    .line 47
    return-void
.end method

.method public a(Z)V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 205
    iget-object v0, p0, Lcom/loc/bg;->c:Landroid/content/Context;

    .line 207
    iget-object v1, p0, Lcom/loc/bg;->a:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 208
    :cond_0
    return-void

    .line 207
    :cond_1
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 210
    invoke-static {}, Lcom/loc/bw;->c()I

    move-result v1

    const/16 v2, 0x11

    if-le v1, v2, :cond_3

    const-string/jumbo v1, "autoenablewifialwaysscan"

    .line 214
    iget-object v2, p0, Lcom/loc/bg;->b:Lorg/json/JSONObject;

    invoke-static {v2, v1}, Lcom/loc/bw;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 227
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android.provider.Settings$Global"

    .line 230
    new-array v0, v4, [Ljava/lang/Object;

    .line 231
    aput-object v1, v0, v5

    const-string/jumbo v3, "wifi_scan_always_enabled"

    .line 232
    aput-object v3, v0, v6

    .line 233
    new-array v3, v4, [Ljava/lang/Class;

    const-class v4, Landroid/content/ContentResolver;

    .line 234
    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    .line 235
    aput-object v4, v3, v6

    :try_start_0
    const-string/jumbo v4, "getInt"

    .line 237
    invoke-static {v2, v4, v0, v3}, Lcom/loc/bv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 238
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 239
    if-eqz v0, :cond_5

    .line 259
    :goto_1
    return-void

    .line 211
    :cond_3
    return-void

    :cond_4
    :try_start_1
    const-string/jumbo v2, "0"

    .line 216
    iget-object v3, p0, Lcom/loc/bg;->b:Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    return-void

    :cond_5
    const/4 v0, 0x3

    .line 240
    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 241
    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v3, "wifi_scan_always_enabled"

    .line 242
    aput-object v3, v0, v1

    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 243
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    .line 244
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ContentResolver;

    .line 245
    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    .line 246
    aput-object v4, v1, v3

    const/4 v3, 0x2

    .line 247
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v3

    const-string/jumbo v3, "putInt"

    .line 248
    invoke-static {v2, v3, v0, v1}, Lcom/loc/bv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 255
    :catch_0
    move-exception v0

    goto :goto_1

    .line 224
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public a(Landroid/net/ConnectivityManager;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 136
    iget-object v2, p0, Lcom/loc/bg;->a:Landroid/net/wifi/WifiManager;

    .line 138
    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/loc/bg;->f()Z

    move-result v3

    if-nez v3, :cond_2

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    return v0

    .line 145
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 146
    invoke-static {v3}, Lcom/loc/bp;->a(Landroid/net/NetworkInfo;)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 147
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/loc/bg;->a(Landroid/net/wifi/WifiInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 148
    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b()Landroid/net/wifi/WifiInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/loc/bg;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 74
    return-object v1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/loc/bg;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/loc/bg;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 88
    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/loc/bg;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/loc/bg;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    return v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/loc/bg;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/loc/bg;->a:Landroid/net/wifi/WifiManager;

    const-string/jumbo v1, "startScanActive"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/loc/bv;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 113
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 114
    if-nez v0, :cond_0

    .line 126
    :goto_0
    return v3

    .line 118
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public f()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 165
    iget-object v1, p0, Lcom/loc/bg;->a:Landroid/net/wifi/WifiManager;

    .line 167
    if-eqz v1, :cond_1

    .line 172
    :try_start_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 176
    :goto_0
    if-eqz v0, :cond_2

    .line 194
    :cond_0
    :goto_1
    return v0

    .line 168
    :cond_1
    return v0

    .line 175
    :catch_0
    move-exception v2

    goto :goto_0

    .line 176
    :cond_2
    invoke-static {}, Lcom/loc/bw;->c()I

    move-result v2

    const/16 v3, 0x11

    if-le v2, v3, :cond_0

    :try_start_1
    const-string/jumbo v2, "isScanAlwaysAvailable"

    const/4 v3, 0x0

    .line 181
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/loc/bv;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_1

    .line 192
    :catch_1
    move-exception v1

    goto :goto_1
.end method
