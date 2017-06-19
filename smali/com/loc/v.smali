.class public Lcom/loc/v;
.super Ljava/lang/Object;
.source "SDKInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/v$1;,
        Lcom/loc/v$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/loc/v$a;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/v;->d:Z

    const-string/jumbo v0, "standard"

    .line 9
    iput-object v0, p0, Lcom/loc/v;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/loc/v;->f:[Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/loc/v$a;->a(Lcom/loc/v$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/v;->a:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/loc/v$a;->b(Lcom/loc/v$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/v;->c:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/loc/v$a;->c(Lcom/loc/v$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/v;->b:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/loc/v$a;->d(Lcom/loc/v$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/v;->d:Z

    .line 32
    invoke-static {p1}, Lcom/loc/v$a;->e(Lcom/loc/v$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/v;->e:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/loc/v$a;->f(Lcom/loc/v$a;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/v;->f:[Ljava/lang/String;

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/v$a;Lcom/loc/v$1;)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1}, Lcom/loc/v;-><init>(Lcom/loc/v$a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/loc/v;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/loc/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/loc/v;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/loc/v;->e:Ljava/lang/String;

    return-object v0
.end method
