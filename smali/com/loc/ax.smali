.class public Lcom/loc/ax;
.super Ljava/lang/Object;
.source "ConnectionServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/ax$a;
    }
.end annotation


# instance fields
.field a:Lcom/loc/ax$a;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Lcom/loc/k;

.field private f:Landroid/content/ServiceConnection;

.field private g:Landroid/content/ServiceConnection;

.field private h:Landroid/content/Intent;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/loc/ax;->b:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/loc/ax;->c:Landroid/content/Context;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/ax;->d:Z

    .line 43
    iput-object v1, p0, Lcom/loc/ax;->e:Lcom/loc/k;

    .line 47
    iput-object v1, p0, Lcom/loc/ax;->f:Landroid/content/ServiceConnection;

    .line 48
    iput-object v1, p0, Lcom/loc/ax;->g:Landroid/content/ServiceConnection;

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/loc/ax;->h:Landroid/content/Intent;

    const-string/jumbo v0, "com.autonavi.minimap"

    .line 51
    iput-object v0, p0, Lcom/loc/ax;->i:Ljava/lang/String;

    const-string/jumbo v0, "com.amap.api.service.AMapService"

    .line 52
    iput-object v0, p0, Lcom/loc/ax;->j:Ljava/lang/String;

    const-string/jumbo v0, "com.taobao.agoo.PushService"

    .line 53
    iput-object v0, p0, Lcom/loc/ax;->k:Ljava/lang/String;

    .line 55
    iput-boolean v2, p0, Lcom/loc/ax;->l:Z

    .line 56
    iput-boolean v2, p0, Lcom/loc/ax;->m:Z

    .line 82
    iput-object v1, p0, Lcom/loc/ax;->a:Lcom/loc/ax$a;

    const-string/jumbo v0, "invaid type"

    .line 196
    iput-object v0, p0, Lcom/loc/ax;->n:Ljava/lang/String;

    const-string/jumbo v0, "empty appkey"

    .line 197
    iput-object v0, p0, Lcom/loc/ax;->o:Ljava/lang/String;

    const-string/jumbo v0, "refused"

    .line 198
    iput-object v0, p0, Lcom/loc/ax;->p:Ljava/lang/String;

    const-string/jumbo v0, "failed"

    .line 199
    iput-object v0, p0, Lcom/loc/ax;->q:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/loc/ax;->c:Landroid/content/Context;

    .line 62
    :try_start_0
    invoke-static {p1}, Lcom/loc/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v1, "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCEYwdO3V2ANrhApjqyk7X8FH5AEaWly58kP9IDAhMqwtIbmcJrUK9oO9Afh3KZnOlDtjiowy733YqpLRO7WBvdbW/c4Dz/d3dy/m+6HMqxaak+GQQRHw/VPdKciaZ3eIZp4MWOyIQwiFSQvPTAo/Na8hV4SgBZHB3lGFw0yu+BmG+h32eIE6p4Y8EDCn+G+yzekX+taMrWTQIysledrygZSGPv1ukbdFDnH/xZEI0dCr9pZT+AZQl3o9a2aMyuRrHM0oupXKKiYl69Y8fKh1Tyd752rF6LrR5uOb9aOfXt18hb+3YL5P9rQ+ZRYbyHYFaxzBPA2jLq0KUQ+Dmg7YhAgMBAAECggEAL9pj0lF3BUHwtssNKdf42QZJMD0BKuDcdZrLV9ifs0f54EJY5enzKw8j76MpdV8N5QVkNX4/BZR0bs9uJogh31oHFs5EXeWbb7V8P7bRrxpNnSAijGBWwscQsyqymf48YlcL28949ujnjoEz3jQjgWOyYnrCgpVhphrQbCGmB5TcZnTFvHfozt/0tzuMj5na5lRnkD0kYXgr0x/SRZcPoCybSpc3t/B/9MAAboGaV/QQkTotr7VOuJfaPRjvg8rzyPzavo3evxsjXj7vDXbN4w0cbk/Uqn2JtvPQ8HoysmF2HdYvILZibvJmWH1hA58b4sn5s6AqFRjMOL7rHdD+gQKBgQD+IzoofmZK5tTxgO9sWsG71IUeshQP9fe159jKCehk1RfuIqqbRP0UcxJiw4eNjHs4zU0HeRL3iF5XfUs0FQanO/pp6YL1xgVdfQlDdTdk6KFHJ0sUJapnJn1S2k7IKfRKE1+rkofSXMYUTsgHF1fDp+gxy4yUMY+h9O+JlKVKOwKBgQDDfaDIblaSm+B0lyG//wFPynAeGd0Q8wcMZbQQ/LWMJZhMZ7fyUZ+A6eL/jB53a2tgnaw2rXBpMe1qu8uSpym2plU0fkgLAnVugS5+KRhOkUHyorcbpVZbs5azf7GlTydR5dI1PHF3Bncemoa6IsEvumHWgQbVyTTz/O9mlFafUwKBgQCvDebms8KUf5JY1F6XfaCLWGVl8nZdVCmQFKbA7Lg2lI5KS3jHQWsupeEZRORffU/3nXsc1apZ9YY+r6CYvI77rRXd1KqPzxos/o7d96TzjkZhc9CEjTlmmh2jb5rqx/Ns/xFcZq/GGH+cx3ODZvHeZQ9NFY+9GLJ+dfB2DX0ZtwKBgQC+9/lZ8telbpqMqpqwqRaJ8LMn5JIdHZu0E6IcuhFLr+ogMW3zTKMpVtGGXEXi2M/TWRPDchiO2tQX4Q5T2/KW19QCbJ5KCwPWiGF3owN4tNOciDGh0xkSidRc0xAh8bnyejSoBry8zlcNUVztdkgMLOGonvCjZWPSOTNQnPYluwKBgCV+WVftpTk3l+OfAJTaXEPNYdh7+WQjzxZKjUaDzx80Ts7hRo2U+EQT7FBjQQNqmmDnWtujo5p1YmJC0FT3n1CVa7g901pb3b0RcOziYWAoJi0/+kLyeo6XBhuLeZ7h90S70GGh1o0V/j/9N1jb5DCL4xKkvdYePPTSTku0BM+n"

    invoke-static {v0, v1}, Lcom/loc/bh;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/loc/r;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ax;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 202
    if-eqz p1, :cond_1

    const-string/jumbo v0, "key"

    .line 208
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    const-string/jumbo v2, "result"

    .line 217
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 263
    :cond_0
    :goto_1
    return-object v1

    .line 203
    :cond_1
    return-object v1

    :cond_2
    const-string/jumbo v0, "key"

    .line 209
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {v0}, Lcom/loc/r;->a(Ljava/lang/String;)[B

    move-result-object v0

    :try_start_0
    const-string/jumbo v2, "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCEYwdO3V2ANrhApjqyk7X8FH5AEaWly58kP9IDAhMqwtIbmcJrUK9oO9Afh3KZnOlDtjiowy733YqpLRO7WBvdbW/c4Dz/d3dy/m+6HMqxaak+GQQRHw/VPdKciaZ3eIZp4MWOyIQwiFSQvPTAo/Na8hV4SgBZHB3lGFw0yu+BmG+h32eIE6p4Y8EDCn+G+yzekX+taMrWTQIysledrygZSGPv1ukbdFDnH/xZEI0dCr9pZT+AZQl3o9a2aMyuRrHM0oupXKKiYl69Y8fKh1Tyd752rF6LrR5uOb9aOfXt18hb+3YL5P9rQ+ZRYbyHYFaxzBPA2jLq0KUQ+Dmg7YhAgMBAAECggEAL9pj0lF3BUHwtssNKdf42QZJMD0BKuDcdZrLV9ifs0f54EJY5enzKw8j76MpdV8N5QVkNX4/BZR0bs9uJogh31oHFs5EXeWbb7V8P7bRrxpNnSAijGBWwscQsyqymf48YlcL28949ujnjoEz3jQjgWOyYnrCgpVhphrQbCGmB5TcZnTFvHfozt/0tzuMj5na5lRnkD0kYXgr0x/SRZcPoCybSpc3t/B/9MAAboGaV/QQkTotr7VOuJfaPRjvg8rzyPzavo3evxsjXj7vDXbN4w0cbk/Uqn2JtvPQ8HoysmF2HdYvILZibvJmWH1hA58b4sn5s6AqFRjMOL7rHdD+gQKBgQD+IzoofmZK5tTxgO9sWsG71IUeshQP9fe159jKCehk1RfuIqqbRP0UcxJiw4eNjHs4zU0HeRL3iF5XfUs0FQanO/pp6YL1xgVdfQlDdTdk6KFHJ0sUJapnJn1S2k7IKfRKE1+rkofSXMYUTsgHF1fDp+gxy4yUMY+h9O+JlKVKOwKBgQDDfaDIblaSm+B0lyG//wFPynAeGd0Q8wcMZbQQ/LWMJZhMZ7fyUZ+A6eL/jB53a2tgnaw2rXBpMe1qu8uSpym2plU0fkgLAnVugS5+KRhOkUHyorcbpVZbs5azf7GlTydR5dI1PHF3Bncemoa6IsEvumHWgQbVyTTz/O9mlFafUwKBgQCvDebms8KUf5JY1F6XfaCLWGVl8nZdVCmQFKbA7Lg2lI5KS3jHQWsupeEZRORffU/3nXsc1apZ9YY+r6CYvI77rRXd1KqPzxos/o7d96TzjkZhc9CEjTlmmh2jb5rqx/Ns/xFcZq/GGH+cx3ODZvHeZQ9NFY+9GLJ+dfB2DX0ZtwKBgQC+9/lZ8telbpqMqpqwqRaJ8LMn5JIdHZu0E6IcuhFLr+ogMW3zTKMpVtGGXEXi2M/TWRPDchiO2tQX4Q5T2/KW19QCbJ5KCwPWiGF3owN4tNOciDGh0xkSidRc0xAh8bnyejSoBry8zlcNUVztdkgMLOGonvCjZWPSOTNQnPYluwKBgCV+WVftpTk3l+OfAJTaXEPNYdh7+WQjzxZKjUaDzx80Ts7hRo2U+EQT7FBjQQNqmmDnWtujo5p1YmJC0FT3n1CVa7g901pb3b0RcOziYWAoJi0/+kLyeo6XBhuLeZ7h90S70GGh1o0V/j/9N1jb5DCL4xKkvdYePPTSTku0BM+n"

    .line 212
    invoke-static {v0, v2}, Lcom/loc/bh;->b([BLjava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "result"

    .line 218
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-static {v2}, Lcom/loc/r;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 221
    :try_start_1
    invoke-static {v0, v2}, Lcom/loc/bh;->a([B[B)[B

    move-result-object v0

    .line 222
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 226
    if-eqz v2, :cond_0

    .line 227
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "error"

    .line 229
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 248
    new-instance v2, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v2, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "lbs"

    .line 249
    invoke-virtual {v2, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 250
    invoke-virtual {v2, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(I)V

    const-string/jumbo v0, "WGS84"

    .line 251
    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 256
    :cond_4
    :goto_2
    return-object v2

    :cond_5
    const-string/jumbo v2, "error"

    .line 230
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    iget-object v2, p0, Lcom/loc/ax;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 237
    :goto_3
    iget-object v2, p0, Lcom/loc/ax;->o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 240
    :goto_4
    iget-object v2, p0, Lcom/loc/ax;->p:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 243
    :goto_5
    iget-object v2, p0, Lcom/loc/ax;->q:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 246
    :cond_6
    return-object v1

    .line 235
    :cond_7
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/loc/ax;->d:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 261
    :catch_1
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 238
    :cond_8
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/loc/ax;->d:Z

    goto :goto_4

    .line 241
    :cond_9
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/loc/ax;->d:Z

    goto :goto_5

    .line 251
    :cond_a
    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/loc/e;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    iget-object v0, p0, Lcom/loc/ax;->c:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i()D

    move-result-wide v6

    invoke-static {v0, v4, v5, v6, v7}, Lcom/loc/j;->a(Landroid/content/Context;DD)Lcom/amap/api/location/DPoint;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b(D)V

    .line 254
    invoke-virtual {v0}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method static synthetic a(Lcom/loc/ax;Lcom/loc/k;)Lcom/loc/k;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/loc/ax;->e:Lcom/loc/k;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/loc/ax;->c()V

    .line 71
    iput-object v0, p0, Lcom/loc/ax;->c:Landroid/content/Context;

    .line 72
    iput-object v0, p0, Lcom/loc/ax;->e:Lcom/loc/k;

    .line 73
    iput-object v0, p0, Lcom/loc/ax;->f:Landroid/content/ServiceConnection;

    .line 74
    iput-object v0, p0, Lcom/loc/ax;->g:Landroid/content/ServiceConnection;

    .line 75
    iget-object v0, p0, Lcom/loc/ax;->a:Lcom/loc/ax$a;

    if-nez v0, :cond_0

    .line 78
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/ax;->d:Z

    .line 79
    iput-boolean v2, p0, Lcom/loc/ax;->l:Z

    .line 80
    iput-boolean v2, p0, Lcom/loc/ax;->m:Z

    .line 81
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/loc/ax;->a:Lcom/loc/ax$a;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/loc/ax$a;->a(I)V

    goto :goto_0
.end method

.method public a(Lcom/loc/ax$a;)V
    .locals 1

    .prologue
    .line 85
    :try_start_0
    iput-object p1, p0, Lcom/loc/ax;->a:Lcom/loc/ax$a;

    .line 86
    iget-object v0, p0, Lcom/loc/ax;->f:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/loc/ax;->g:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 128
    :goto_1
    return-void

    .line 87
    :cond_0
    new-instance v0, Lcom/loc/ax$1;

    invoke-direct {v0, p0, p1}, Lcom/loc/ax$1;-><init>(Lcom/loc/ax;Lcom/loc/ax$a;)V

    iput-object v0, p0, Lcom/loc/ax;->f:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 109
    :cond_1
    :try_start_1
    new-instance v0, Lcom/loc/ax$2;

    invoke-direct {v0, p0}, Lcom/loc/ax$2;-><init>(Lcom/loc/ax;)V

    iput-object v0, p0, Lcom/loc/ax;->g:Landroid/content/ServiceConnection;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method b()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/loc/ax;->h:Landroid/content/Intent;

    const-string/jumbo v3, "appkey"

    iget-object v4, p0, Lcom/loc/ax;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v2, p0, Lcom/loc/ax;->h:Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/loc/ax;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/ax;->j:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 142
    iget-object v2, p0, Lcom/loc/ax;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/ax;->h:Landroid/content/Intent;

    iget-object v4, p0, Lcom/loc/ax;->f:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/loc/ax;->l:Z

    .line 144
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "appkey"

    .line 145
    iget-object v4, p0, Lcom/loc/ax;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/loc/ax;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/ax;->k:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 147
    iget-object v3, p0, Lcom/loc/ax;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/loc/ax;->g:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/loc/ax;->m:Z

    .line 149
    iget-boolean v2, p0, Lcom/loc/ax;->l:Z

    if-nez v2, :cond_1

    :goto_0
    move v0, v1

    :cond_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/loc/ax;->m:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 151
    return v1
.end method

.method c()V
    .locals 2

    .prologue
    .line 160
    :try_start_0
    iget-boolean v0, p0, Lcom/loc/ax;->l:Z

    if-nez v0, :cond_0

    .line 163
    :goto_0
    iget-boolean v0, p0, Lcom/loc/ax;->m:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_1

    :goto_1
    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/loc/ax;->e:Lcom/loc/k;

    .line 170
    return-void

    .line 161
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/ax;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/ax;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 164
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/ax;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/ax;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 168
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method d()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 178
    :try_start_0
    iget-boolean v0, p0, Lcom/loc/ax;->d:Z

    if-nez v0, :cond_1

    .line 179
    :cond_0
    return-object v3

    .line 178
    :cond_1
    iget-boolean v0, p0, Lcom/loc/ax;->l:Z

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "corse"

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "appkey"

    .line 184
    iget-object v2, p0, Lcom/loc/ax;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/loc/ax;->e:Lcom/loc/k;

    invoke-interface {v1, v0}, Lcom/loc/k;->a(Landroid/os/Bundle;)I

    .line 186
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 193
    :goto_0
    return-object v3

    .line 187
    :cond_2
    invoke-direct {p0, v0}, Lcom/loc/ax;->a(Landroid/os/Bundle;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 192
    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 192
    :catch_1
    move-exception v0

    goto :goto_0
.end method
