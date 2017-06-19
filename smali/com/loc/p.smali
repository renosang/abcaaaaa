.class public Lcom/loc/p;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/p$a;,
        Lcom/loc/p$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;)Lcom/loc/p$a;
    .locals 3

    .prologue
    .line 221
    :try_start_0
    new-instance v0, Lcom/loc/ap;

    invoke-direct {v0}, Lcom/loc/ap;-><init>()V

    .line 222
    new-instance v1, Lcom/loc/p$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/loc/p$b;-><init>(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/loc/ap;->a(Lcom/loc/at;)[B

    move-result-object v0

    .line 229
    invoke-static {v0}, Lcom/loc/p;->a([B)Lcom/loc/p$a;
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ConfigManager"

    const-string/jumbo v2, "loadConfig"

    .line 232
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :goto_0
    new-instance v0, Lcom/loc/p$a;

    invoke-direct {v0}, Lcom/loc/p$a;-><init>()V

    return-object v0

    .line 237
    :catch_1
    move-exception v0

    const-string/jumbo v1, "ConfigManager"

    const-string/jumbo v2, "loadConfig"

    .line 235
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a([B)Lcom/loc/p$a;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 97
    new-instance v2, Lcom/loc/p$a;

    invoke-direct {v2}, Lcom/loc/p$a;-><init>()V

    .line 99
    if-nez p0, :cond_1

    .line 100
    :cond_0
    return-object v2

    .line 99
    :cond_1
    :try_start_0
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v0, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 108
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    .line 109
    invoke-static {v3, v0}, Lcom/loc/p;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "1"

    .line 110
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 196
    :cond_2
    :goto_0
    return-object v2

    :cond_3
    const-string/jumbo v0, "result"

    .line 112
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "result"

    .line 115
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 116
    if-eqz v3, :cond_2

    const-string/jumbo v0, "exception"

    .line 119
    invoke-static {v3, v0}, Lcom/loc/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    const-string/jumbo v4, "common"

    .line 127
    invoke-static {v3, v4}, Lcom/loc/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 132
    :goto_2
    new-instance v4, Lcom/loc/p$a$a;

    invoke-direct {v4}, Lcom/loc/p$a$a;-><init>()V

    .line 133
    iput-boolean v0, v4, Lcom/loc/p$a$a;->a:Z

    .line 134
    iput-boolean v1, v4, Lcom/loc/p$a$a;->b:Z

    .line 135
    iput-object v4, v2, Lcom/loc/p$a;->f:Lcom/loc/p$a$a;

    const-string/jumbo v0, "sdkupdate"

    .line 137
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_3
    const-string/jumbo v0, "sdkcoordinate"

    .line 146
    invoke-static {v3, v0}, Lcom/loc/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :goto_4
    const-string/jumbo v0, "callamap"

    .line 156
    invoke-static {v3, v0}, Lcom/loc/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_5
    const-string/jumbo v0, "ca"

    .line 162
    invoke-static {v3, v0}, Lcom/loc/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_6
    const-string/jumbo v0, "locate"

    .line 167
    invoke-static {v3, v0}, Lcom/loc/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_7
    const-string/jumbo v0, "callamappro"

    .line 173
    invoke-static {v3, v0}, Lcom/loc/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    :goto_8
    const-string/jumbo v0, "opflag"

    .line 178
    invoke-static {v3, v0}, Lcom/loc/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "opflag"

    .line 179
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 181
    iput-object v0, v2, Lcom/loc/p$a;->a:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ConfigManager"

    const-string/jumbo v3, "loadConfig"

    .line 198
    invoke-static {v0, v1, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_9
    return-object v2

    .line 113
    :cond_4
    return-object v2

    :cond_5
    :try_start_1
    const-string/jumbo v0, "exception"

    .line 120
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 122
    invoke-static {v0}, Lcom/loc/p;->b(Lorg/json/JSONObject;)Z

    move-result v0

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "common"

    .line 128
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 130
    invoke-static {v1}, Lcom/loc/p;->a(Lorg/json/JSONObject;)Z

    move-result v1

    goto :goto_2

    :cond_7
    const-string/jumbo v0, "sdkupdate"

    .line 138
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/loc/p$a$c;

    invoke-direct {v1}, Lcom/loc/p$a$c;-><init>()V

    .line 141
    invoke-static {v0, v1}, Lcom/loc/p;->a(Lorg/json/JSONObject;Lcom/loc/p$a$c;)V

    .line 142
    iput-object v1, v2, Lcom/loc/p$a;->g:Lcom/loc/p$a$c;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    .line 203
    :catch_1
    move-exception v0

    const-string/jumbo v1, "ConfigManager"

    const-string/jumbo v3, "loadConfig"

    .line 200
    invoke-static {v0, v1, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    :try_start_2
    const-string/jumbo v0, "sdkcoordinate"

    .line 147
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/loc/p$a$b;

    invoke-direct {v1}, Lcom/loc/p$a$b;-><init>()V

    .line 150
    invoke-static {v0, v1}, Lcom/loc/p;->a(Lorg/json/JSONObject;Lcom/loc/p$a$b;)V

    .line 152
    iput-object v1, v2, Lcom/loc/p$a;->h:Lcom/loc/p$a$b;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 203
    :catch_2
    move-exception v0

    const-string/jumbo v1, "ConfigManager"

    const-string/jumbo v3, "loadConfig"

    .line 202
    invoke-static {v0, v1, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_9
    :try_start_3
    const-string/jumbo v0, "callamap"

    .line 157
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 159
    iput-object v0, v2, Lcom/loc/p$a;->d:Lorg/json/JSONObject;

    goto/16 :goto_5

    :cond_a
    const-string/jumbo v0, "ca"

    .line 163
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 164
    iput-object v0, v2, Lcom/loc/p$a;->e:Lorg/json/JSONObject;

    goto/16 :goto_6

    :cond_b
    const-string/jumbo v0, "locate"

    .line 168
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 170
    iput-object v0, v2, Lcom/loc/p$a;->c:Lorg/json/JSONObject;

    goto/16 :goto_7

    :cond_c
    const-string/jumbo v0, "callamappro"

    .line 174
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 176
    iput-object v0, v2, Lcom/loc/p$a;->b:Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_8
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 325
    if-eqz p0, :cond_1

    const-string/jumbo v0, ""

    .line 329
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 332
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    .line 326
    return-object v0

    .line 329
    :cond_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/loc/p$a$b;)V
    .locals 3

    .prologue
    .line 338
    if-nez p0, :cond_0

    .line 353
    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v0, "md5"

    .line 340
    invoke-static {p0, v0}, Lcom/loc/p;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 342
    invoke-static {p0, v1}, Lcom/loc/p;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    iput-object v0, p1, Lcom/loc/p$a$b;->b:Ljava/lang/String;

    .line 344
    iput-object v1, p1, Lcom/loc/p$a$b;->a:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ConfigManager"

    const-string/jumbo v2, "parseSDKCoordinate"

    .line 347
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 352
    :catch_1
    move-exception v0

    const-string/jumbo v1, "ConfigManager"

    const-string/jumbo v2, "parseSDKCoordinate"

    .line 350
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/loc/p$a$c;)V
    .locals 4

    .prologue
    .line 358
    if-nez p0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string/jumbo v0, "md5"

    .line 361
    invoke-static {p0, v0}, Lcom/loc/p;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 362
    invoke-static {p0, v1}, Lcom/loc/p;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sdkversion"

    .line 363
    invoke-static {p0, v2}, Lcom/loc/p;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 369
    iput-object v1, p1, Lcom/loc/p$a$c;->a:Ljava/lang/String;

    .line 370
    iput-object v0, p1, Lcom/loc/p$a$c;->b:Ljava/lang/String;

    .line 371
    iput-object v2, p1, Lcom/loc/p$a$c;->c:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ConfigManager"

    const-string/jumbo v2, "parseSDKUpdate"

    .line 378
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :catch_1
    move-exception v0

    const-string/jumbo v1, "ConfigManager"

    const-string/jumbo v2, "parseSDKUpdate"

    .line 381
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 313
    if-eqz p0, :cond_0

    const-string/jumbo v0, "1"

    .line 316
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    return v1

    .line 314
    :cond_0
    return v1

    .line 317
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static a(Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 388
    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo v0, "commoninfo"

    .line 391
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "com_isupload"

    .line 393
    invoke-static {v0, v1}, Lcom/loc/p;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-static {v0}, Lcom/loc/p;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 396
    return v0

    .line 389
    :cond_0
    return v3

    .line 396
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ConfigManager"

    const-string/jumbo v2, "parseCommon"

    .line 398
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :goto_0
    return v3

    .line 401
    :catch_1
    move-exception v0

    const-string/jumbo v1, "ConfigManager"

    const-string/jumbo v2, "parseCommon"

    .line 400
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 408
    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo v0, "exceptinfo"

    .line 411
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "ex_isupload"

    .line 414
    invoke-static {v0, v1}, Lcom/loc/p;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-static {v0}, Lcom/loc/p;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 417
    return v0

    .line 409
    :cond_0
    return v3

    .line 417
    :catch_0
    move-exception v0

    const-string/jumbo v1, "ConfigManager"

    const-string/jumbo v2, "parseException"

    .line 419
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :goto_0
    return v3

    .line 424
    :catch_1
    move-exception v0

    const-string/jumbo v1, "ConfigManager"

    const-string/jumbo v2, "parseException"

    .line 422
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
