.class public Lcom/loc/bn;
.super Lcom/loc/bo;
.source "OfflineFileCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/loc/bo",
        "<",
        "Ljava/lang/String;",
        "Lcom/loc/bi;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x100000

    .line 10
    invoke-direct {p0, v0}, Lcom/loc/bo;-><init>(I)V

    .line 11
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 7
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/loc/bi;

    invoke-virtual {p0, p1, p2}, Lcom/loc/bn;->a(Ljava/lang/String;Lcom/loc/bi;)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;Lcom/loc/bi;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 19
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/loc/bi;->g()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 24
    :cond_0
    :goto_0
    return v0

    .line 22
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected bridge synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/loc/bi;

    check-cast p4, Lcom/loc/bi;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/loc/bn;->a(ZLjava/lang/String;Lcom/loc/bi;Lcom/loc/bi;)V

    return-void
.end method

.method protected a(ZLjava/lang/String;Lcom/loc/bi;Lcom/loc/bi;)V
    .locals 1

    .prologue
    .line 32
    if-nez p3, :cond_0

    .line 38
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/loc/bo;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    return-void

    .line 33
    :cond_0
    :try_start_0
    invoke-virtual {p3}, Lcom/loc/bi;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0
.end method
