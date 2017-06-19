.class public abstract Lcom/android/dialer/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/dialer/logging/Logger;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/dialerbind/ObjectFactory;->getLoggerInstance()Lcom/android/dialer/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static logCall(Lcom/android/incallui/Call;)V
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 43
    invoke-static {}, Lcom/android/dialer/logging/Logger;->getInstance()Lcom/android/dialer/logging/Logger;

    move-result-object v0

    .line 44
    .local v0, "logger":Lcom/android/dialer/logging/Logger;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0, p0}, Lcom/android/dialer/logging/Logger;->logCallImpl(Lcom/android/incallui/Call;)V

    .line 42
    :cond_0
    return-void
.end method

.method public static logInteraction(I)V
    .locals 1
    .param p0, "interaction"    # I

    .prologue
    .line 76
    invoke-static {}, Lcom/android/dialer/logging/Logger;->getInstance()Lcom/android/dialer/logging/Logger;

    move-result-object v0

    .line 77
    .local v0, "logger":Lcom/android/dialer/logging/Logger;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p0}, Lcom/android/dialer/logging/Logger;->logInteractionImpl(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public static logScreenView(ILandroid/app/Activity;)V
    .locals 5
    .param p0, "screenType"    # I
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-static {}, Lcom/android/dialer/logging/Logger;->getInstance()Lcom/android/dialer/logging/Logger;

    move-result-object v0

    .line 57
    .local v0, "logger":Lcom/android/dialer/logging/Logger;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0, p0}, Lcom/android/dialer/logging/Logger;->logScreenViewImpl(I)V

    .line 61
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/logging/ScreenEvent;->getScreenName(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "screenName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    invoke-static {v1, p1, v3}, Lcom/android/contacts/commonbind/analytics/AnalyticsUtil;->sendScreenView(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string/jumbo v2, "Logger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown screenType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public abstract logCallImpl(Lcom/android/incallui/Call;)V
.end method

.method public abstract logInteractionImpl(I)V
.end method

.method public abstract logScreenViewImpl(I)V
.end method
