.class Lcom/android/phone/common/OPExtensionManager$OPExtTelecomServiceConnection;
.super Ljava/lang/Object;
.source "OPExtensionManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/common/OPExtensionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OPExtTelecomServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/common/OPExtensionManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/common/OPExtensionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/phone/common/OPExtensionManager;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/phone/common/OPExtensionManager$OPExtTelecomServiceConnection;->this$0:Lcom/android/phone/common/OPExtensionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 127
    const-string/jumbo v0, "OPExtensionManager"

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {p2}, Lcom/android/phone/common/IOPTelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/common/IOPTelecomService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/common/OPExtensionManager;->-set0(Lcom/android/phone/common/IOPTelecomService;)Lcom/android/phone/common/IOPTelecomService;

    .line 126
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 121
    const-string/jumbo v0, "OPExtensionManager"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/common/OPExtensionManager;->-set0(Lcom/android/phone/common/IOPTelecomService;)Lcom/android/phone/common/IOPTelecomService;

    .line 120
    return-void
.end method
