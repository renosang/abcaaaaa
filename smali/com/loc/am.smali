.class public Lcom/loc/am;
.super Ljava/lang/Object;
.source "DynamicSDKFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/am$1;,
        Lcom/loc/am$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/loc/am$a;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Lcom/loc/am$a;->a(Lcom/loc/am$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/am;->a:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/loc/am$a;->b(Lcom/loc/am$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/am;->b:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/loc/am$a;->c(Lcom/loc/am$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/am;->c:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/loc/am$a;->d(Lcom/loc/am$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/am;->d:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lcom/loc/am$a;->e(Lcom/loc/am$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/am;->e:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Lcom/loc/am$a;->f(Lcom/loc/am$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/am;->f:Ljava/lang/String;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/am$a;Lcom/loc/am$1;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/loc/am;-><init>(Lcom/loc/am$a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/loc/am;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/loc/am;->f:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/loc/am;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/loc/am;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/loc/am;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/loc/am;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/loc/am;->f:Ljava/lang/String;

    return-object v0
.end method
