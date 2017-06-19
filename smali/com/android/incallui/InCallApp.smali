.class public Lcom/android/incallui/InCallApp;
.super Lcom/android/dialer/DialerApplication;
.source "InCallApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/dialer/DialerApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .prologue
    .line 29
    invoke-super {p0}, Lcom/android/dialer/DialerApplication;->onCreate()V

    .line 30
    const-string/jumbo v2, "InCallApp onCreate()"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/superyellowpage/OPYuloreUtil;->init(Landroid/content/Context;)V

    .line 33
    const-string/jumbo v2, "telecom"

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 34
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 36
    .local v0, "isInCall":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isInCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    if-nez v0, :cond_0

    .line 38
    invoke-static {p0}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 28
    .end local v0    # "isInCall":Z
    :cond_0
    return-void
.end method
