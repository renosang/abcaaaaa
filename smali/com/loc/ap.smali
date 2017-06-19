.class public Lcom/loc/ap;
.super Ljava/lang/Object;
.source "BaseNetManager.java"


# static fields
.field private static a:Lcom/loc/ap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/loc/ap;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/loc/ap;->a:Lcom/loc/ap;

    if-eqz v0, :cond_0

    .line 39
    :goto_0
    sget-object v0, Lcom/loc/ap;->a:Lcom/loc/ap;

    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lcom/loc/ap;

    invoke-direct {v0}, Lcom/loc/ap;-><init>()V

    sput-object v0, Lcom/loc/ap;->a:Lcom/loc/ap;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/loc/at;Z)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/l;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 54
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/loc/ap;->c(Lcom/loc/at;)V

    .line 56
    iget-object v1, p1, Lcom/loc/at;->c:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    .line 59
    iget-object v0, p1, Lcom/loc/at;->c:Ljava/net/Proxy;

    .line 62
    :cond_0
    if-nez p2, :cond_2

    .line 66
    new-instance v1, Lcom/loc/ar;

    iget v2, p1, Lcom/loc/at;->a:I

    iget v3, p1, Lcom/loc/at;->b:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/loc/ar;-><init>(IILjava/net/Proxy;Z)V

    move-object v0, v1

    .line 69
    :goto_0
    invoke-virtual {p1}, Lcom/loc/at;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/loc/at;->a()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/ar;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lcom/loc/at;->e()[B

    move-result-object v1

    .line 72
    if-nez v1, :cond_3

    .line 78
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 86
    return-object v0

    .line 63
    :cond_2
    new-instance v1, Lcom/loc/ar;

    iget v2, p1, Lcom/loc/at;->a:I

    iget v3, p1, Lcom/loc/at;->b:I

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/loc/ar;-><init>(IILjava/net/Proxy;Z)V

    move-object v0, v1

    goto :goto_0

    .line 72
    :cond_3
    array-length v2, v1

    if-lez v2, :cond_1

    .line 73
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 75
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 76
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 85
    :catch_0
    move-exception v0

    .line 81
    throw v0

    :catch_1
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/loc/at;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/l;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 101
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/loc/ap;->b(Lcom/loc/at;Z)Lcom/loc/au;
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 107
    if-nez v0, :cond_0

    .line 110
    return-object v1

    .line 106
    :catch_0
    move-exception v0

    .line 103
    throw v0

    :catch_1
    move-exception v0

    .line 105
    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iget-object v0, v0, Lcom/loc/au;->a:[B

    return-object v0
.end method

.method protected b(Lcom/loc/at;Z)Lcom/loc/au;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/l;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 147
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/loc/ap;->c(Lcom/loc/at;)V

    .line 149
    iget-object v1, p1, Lcom/loc/at;->c:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    .line 152
    iget-object v0, p1, Lcom/loc/at;->c:Ljava/net/Proxy;

    .line 154
    :cond_0
    new-instance v1, Lcom/loc/ar;

    iget v2, p1, Lcom/loc/at;->a:I

    iget v3, p1, Lcom/loc/at;->b:I

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/loc/ar;-><init>(IILjava/net/Proxy;Z)V

    .line 158
    invoke-virtual {p1}, Lcom/loc/at;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/loc/at;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/loc/at;->e()[B

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/loc/ar;->a(Ljava/lang/String;Ljava/util/Map;[B)Lcom/loc/au;
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 168
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    .line 163
    throw v0

    :catch_1
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/loc/at;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/l;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 117
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/loc/ap;->b(Lcom/loc/at;Z)Lcom/loc/au;
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 125
    if-nez v0, :cond_0

    .line 128
    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 119
    throw v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "BaseNetManager"

    const-string/jumbo v2, "makeSyncPostRequest"

    .line 121
    invoke-static {v0, v1, v2}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, v0, Lcom/loc/au;->a:[B

    return-object v0
.end method

.method protected c(Lcom/loc/at;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/l;
        }
    .end annotation

    .prologue
    .line 134
    if-eqz p1, :cond_1

    .line 137
    invoke-virtual {p1}, Lcom/loc/at;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 138
    :cond_0
    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "request url is empty"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "requeust is null"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string/jumbo v0, ""

    .line 137
    invoke-virtual {p1}, Lcom/loc/at;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    return-void
.end method
