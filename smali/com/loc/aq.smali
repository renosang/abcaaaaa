.class public Lcom/loc/aq;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/aq$a;
    }
.end annotation


# instance fields
.field private a:Lcom/loc/ar;

.field private b:Lcom/loc/at;


# direct methods
.method public constructor <init>(Lcom/loc/at;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/loc/aq;-><init>(Lcom/loc/at;JJ)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/loc/at;JJ)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/loc/aq;->b:Lcom/loc/at;

    .line 49
    iget-object v1, p1, Lcom/loc/at;->c:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    .line 52
    iget-object v0, p1, Lcom/loc/at;->c:Ljava/net/Proxy;

    .line 54
    :cond_0
    new-instance v1, Lcom/loc/ar;

    iget-object v2, p0, Lcom/loc/aq;->b:Lcom/loc/at;

    iget v2, v2, Lcom/loc/at;->a:I

    iget-object v3, p0, Lcom/loc/aq;->b:Lcom/loc/at;

    iget v3, v3, Lcom/loc/at;->b:I

    invoke-direct {v1, v2, v3, v0}, Lcom/loc/ar;-><init>(IILjava/net/Proxy;)V

    iput-object v1, p0, Lcom/loc/aq;->a:Lcom/loc/ar;

    .line 56
    iget-object v0, p0, Lcom/loc/aq;->a:Lcom/loc/ar;

    invoke-virtual {v0, p4, p5}, Lcom/loc/ar;->b(J)V

    .line 57
    iget-object v0, p0, Lcom/loc/aq;->a:Lcom/loc/ar;

    invoke-virtual {v0, p2, p3}, Lcom/loc/ar;->a(J)V

    .line 59
    return-void
.end method


# virtual methods
.method public a(Lcom/loc/aq$a;)V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/loc/aq;->a:Lcom/loc/ar;

    iget-object v1, p0, Lcom/loc/aq;->b:Lcom/loc/at;

    invoke-virtual {v1}, Lcom/loc/at;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/aq;->b:Lcom/loc/at;

    invoke-virtual {v2}, Lcom/loc/at;->a()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/aq;->b:Lcom/loc/at;

    invoke-virtual {v3}, Lcom/loc/at;->b()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/loc/ar;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/loc/aq$a;)V

    .line 70
    return-void
.end method
