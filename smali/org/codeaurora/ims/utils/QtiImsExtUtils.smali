.class public Lorg/codeaurora/ims/utils/QtiImsExtUtils;
.super Ljava/lang/Object;
.source "QtiImsExtUtils.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "QtiImsExtUtils"

    sput-object v0, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallDeflectNumber(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 144
    const-string/jumbo v1, "ims_call_deflect_number"

    .line 143
    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "deflectcall":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 151
    .end local v0    # "deflectcall":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static getConfigForDefaultImsPhoneId(Landroid/content/Context;)Landroid/os/PersistableBundle;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 407
    invoke-static {}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getImsPhoneId()I

    move-result v0

    invoke-static {p0, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getConfigForPhoneId(Landroid/content/Context;I)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private static getConfigForPhoneId(Landroid/content/Context;I)Landroid/os/PersistableBundle;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 411
    if-nez p0, :cond_0

    .line 412
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getConfigForPhoneId context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return-object v4

    .line 417
    :cond_0
    const-string/jumbo v2, "carrier_config"

    .line 416
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 418
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    if-nez v0, :cond_1

    .line 419
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getConfigForPhoneId configManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-object v4

    .line 423
    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    .line 424
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getConfigForPhoneId phoneId is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-object v4

    .line 428
    :cond_2
    invoke-static {p0, p1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getSubscriptionIdFromPhoneId(Landroid/content/Context;I)I

    move-result v1

    .line 429
    .local v1, "subId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 430
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "getConfigForPhoneId subId is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-object v4

    .line 434
    :cond_3
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    return-object v2
.end method

.method private static getImsPhoneId()I
    .locals 5

    .prologue
    .line 441
    const/4 v1, -0x1

    .line 443
    .local v1, "phoneId":I
    :try_start_0
    invoke-static {}, Lorg/codeaurora/ims/QtiImsExtManager;->getInstance()Lorg/codeaurora/ims/QtiImsExtManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codeaurora/ims/QtiImsExtManager;->getImsPhoneId()I
    :try_end_0
    .catch Lorg/codeaurora/ims/QtiImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 447
    :goto_0
    return v1

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Lorg/codeaurora/ims/QtiImsException;
    sget-object v2, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getImsPhoneId failed. Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSubscriptionIdFromPhoneId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, -0x1

    .line 454
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 455
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    if-nez v1, :cond_0

    .line 456
    return v2

    .line 459
    :cond_0
    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 461
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_1

    .line 462
    return v2

    .line 464
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    return v2
.end method

.method public static isCarrierConfigEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "carrierConfig"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 383
    invoke-static {p0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->getConfigForDefaultImsPhoneId(Landroid/content/Context;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 385
    .local v0, "b":Landroid/os/PersistableBundle;
    if-nez v0, :cond_0

    .line 386
    sget-object v1, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "isCarrierConfigEnabled bundle is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return v3

    .line 390
    :cond_0
    invoke-virtual {v0, p1, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static shallHidePreviewInVtConference(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 399
    const-string/jumbo v0, "config_hide_preview_in_vt_confcall"

    .line 398
    invoke-static {p0, v0}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCarrierConfigEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
