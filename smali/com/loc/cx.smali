.class public Lcom/loc/cx;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field final synthetic a:Lcom/loc/cb;


# direct methods
.method constructor <init>(Lcom/loc/cb;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/loc/cx;->a:Lcom/loc/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/loc/cx;->a:Lcom/loc/cb;

    invoke-static {v0}, Lcom/loc/cb;->a(Lcom/loc/cb;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method
