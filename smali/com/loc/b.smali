.class Lcom/loc/b;
.super Ljava/lang/Object;
.source "AMapLocationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/a;


# direct methods
.method constructor <init>(Lcom/loc/a;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/loc/b;->a:Lcom/loc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/loc/b;->a:Lcom/loc/a;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/loc/a;->h:Landroid/os/Messenger;

    .line 240
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/loc/b;->a:Lcom/loc/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/loc/a;->h:Landroid/os/Messenger;

    .line 228
    return-void
.end method
