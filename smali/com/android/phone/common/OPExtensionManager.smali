.class public Lcom/android/phone/common/OPExtensionManager;
.super Ljava/lang/Object;
.source "OPExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/OPExtensionManager$OPExtTelecomServiceConnection;
    }
.end annotation


# static fields
.field private static mOPTelecomSvc:Lcom/android/phone/common/IOPTelecomService;

.field private static sMe:Lcom/android/phone/common/OPExtensionManager;


# instance fields
.field private conn:Lcom/android/phone/common/OPExtensionManager$OPExtTelecomServiceConnection;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static synthetic -set0(Lcom/android/phone/common/IOPTelecomService;)Lcom/android/phone/common/IOPTelecomService;
    .locals 0

    sput-object p0, Lcom/android/phone/common/OPExtensionManager;->mOPTelecomSvc:Lcom/android/phone/common/IOPTelecomService;

    return-object p0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/android/phone/common/OPExtensionManager;->conn:Lcom/android/phone/common/OPExtensionManager$OPExtTelecomServiceConnection;

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 43
    iput-object v0, p0, Lcom/android/phone/common/OPExtensionManager;->mContext:Landroid/content/Context;

    .line 48
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/common/OPExtensionManager;->bindService()V

    .line 39
    return-void

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/android/phone/common/OPExtensionManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private bindService()V
    .locals 4

    .prologue
    .line 74
    const-string/jumbo v1, "OPExtensionManager"

    const-string/jumbo v2, "onBind"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v1, Lcom/android/phone/common/OPExtensionManager$OPExtTelecomServiceConnection;

    invoke-direct {v1, p0}, Lcom/android/phone/common/OPExtensionManager$OPExtTelecomServiceConnection;-><init>(Lcom/android/phone/common/OPExtensionManager;)V

    iput-object v1, p0, Lcom/android/phone/common/OPExtensionManager;->conn:Lcom/android/phone/common/OPExtensionManager$OPExtTelecomServiceConnection;

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.server.telecom"

    const-string/jumbo v2, "com.android.server.telecom.oneplus.OPTelecomService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    iget-object v1, p0, Lcom/android/phone/common/OPExtensionManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/common/OPExtensionManager;->conn:Lcom/android/phone/common/OPExtensionManager$OPExtTelecomServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 73
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/phone/common/OPExtensionManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const-string/jumbo v0, "OPExtensionManager"

    const-string/jumbo v1, "getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v0, Lcom/android/phone/common/OPExtensionManager;->sMe:Lcom/android/phone/common/OPExtensionManager;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/phone/common/OPExtensionManager;

    invoke-direct {v0, p0}, Lcom/android/phone/common/OPExtensionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/common/OPExtensionManager;->sMe:Lcom/android/phone/common/OPExtensionManager;

    .line 68
    const-string/jumbo v0, "OPExtensionManager"

    const-string/jumbo v1, "OPExtensionManager has not been initialized first, it might cause some problem."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    sget-object v0, Lcom/android/phone/common/OPExtensionManager;->sMe:Lcom/android/phone/common/OPExtensionManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const-string/jumbo v0, "OPExtensionManager"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v0, Lcom/android/phone/common/OPExtensionManager;->sMe:Lcom/android/phone/common/OPExtensionManager;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/android/phone/common/OPExtensionManager;

    invoke-direct {v0, p0}, Lcom/android/phone/common/OPExtensionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/common/OPExtensionManager;->sMe:Lcom/android/phone/common/OPExtensionManager;

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public isCdmaDialing()Z
    .locals 4

    .prologue
    .line 90
    const-string/jumbo v1, "OPExtensionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCdmaDialing mOPTelecomSvc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/common/OPExtensionManager;->mOPTelecomSvc:Lcom/android/phone/common/IOPTelecomService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v1, Lcom/android/phone/common/OPExtensionManager;->mOPTelecomSvc:Lcom/android/phone/common/IOPTelecomService;

    if-eqz v1, :cond_0

    .line 93
    :try_start_0
    sget-object v1, Lcom/android/phone/common/OPExtensionManager;->mOPTelecomSvc:Lcom/android/phone/common/IOPTelecomService;

    invoke-interface {v1}, Lcom/android/phone/common/IOPTelecomService;->isCdmaDialing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "OPExtensionManager"

    const-string/jumbo v2, "Error calling IOPTelecomService#isCdmaDialing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public shouldStartUIForContact()Z
    .locals 4

    .prologue
    .line 102
    const-string/jumbo v1, "OPExtensionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldStartUIForContact mOPTelecomSvc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/common/OPExtensionManager;->mOPTelecomSvc:Lcom/android/phone/common/IOPTelecomService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v1, Lcom/android/phone/common/OPExtensionManager;->mOPTelecomSvc:Lcom/android/phone/common/IOPTelecomService;

    if-eqz v1, :cond_0

    .line 105
    :try_start_0
    sget-object v1, Lcom/android/phone/common/OPExtensionManager;->mOPTelecomSvc:Lcom/android/phone/common/IOPTelecomService;

    invoke-interface {v1}, Lcom/android/phone/common/IOPTelecomService;->shouldStartUIForContact()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "OPExtensionManager"

    const-string/jumbo v2, "Error calling IOPTelecomService#shouldStartUIForContact"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
