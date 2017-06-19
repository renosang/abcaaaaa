.class Lcom/loc/ax$1;
.super Ljava/lang/Object;
.source "ConnectionServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/ax;->a(Lcom/loc/ax$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/ax$a;

.field final synthetic b:Lcom/loc/ax;


# direct methods
.method constructor <init>(Lcom/loc/ax;Lcom/loc/ax$a;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/loc/ax$1;->b:Lcom/loc/ax;

    iput-object p2, p0, Lcom/loc/ax$1;->a:Lcom/loc/ax$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/loc/ax$1;->b:Lcom/loc/ax;

    .line 95
    invoke-static {p2}, Lcom/loc/k$a;->a(Landroid/os/IBinder;)Lcom/loc/k;

    move-result-object v1

    .line 94
    invoke-static {v0, v1}, Lcom/loc/ax;->a(Lcom/loc/ax;Lcom/loc/k;)Lcom/loc/k;

    .line 96
    iget-object v0, p0, Lcom/loc/ax$1;->a:Lcom/loc/ax$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/loc/ax$a;->a(I)V

    .line 97
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/loc/ax$1;->b:Lcom/loc/ax;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/ax;->a(Lcom/loc/ax;Lcom/loc/k;)Lcom/loc/k;

    .line 105
    return-void
.end method
