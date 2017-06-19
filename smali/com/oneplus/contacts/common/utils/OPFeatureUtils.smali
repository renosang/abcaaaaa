.class public final Lcom/oneplus/contacts/common/utils/OPFeatureUtils;
.super Ljava/lang/Object;
.source "OPFeatureUtils.java"


# static fields
.field private static final COUNTRY_SUPPORT_YELLOWPAGE_RECOGNIZE:[Ljava/lang/String;

.field private static final IS_OVER_SEA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 19
    new-array v0, v2, [I

    aput v2, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/contacts/common/utils/OPFeatureUtils;->IS_OVER_SEA:Z

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 22
    const-string/jumbo v1, "CN"

    aput-object v1, v0, v3

    .line 23
    const-string/jumbo v1, "IN"

    aput-object v1, v0, v2

    .line 21
    sput-object v0, Lcom/oneplus/contacts/common/utils/OPFeatureUtils;->COUNTRY_SUPPORT_YELLOWPAGE_RECOGNIZE:[Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDangerRecognizedOn(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "currentIso":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/oneplus/contacts/common/utils/OPFeatureUtils;->isDangerRecognizedOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isDangerRecognizedOn(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p1}, Lcom/oneplus/contacts/common/utils/OPFeatureUtils;->isSupportYellowPageRecognized(Ljava/lang/String;)Z

    move-result v0

    .line 53
    .local v0, "supportYellow":Z
    if-eqz v0, :cond_0

    .line 54
    invoke-static {p0}, Lcom/oneplus/contacts/common/utils/OPFeatureUtils;->isDangerRecognizedOnFromDB(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 56
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static isDangerRecognizedOnFromDB(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "op_danger_recognize_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStrangerRecognizedOn(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "currentIso":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/oneplus/contacts/common/utils/OPFeatureUtils;->isStrangerRecognizedOn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isStrangerRecognizedOn(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p1}, Lcom/oneplus/contacts/common/utils/OPFeatureUtils;->isSupportYellowPageRecognized(Ljava/lang/String;)Z

    move-result v0

    .line 66
    .local v0, "supportYellow":Z
    if-eqz v0, :cond_0

    .line 67
    invoke-static {p0}, Lcom/oneplus/contacts/common/utils/OPFeatureUtils;->isStrangerRecognizedOnFromDB(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 69
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static isStrangerRecognizedOnFromDB(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "op_stranger_recognize_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportYellowPageRecognized(Ljava/lang/String;)Z
    .locals 1
    .param p0, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-boolean v0, Lcom/oneplus/contacts/common/utils/OPFeatureUtils;->IS_OVER_SEA:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
