.class Lcom/loc/ay$b;
.super Ljava/lang/Object;
.source "MPos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/ay;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/loc/ay;)V
    .locals 1

    .prologue
    .line 210
    iput-object p1, p0, Lcom/loc/ay$b;->a:Lcom/loc/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lcom/loc/ay$b;->b:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/ay$b;->b:Ljava/util/ArrayList;

    .line 212
    return-void
.end method

.method static synthetic a(Lcom/loc/ay$b;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/loc/ay$b;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(II)V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v1, 0x0

    .line 215
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 216
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/loc/ay$b;->a:Lcom/loc/ay;

    invoke-static {v0}, Lcom/loc/ay;->a(Lcom/loc/ay;)[[S

    move-result-object v0

    aget-object v0, v0, p1

    aput-short v8, v0, p2

    .line 219
    iget-object v0, p0, Lcom/loc/ay$b;->a:Lcom/loc/ay;

    invoke-static {v0}, Lcom/loc/ay;->a(Lcom/loc/ay;)[[S

    move-result-object v0

    aget-object v0, v0, p2

    aput-short v8, v0, p1

    .line 220
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 221
    :goto_0
    iget-object v2, p0, Lcom/loc/ay$b;->a:Lcom/loc/ay;

    invoke-static {v2}, Lcom/loc/ay;->b(Lcom/loc/ay;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 225
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    iget-object v0, p0, Lcom/loc/ay$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    return-void

    .line 222
    :cond_1
    iget-object v2, p0, Lcom/loc/ay$b;->a:Lcom/loc/ay;

    invoke-static {v2}, Lcom/loc/ay;->a(Lcom/loc/ay;)[[S

    move-result-object v2

    aget-object v2, v2, p1

    aget-short v2, v2, v0

    if-nez v2, :cond_3

    .line 221
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_3
    iget-object v2, p0, Lcom/loc/ay$b;->a:Lcom/loc/ay;

    invoke-static {v2}, Lcom/loc/ay;->a(Lcom/loc/ay;)[[S

    move-result-object v2

    aget-object v2, v2, p2

    aget-short v2, v2, v0

    if-eqz v2, :cond_2

    .line 223
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 226
    :cond_4
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 227
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 228
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 232
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    .line 233
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 234
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 235
    iget-object v6, p0, Lcom/loc/ay$b;->a:Lcom/loc/ay;

    invoke-static {v6}, Lcom/loc/ay;->a(Lcom/loc/ay;)[[S

    move-result-object v6

    aget-object v6, v6, v5

    aget-short v0, v6, v0

    if-eqz v0, :cond_6

    .line 238
    add-int/lit8 v0, v2, 0x1

    :goto_4
    move v2, v0

    .line 240
    goto :goto_3

    .line 228
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 229
    iget-object v6, p0, Lcom/loc/ay$b;->a:Lcom/loc/ay;

    invoke-static {v6}, Lcom/loc/ay;->a(Lcom/loc/ay;)[[S

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput-short v8, v6, v7

    .line 230
    iget-object v6, p0, Lcom/loc/ay$b;->a:Lcom/loc/ay;

    invoke-static {v6}, Lcom/loc/ay;->a(Lcom/loc/ay;)[[S

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v6, v0

    aput-short v8, v0, v5

    goto :goto_2

    .line 236
    :cond_6
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v2

    goto :goto_4
.end method


# virtual methods
.method public a()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/loc/ay$b;->a:Lcom/loc/ay;

    invoke-static {v0}, Lcom/loc/ay;->b(Lcom/loc/ay;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 249
    :goto_0
    if-lt v2, v4, :cond_0

    move v3, v1

    .line 256
    :goto_1
    if-lt v3, v4, :cond_3

    .line 272
    return-void

    :cond_0
    move v0, v1

    .line 250
    :goto_2
    if-lt v0, v4, :cond_1

    .line 249
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 251
    :cond_1
    iget-object v3, p0, Lcom/loc/ay$b;->a:Lcom/loc/ay;

    invoke-static {v3}, Lcom/loc/ay;->a(Lcom/loc/ay;)[[S

    move-result-object v3

    aget-object v3, v3, v2

    aget-short v3, v3, v0

    if-gtz v3, :cond_2

    .line 250
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 252
    :cond_2
    invoke-direct {p0, v2, v0}, Lcom/loc/ay$b;->a(II)V

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    move v2, v1

    .line 258
    :goto_4
    if-lt v2, v4, :cond_4

    .line 266
    :goto_5
    if-nez v0, :cond_7

    .line 256
    :goto_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 259
    :cond_4
    iget-object v5, p0, Lcom/loc/ay$b;->a:Lcom/loc/ay;

    invoke-static {v5}, Lcom/loc/ay;->a(Lcom/loc/ay;)[[S

    move-result-object v5

    aget-object v5, v5, v3

    aget-short v5, v5, v2

    if-gtz v5, :cond_5

    .line 261
    iget-object v5, p0, Lcom/loc/ay$b;->a:Lcom/loc/ay;

    invoke-static {v5}, Lcom/loc/ay;->a(Lcom/loc/ay;)[[S

    move-result-object v5

    aget-object v5, v5, v3

    aget-short v5, v5, v2

    if-ltz v5, :cond_6

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 260
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "non visited edge"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v1

    .line 263
    goto :goto_5

    .line 267
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v2, p0, Lcom/loc/ay$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method
