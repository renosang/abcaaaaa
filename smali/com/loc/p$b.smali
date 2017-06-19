.class Lcom/loc/p$b;
.super Lcom/loc/at;
.source "ConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/loc/v;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/loc/at;-><init>()V

    const-string/jumbo v0, ""

    .line 244
    iput-object v0, p0, Lcom/loc/p$b;->f:Ljava/lang/String;

    .line 247
    iput-object p1, p0, Lcom/loc/p$b;->d:Landroid/content/Context;

    .line 248
    iput-object p2, p0, Lcom/loc/p$b;->e:Lcom/loc/v;

    .line 249
    iput-object p3, p0, Lcom/loc/p$b;->f:Ljava/lang/String;

    .line 250
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 6
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

    .prologue
    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "User-Agent"

    .line 255
    iget-object v2, p0, Lcom/loc/p$b;->e:Lcom/loc/v;

    invoke-virtual {v2}, Lcom/loc/v;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "platinfo"

    const-string/jumbo v2, "platform=Android&sdkversion=%s&product=%s"

    const/4 v3, 0x2

    .line 256
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/loc/p$b;->e:Lcom/loc/v;

    invoke-virtual {v5}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/loc/p$b;->e:Lcom/loc/v;

    invoke-virtual {v5}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "logversion"

    const-string/jumbo v2, "2.0"

    .line 259
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 5
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

    .prologue
    .line 267
    iget-object v0, p0, Lcom/loc/p$b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/q;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "key"

    .line 274
    iget-object v3, p0, Lcom/loc/p$b;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "opertype"

    .line 279
    iget-object v3, p0, Lcom/loc/p$b;->f:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "plattype"

    const-string/jumbo v3, "android"

    .line 280
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "product"

    .line 281
    iget-object v3, p0, Lcom/loc/p$b;->e:Lcom/loc/v;

    invoke-virtual {v3}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "version"

    .line 282
    iget-object v3, p0, Lcom/loc/p$b;->e:Lcom/loc/v;

    invoke-virtual {v3}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "output"

    const-string/jumbo v3, "json"

    .line 283
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "androidversion"

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "deviceId"

    .line 285
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "abitype"

    .line 286
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ext"

    .line 291
    iget-object v2, p0, Lcom/loc/p$b;->e:Lcom/loc/v;

    invoke-virtual {v2}, Lcom/loc/v;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-static {}, Lcom/loc/o;->a()Ljava/lang/String;

    move-result-object v0

    .line 293
    iget-object v2, p0, Lcom/loc/p$b;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/w;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/loc/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ts"

    .line 296
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "scode"

    .line 297
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    return-object v1

    .line 269
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {v0}, Lcom/loc/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "https://restapi.amap.com/v3/config/resource?"

    .line 307
    return-object v0
.end method
