.class public Lcom/loc/be;
.super Ljava/lang/Object;
.source "Cgi.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method protected constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    .line 29
    iput-object v0, p0, Lcom/loc/be;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 30
    iput-object v0, p0, Lcom/loc/be;->b:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/loc/be;->c:I

    .line 32
    iput v1, p0, Lcom/loc/be;->d:I

    .line 33
    iput v1, p0, Lcom/loc/be;->e:I

    .line 34
    iput v1, p0, Lcom/loc/be;->f:I

    .line 35
    iput v1, p0, Lcom/loc/be;->g:I

    .line 36
    iput v1, p0, Lcom/loc/be;->h:I

    .line 37
    iput v1, p0, Lcom/loc/be;->i:I

    const/16 v0, -0x71

    .line 38
    iput v0, p0, Lcom/loc/be;->j:I

    const/16 v0, 0x9

    .line 39
    iput v0, p0, Lcom/loc/be;->k:I

    .line 43
    iput p1, p0, Lcom/loc/be;->k:I

    .line 44
    return-void
.end method


# virtual methods
.method public a(Lcom/loc/be;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    if-eqz p1, :cond_0

    .line 74
    iget v0, p1, Lcom/loc/be;->k:I

    packed-switch v0, :pswitch_data_0

    .line 94
    return v2

    .line 72
    :cond_0
    return v2

    .line 76
    :pswitch_0
    iget v0, p0, Lcom/loc/be;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 79
    iget v0, p1, Lcom/loc/be;->i:I

    iget v1, p0, Lcom/loc/be;->i:I

    if-eq v0, v1, :cond_3

    .line 82
    :cond_1
    return v2

    .line 77
    :cond_2
    return v2

    .line 79
    :cond_3
    iget v0, p1, Lcom/loc/be;->h:I

    iget v1, p0, Lcom/loc/be;->h:I

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/loc/be;->g:I

    iget v1, p0, Lcom/loc/be;->g:I

    if-ne v0, v1, :cond_1

    .line 80
    return v3

    .line 85
    :pswitch_1
    iget v0, p0, Lcom/loc/be;->k:I

    if-ne v0, v3, :cond_5

    .line 88
    iget v0, p1, Lcom/loc/be;->c:I

    iget v1, p0, Lcom/loc/be;->c:I

    if-eq v0, v1, :cond_6

    .line 91
    :cond_4
    return v2

    .line 86
    :cond_5
    return v2

    .line 88
    :cond_6
    iget v0, p1, Lcom/loc/be;->d:I

    iget v1, p0, Lcom/loc/be;->d:I

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/loc/be;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/loc/be;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/be;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    return v3

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "unknown"

    .line 51
    iget v1, p0, Lcom/loc/be;->k:I

    packed-switch v1, :pswitch_data_0

    .line 65
    :goto_0
    return-object v0

    .line 54
    :pswitch_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "CDMA bid=%d, nid=%d, sid=%d"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/loc/be;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/loc/be;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/loc/be;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :pswitch_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "GSM lac=%d, cid=%d, mnc=%s"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/loc/be;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/loc/be;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/loc/be;->b:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
