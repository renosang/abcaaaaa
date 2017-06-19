.class public abstract Lcom/loc/at;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field a:I

.field b:I

.field c:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x4e20

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/loc/at;->a:I

    .line 17
    iput v0, p0, Lcom/loc/at;->b:I

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/loc/at;->c:Ljava/net/Proxy;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lcom/loc/at;->a:I

    .line 111
    return-void
.end method

.method public final a(Ljava/net/Proxy;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/loc/at;->c:Ljava/net/Proxy;

    .line 134
    return-void
.end method

.method public abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 119
    iput p1, p0, Lcom/loc/at;->b:I

    .line 120
    return-void
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/loc/at;->f()[B

    move-result-object v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/loc/at;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 32
    :cond_1
    array-length v0, v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/loc/at;->b()Ljava/util/Map;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    .line 39
    invoke-static {v0}, Lcom/loc/ar;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/loc/at;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37
    :cond_2
    invoke-virtual {p0}, Lcom/loc/at;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e()[B
    .locals 4

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/loc/at;->f()[B

    move-result-object v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/loc/at;->b()Ljava/util/Map;

    move-result-object v1

    .line 59
    invoke-static {v1}, Lcom/loc/ar;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 61
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    :goto_0
    return-object v0

    .line 57
    :cond_1
    array-length v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "UTF-8"

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string/jumbo v2, "Request"

    const-string/jumbo v3, "getConnectionDatas"

    .line 66
    invoke-static {v0, v2, v3}, Lcom/loc/y;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public f()[B
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 123
    return-object v0
.end method
