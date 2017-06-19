.class public Lcom/loc/v$a;
.super Ljava/lang/Object;
.source "SDKInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/v$a;->d:Z

    const-string/jumbo v0, "standard"

    .line 41
    iput-object v0, p0, Lcom/loc/v$a;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/loc/v$a;->f:[Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/loc/v$a;->a:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/loc/v$a;->c:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/loc/v$a;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/loc/v$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/loc/v$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/loc/v$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/loc/v$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/loc/v$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/loc/v$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/loc/v$a;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/loc/v$a;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/loc/v$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/loc/v$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/loc/v$a;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/loc/v$a;->f:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a([Ljava/lang/String;)Lcom/loc/v$a;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/v$a;->f:[Ljava/lang/String;

    .line 80
    return-object p0
.end method

.method public a()Lcom/loc/v;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/l;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/loc/v$a;->f:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Lcom/loc/v;

    invoke-direct {v0, p0, v1}, Lcom/loc/v;-><init>(Lcom/loc/v$a;Lcom/loc/v$1;)V

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Lcom/loc/l;

    const-string/jumbo v1, "sdk packages is null"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method
