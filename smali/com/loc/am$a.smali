.class Lcom/loc/am$a;
.super Ljava/lang/Object;
.source "DynamicSDKFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "copy"

    .line 120
    iput-object v0, p0, Lcom/loc/am$a;->f:Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/loc/am$a;->a:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lcom/loc/am$a;->b:Ljava/lang/String;

    .line 126
    iput-object p3, p0, Lcom/loc/am$a;->c:Ljava/lang/String;

    .line 127
    iput-object p4, p0, Lcom/loc/am$a;->d:Ljava/lang/String;

    .line 128
    iput-object p5, p0, Lcom/loc/am$a;->e:Ljava/lang/String;

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/loc/am$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/loc/am$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/loc/am$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/loc/am$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/loc/am$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/loc/am$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/loc/am$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/loc/am$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/loc/am$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/loc/am$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/loc/am$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/loc/am$a;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/loc/am$a;
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/loc/am$a;->f:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method a()Lcom/loc/am;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lcom/loc/am;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/loc/am;-><init>(Lcom/loc/am$a;Lcom/loc/am$1;)V

    return-object v0
.end method
