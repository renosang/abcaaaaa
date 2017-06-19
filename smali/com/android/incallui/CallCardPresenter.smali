.class public Lcom/android/incallui/CallCardPresenter;
.super Lcom/android/incallui/Presenter;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallEventListener;
.implements Lcom/android/incallui/CallList$CallUpdateListener;
.implements Lcom/android/incallui/DistanceHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardPresenter$CallCardUi;,
        Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;,
        Lcom/android/incallui/CallCardPresenter$EmergencyCallListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallPresenter$InCallEventListener;",
        "Lcom/android/incallui/CallList$CallUpdateListener;",
        "Lcom/android/incallui/DistanceHelper$Listener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallTimer:Lcom/android/incallui/CallTimer;

.field private mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDistanceHelper:Lcom/android/incallui/DistanceHelper;

.field private final mEmergencyCallListener:Lcom/android/incallui/CallCardPresenter$EmergencyCallListener;

.field private mHasShownToast:Z

.field private mInCallContactInteractions:Lcom/android/incallui/InCallContactInteractions;

.field private mIsCTAMode:Z

.field private mIsFullscreen:Z

.field private mLocationFromGaoDe:Lcom/android/incallui/oneplus/OPLocation;

.field private mOPCallState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private mOldCallState:I

.field private mPrimary:Lcom/android/incallui/Call;

.field private mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mSecondary:Lcom/android/incallui/Call;

.field private mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mSpinnerShowing:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "isPrimary"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/CallCardPresenter;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 104
    invoke-static {}, Lcom/android/incalluibind/ObjectFactory;->newEmergencyCallListener()Lcom/android/incallui/CallCardPresenter$EmergencyCallListener;

    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mEmergencyCallListener:Lcom/android/incallui/CallCardPresenter$EmergencyCallListener;

    .line 114
    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mSpinnerShowing:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mHasShownToast:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    .line 132
    iput-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsCTAMode:Z

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mLocationFromGaoDe:Lcom/android/incallui/oneplus/OPLocation;

    .line 173
    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/CallCardPresenter$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardPresenter$1;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    .line 171
    return-void
.end method

.method private canVibrateWhenAccepted()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1645
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "op_vibrate_on_accepted"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCallProviderLabel(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1153
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCallStateIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1207
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;
    .locals 1
    .param p1, "callList"    # Lcom/android/incallui/CallList;
    .param p2, "ignore"    # Lcom/android/incallui/Call;
    .param p3, "skipDisconnected"    # Z

    .prologue
    .line 833
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 834
    .local v0, "retval":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    .line 835
    return-object v0

    .line 840
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getSecondActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 841
    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    .line 842
    return-object v0

    .line 848
    :cond_1
    if-nez p3, :cond_3

    .line 849
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 850
    if-eqz v0, :cond_2

    if-eq v0, p2, :cond_2

    .line 851
    return-object v0

    .line 853
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 854
    if-eqz v0, :cond_3

    if-eq v0, p2, :cond_3

    .line 855
    return-object v0

    .line 860
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 861
    if-eqz v0, :cond_4

    if-eq v0, p2, :cond_4

    .line 862
    return-object v0

    .line 866
    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 868
    return-object v0
.end method

.method private getConferencePhoto(Lcom/android/incallui/Call;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1322
    const/4 v0, 0x0

    .line 1323
    .local v0, "isGenericConference":Z
    sget-object v3, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getConferencePhoto: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    if-eqz v0, :cond_0

    .line 1326
    const v2, 0x7f02015e

    .line 1327
    .local v2, "resId":I
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1328
    .local v1, "photo":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 1330
    return-object v1

    .line 1326
    .end local v1    # "photo":Landroid/graphics/drawable/Drawable;
    .end local v2    # "resId":I
    :cond_0
    const v2, 0x7f020253

    .restart local v2    # "resId":I
    goto :goto_0
.end method

.method private getConferenceString(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1312
    const/4 v0, 0x0

    .line 1313
    .local v0, "isGenericConference":Z
    sget-object v2, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getConferenceString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    if-eqz v0, :cond_0

    .line 1316
    const v1, 0x7f0d0393

    .line 1317
    .local v1, "resId":I
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1316
    .end local v1    # "resId":I
    :cond_0
    const v1, 0x7f0d038d

    .restart local v1    # "resId":I
    goto :goto_0
.end method

.method private getConnectionLabel()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1175
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v3

    .line 1176
    .local v3, "statusHints":Landroid/telecom/StatusHints;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1180
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1182
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1185
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/GatewayInfo;->getGatewayProviderPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1184
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1186
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 1177
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    invoke-virtual {v3}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1187
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 1188
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "Gateway Application Not Found."

    invoke-static {p0, v4, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1189
    return-object v6

    .line 1193
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    return-object v6
.end method

.method private getGatewayNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1135
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/GatewayInfo;->getGatewayAddress()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1138
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getIntFromSettingsSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "handle"    # Landroid/net/Uri;

    .prologue
    .line 1279
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static hasCallSubject(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1407
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1408
    const-string/jumbo v1, "android.telecom.extra.CALL_SUBJECT"

    .line 1407
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hasOutgoingGatewayCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1217
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v1, :cond_0

    .line 1218
    return v0

    .line 1220
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1221
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/GatewayInfo;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1220
    :cond_1
    :goto_0
    return v0

    .line 1221
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isGeocoderLocationNeeded(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isGeocoderLocationNeeded getState() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 184
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 188
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 186
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 187
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method private isPrimaryCallActive()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1307
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSipCall(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1649
    if-nez p1, :cond_0

    .line 1650
    const/4 v0, 0x0

    return v0

    .line 1652
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 1640
    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/incallui/oneplus/record/OPRecordLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    return-void
.end method

.method private maybeClearSessionModificationState(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 703
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v0

    .line 704
    const/4 v1, 0x3

    .line 703
    if-eq v0, v1, :cond_0

    .line 705
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 702
    :cond_0
    return-void
.end method

.method private maybeSendAccessibilityEvent(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Z)V
    .locals 0
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "primaryChanged"    # Z

    .prologue
    .line 1349
    return-void
.end method

.method private maybeShowHdAudioIcon()V
    .locals 3

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->isPrimaryCallActive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getLastForwardedNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 579
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v1, v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showHdAudioIndicator(Z)V

    .line 575
    return-void

    .line 577
    :cond_0
    const/4 v0, 0x0

    .local v0, "showHdAudioIndicator":Z
    goto :goto_0
.end method

.method private maybeShowManageConferenceCallButton()V
    .locals 2

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->shouldShowManageConference()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showManageConferenceCallButton(Z)V

    .line 585
    return-void
.end method

.method private maybeShowProgressSpinner(II)V
    .locals 0
    .param p1, "callState"    # I
    .param p2, "sessionModificationState"    # I

    .prologue
    .line 596
    return-void
.end method

.method private maybeStartSearch(Lcom/android/incallui/Call;Z)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isPrimary"    # Z

    .prologue
    .line 697
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardPresenter;->isGeocoderLocationNeeded(Lcom/android/incallui/Call;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;ZZ)V

    goto :goto_0
.end method

.method private onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "isPrimary"    # Z

    .prologue
    .line 721
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 722
    :cond_0
    if-nez p3, :cond_4

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 723
    .local v1, "entryMatchesExistingCall":Z
    :goto_0
    if-eqz v1, :cond_5

    .line 724
    invoke-direct {p0, p2, p3}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 729
    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 730
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 731
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getLogState()Lcom/android/incallui/Call$LogState;

    move-result-object v2

    iget v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactLookupResult:I

    iput v3, v2, Lcom/android/incallui/Call$LogState;->contactLookupResult:I

    .line 733
    :cond_1
    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 734
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/incallui/CallerInfoUtils;->sendViewNotification(Landroid/content/Context;Landroid/net/Uri;)V

    .line 719
    :cond_2
    return-void

    .line 721
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "entryMatchesExistingCall":Z
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 722
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 726
    .restart local v1    # "entryMatchesExistingCall":Z
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dropping stale contact lookup info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-nez v1, :cond_0

    .line 740
    return-void

    .line 743
    :cond_0
    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 744
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 746
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    .line 745
    invoke-static {v1, v2}, Lcom/android/incallui/VideoCallPresenter;->showIncomingVideo(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 747
    .local v0, "showContactPhoto":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    invoke-interface {v1, v2, v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 738
    .end local v0    # "showContactPhoto":Z
    :cond_1
    return-void

    .line 745
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "showContactPhoto":Z
    goto :goto_0
.end method

.method private opVirbate(Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 2
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    const/4 v1, 0x3

    .line 1553
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->canVibrateWhenAccepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1554
    return-void

    .line 1557
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    .line 1558
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isCdmaPhone(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1559
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    .line 1560
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1561
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1552
    :cond_1
    :goto_0
    return-void

    .line 1562
    :cond_2
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_1

    .line 1563
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isCdmaDialing(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1564
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->virbate()V

    goto :goto_0

    .line 1568
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_1

    .line 1569
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1570
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_1

    .line 1571
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->virbate()V

    goto :goto_0
.end method

.method private static sHA1(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1530
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1531
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x40

    .line 1530
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1532
    .local v5, "info":Landroid/content/pm/PackageInfo;
    iget-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 1533
    .local v1, "cert":[B
    const-string/jumbo v8, "SHA1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 1534
    .local v6, "md":Ljava/security/MessageDigest;
    invoke-virtual {v6, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 1535
    .local v7, "publicKey":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1536
    .local v3, "hexString":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_1

    .line 1537
    aget-byte v8, v7, v4

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 1538
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1537
    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1539
    .local v0, "appendString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 1540
    const-string/jumbo v8, "0"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1542
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1543
    const-string/jumbo v8, ":"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1536
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1545
    .end local v0    # "appendString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    return-object v8

    .line 1546
    .end local v1    # "cert":[B
    .end local v3    # "hexString":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v5    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "md":Ljava/security/MessageDigest;
    .end local v7    # "publicKey":[B
    :catch_0
    move-exception v2

    .line 1547
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1549
    const/4 v8, 0x0

    return-object v8
.end method

.method private setCallbackNumber()V
    .locals 0

    .prologue
    .line 623
    return-void
.end method

.method private shouldRefreshPrimaryInfo(ZLcom/android/incallui/CallCardPresenter$CallCardUi;Z)Z
    .locals 4
    .param p1, "primaryChanged"    # Z
    .param p2, "ui"    # Lcom/android/incallui/CallCardPresenter$CallCardUi;
    .param p3, "shouldShowCallSubject"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 524
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v2, :cond_0

    .line 525
    return v1

    .line 527
    :cond_0
    if-nez p1, :cond_1

    .line 528
    invoke-interface {p2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->isManageConferenceVisible()Z

    move-result v2

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->shouldShowManageConference()Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 527
    :cond_1
    :goto_0
    return v0

    .line 529
    :cond_2
    invoke-interface {p2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->isCallSubjectVisible()Z

    move-result v2

    if-ne v2, p3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private shouldShowCallSubject(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1390
    const/4 v0, 0x0

    return v0
.end method

.method private shouldShowManageConference()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 615
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v1, :cond_0

    .line 616
    return v0

    .line 619
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 620
    iget-boolean v1, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    if-eqz v1, :cond_2

    .line 619
    :cond_1
    :goto_0
    return v0

    .line 620
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldShowNoteSentToast(Lcom/android/incallui/Call;)Z
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1402
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/android/incallui/CallCardPresenter;->hasCallSubject(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 1403
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 1402
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1403
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1402
    goto :goto_0
.end method

.method private startContactInfoSearch(Lcom/android/incallui/Call;ZZ)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "isPrimary"    # Z
    .param p3, "isIncoming"    # Z

    .prologue
    .line 714
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 716
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    new-instance v1, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;

    invoke-direct {v1, p0, p2}, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;-><init>(Lcom/android/incallui/CallCardPresenter;Z)V

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 713
    return-void
.end method

.method private updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "isPrimary"    # Z

    .prologue
    .line 814
    if-eqz p2, :cond_0

    .line 815
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 816
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    .line 813
    :goto_0
    return-void

    .line 818
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 819
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo()V

    goto :goto_0
.end method

.method private updateContactInteractions()V
    .locals 0

    .prologue
    .line 770
    return-void
.end method

.method private updatePrimaryCallState()V
    .locals 12

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez v0, :cond_2

    const/4 v10, 0x0

    .line 552
    .local v10, "isWorkCall":Z
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->setThemeColors()V

    .line 553
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isIncomingConfCall()Z

    move-result v9

    .line 554
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 555
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    .line 556
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    .line 557
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v3

    .line 558
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    .line 559
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getConnectionLabel()Ljava/lang/String;

    move-result-object v5

    .line 560
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getCallStateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 561
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayNumber()Ljava/lang/String;

    move-result-object v7

    .line 562
    iget-object v8, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v11, 0x8

    invoke-virtual {v8, v11}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v8

    .line 554
    invoke-interface/range {v0 .. v10}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V

    .line 566
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeShowHdAudioIcon()V

    .line 567
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->setCallbackNumber()V

    .line 547
    .end local v10    # "isWorkCall":Z
    :cond_0
    return-void

    .line 549
    :cond_1
    const/4 v10, 0x1

    .restart local v10    # "isWorkCall":Z
    goto :goto_0

    .line 551
    .end local v10    # "isWorkCall":Z
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-wide v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v10, 0x1

    .restart local v10    # "isWorkCall":Z
    goto :goto_0

    .end local v10    # "isWorkCall":Z
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "isWorkCall":Z
    goto :goto_0

    .line 553
    :cond_4
    const/4 v9, 0x1

    .local v9, "isConfCall":Z
    goto :goto_1
.end method

.method private updatePrimaryDisplayInfo()V
    .locals 27

    .prologue
    .line 948
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 949
    .local v2, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v2, :cond_0

    .line 952
    sget-object v3, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updatePrimaryDisplayInfo called but ui is null!"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    return-void

    .line 956
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v3, :cond_1

    .line 958
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v2 .. v12}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZZZ)V

    .line 959
    return-void

    .line 965
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    .line 964
    invoke-static {v3, v4}, Lcom/android/incallui/VideoCallPresenter;->showIncomingVideo(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v9, 0x0

    .line 968
    .local v9, "showContactPhoto":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->hasProperty(I)Z

    move-result v10

    .line 970
    .local v10, "hasWorkCallProperty":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 971
    sget-object v3, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Update primary display info for conference call."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/incallui/CallCardPresenter;->getConferenceString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    .line 978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/incallui/CallCardPresenter;->getConferencePhoto(Lcom/android/incallui/Call;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 974
    const/4 v3, 0x0

    .line 976
    const/4 v5, 0x0

    .line 977
    const/4 v6, 0x0

    .line 979
    const/4 v8, 0x0

    .line 982
    const/4 v11, 0x0

    .line 983
    const/4 v12, 0x0

    .line 973
    invoke-interface/range {v2 .. v12}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZZZ)V

    .line 947
    :goto_1
    return-void

    .line 964
    .end local v9    # "showContactPhoto":Z
    .end local v10    # "hasWorkCallProperty":Z
    :cond_2
    const/4 v9, 0x1

    .restart local v9    # "showContactPhoto":Z
    goto :goto_0

    .line 984
    .restart local v10    # "hasWorkCallProperty":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v3, :cond_9

    .line 985
    sget-object v3, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Update primary display info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v13

    .line 1015
    .local v13, "name":Ljava/lang/String;
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 1017
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-wide v4, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_6

    const/16 v26, 0x1

    .line 1025
    .local v26, "isWorkContact":Z
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mYuloreInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isVoiceMail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v4, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/incallui/CallCardPresenter;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v12

    .line 1027
    .local v12, "number":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    if-eqz v3, :cond_4

    .line 1028
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-eqz v3, :cond_7

    .line 1035
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v15, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 1037
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    .line 1038
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v0, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    move/from16 v17, v0

    .line 1040
    if-nez v10, :cond_8

    move/from16 v19, v26

    .line 1041
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v0, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    move/from16 v20, v0

    .line 1042
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v0, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergencyNumber:Z

    move/from16 v21, v0

    move-object v11, v2

    move/from16 v18, v9

    .line 1031
    invoke-interface/range {v11 .. v21}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZZZ)V

    .line 1046
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updateContactInteractions()V

    goto/16 :goto_1

    .line 1015
    .end local v12    # "number":Ljava/lang/String;
    .end local v26    # "isWorkContact":Z
    :cond_5
    const/4 v14, 0x0

    .local v14, "nameIsNumber":Z
    goto/16 :goto_2

    .line 1017
    .end local v14    # "nameIsNumber":Z
    :cond_6
    const/16 v26, 0x0

    .restart local v26    # "isWorkContact":Z
    goto/16 :goto_3

    .line 1029
    .restart local v12    # "number":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v3, v3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    invoke-interface {v2, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimarYuloreInfo(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;)V

    goto :goto_5

    .line 1040
    :cond_8
    const/16 v19, 0x1

    goto :goto_4

    .line 1049
    .end local v12    # "number":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v26    # "isWorkContact":Z
    :cond_9
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v15, v2

    invoke-interface/range {v15 .. v25}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZZZ)V

    goto/16 :goto_1
.end method

.method private updateSecondaryDisplayInfo()V
    .locals 13

    .prologue
    .line 1061
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 1062
    .local v0, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v0, :cond_0

    .line 1063
    return-void

    .line 1066
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v1, :cond_1

    .line 1069
    iget-boolean v8, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    .line 1068
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1069
    const/4 v7, 0x0

    .line 1068
    invoke-interface/range {v0 .. v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1070
    return-void

    .line 1073
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1076
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->getConferenceString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    .line 1079
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->getCallProviderLabel(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v5

    .line 1081
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v7

    .line 1082
    iget-boolean v8, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    .line 1075
    const/4 v1, 0x1

    .line 1077
    const/4 v3, 0x0

    .line 1078
    const/4 v4, 0x0

    .line 1080
    const/4 v6, 0x1

    .line 1074
    invoke-interface/range {v0 .. v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1084
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->getConferenceString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardPresenter;->getConferencePhoto(Lcom/android/incallui/Call;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondaryPhoto(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V

    .line 1060
    :goto_0
    return-void

    .line 1086
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_5

    .line 1087
    sget-object v1, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSecondaryDisplayInfo() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    .line 1089
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1091
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    if-eqz v1, :cond_4

    .line 1092
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondaryYuloreInfo(Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;)V

    goto :goto_0

    .line 1089
    :cond_3
    const/4 v3, 0x0

    .local v3, "nameIsNumber":Z
    goto :goto_1

    .line 1098
    .end local v3    # "nameIsNumber":Z
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 1099
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->getCallProviderLabel(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v5

    .line 1101
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v7

    .line 1102
    iget-boolean v8, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    .line 1095
    const/4 v1, 0x1

    .line 1100
    const/4 v6, 0x0

    .line 1094
    invoke-interface/range {v0 .. v8}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1104
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v6, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 1105
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v7, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isContactsExist:Z

    .line 1106
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v8, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    .line 1107
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-boolean v9, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergencyNumber:Z

    move-object v4, v0

    move-object v5, v2

    .line 1104
    invoke-interface/range {v4 .. v9}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondaryPhoto(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V

    goto :goto_0

    .line 1113
    .end local v2    # "name":Ljava/lang/String;
    :cond_5
    iget-boolean v12, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    .line 1112
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1113
    const/4 v11, 0x0

    move-object v4, v0

    .line 1112
    invoke-interface/range {v4 .. v12}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZ)V

    goto :goto_0
.end method

.method private virbate()V
    .locals 4

    .prologue
    .line 1578
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1579
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1577
    return-void
.end method


# virtual methods
.method canAutoRecording(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z
    .locals 9
    .param p1, "primaryEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "secEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1604
    invoke-static {}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isSupportCallRecorder()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1605
    return v4

    .line 1607
    :cond_0
    iget-object v8, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1608
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v8, "op_is_ar_enable"

    invoke-direct {p0, v0, v8, v4}, Lcom/android/incallui/CallCardPresenter;->getIntFromSettingsSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v7, :cond_1

    move v2, v7

    .line 1609
    .local v2, "isAREnable":Z
    :goto_0
    if-nez v2, :cond_2

    .line 1610
    return v2

    .end local v2    # "isAREnable":Z
    :cond_1
    move v2, v4

    .line 1608
    goto :goto_0

    .line 1613
    .restart local v2    # "isAREnable":Z
    :cond_2
    const-string/jumbo v8, "op_ar_range"

    invoke-direct {p0, v0, v8, v4}, Lcom/android/incallui/CallCardPresenter;->getIntFromSettingsSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1614
    .local v6, "range":I
    packed-switch v6, :pswitch_data_0

    .line 1631
    return v4

    .line 1616
    :pswitch_0
    return v7

    .line 1618
    :pswitch_1
    if-nez p1, :cond_4

    .line 1619
    .local v4, "isStarred01":Z
    :cond_3
    :goto_1
    return v4

    .line 1618
    .end local v4    # "isStarred01":Z
    :cond_4
    iget v8, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->starred:I

    if-ne v8, v7, :cond_3

    move v4, v7

    goto :goto_1

    .line 1621
    :pswitch_2
    const-string/jumbo v8, "op_is_ar_strange_enable"

    invoke-direct {p0, v0, v8, v4}, Lcom/android/incallui/CallCardPresenter;->getIntFromSettingsSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v7, :cond_5

    move v3, v7

    .line 1622
    .local v3, "isARStrangeEnable":Z
    :goto_2
    if-eqz v3, :cond_7

    .line 1623
    if-nez p1, :cond_6

    move v5, v4

    .line 1624
    .local v5, "isStranger01":Z
    :goto_3
    if-nez v5, :cond_7

    .line 1625
    return v7

    .end local v3    # "isARStrangeEnable":Z
    .end local v5    # "isStranger01":Z
    :cond_5
    move v3, v4

    .line 1621
    goto :goto_2

    .line 1623
    .restart local v3    # "isARStrangeEnable":Z
    :cond_6
    iget-boolean v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isContactsExist:Z

    goto :goto_3

    .line 1628
    :cond_7
    if-nez p1, :cond_8

    move v1, v4

    .line 1629
    .local v1, "flag03":Z
    :goto_4
    return v1

    .line 1628
    .end local v1    # "flag03":Z
    :cond_8
    iget-boolean v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isAutoRecording:Z

    goto :goto_4

    .line 1614
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public endCallClicked()V
    .locals 3

    .prologue
    .line 1267
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v1, :cond_0

    .line 1268
    return-void

    .line 1271
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Disconnecting call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1272
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1273
    .local v0, "callId":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/incallui/Call;->setState(I)V

    .line 1274
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    .line 1275
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 1266
    return-void
.end method

.method getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 4
    .param p1, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 1230
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 1231
    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;

    .line 1232
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 1229
    invoke-static {v1, v2, v3}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPreferredDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 1233
    .local v0, "preferredName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1234
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    return-object v1

    .line 1236
    :cond_0
    return-object v0
.end method

.method getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 4
    .param p1, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 1247
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 1248
    iget-object v2, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;

    .line 1249
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 1246
    invoke-static {v1, v2, v3}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPreferredDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    .local v0, "preferredName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1251
    const/4 v1, 0x0

    return-object v1

    .line 1253
    :cond_0
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    return-object v1
.end method

.method public getPrimaryCall()Lcom/android/incallui/Call;
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    return-object v0
.end method

.method getRecordFilePrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1586
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1591
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1596
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1586
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_0

    .line 1587
    const-string/jumbo v1, "getRecordFilePrefix Retrieve mPrimaryContactInfo..."

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->log(Ljava/lang/String;)V

    .line 1588
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1591
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v1, :cond_1

    .line 1592
    const-string/jumbo v1, "getRecordFilePrefix Retrieve mSecondaryContactInfo..."

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->log(Ljava/lang/String;)V

    .line 1593
    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {p0, v2}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 194
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    .line 197
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "oem.ctaSwitch.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iput-boolean v4, p0, Lcom/android/incallui/CallCardPresenter;->mIsCTAMode:Z

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/incalluibind/ObjectFactory;->newDistanceHelper(Landroid/content/Context;Lcom/android/incallui/DistanceHelper$Listener;)Lcom/android/incallui/DistanceHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mDistanceHelper:Lcom/android/incallui/DistanceHelper;

    .line 203
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactsPreferencesFactory;->newContactsPreferences(Landroid/content/Context;)Lcom/android/contacts/common/preference/ContactsPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 206
    if-eqz p2, :cond_2

    .line 207
    iput-object p2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    .line 208
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, v1}, Lcom/android/incallui/CallCardPresenter;->shouldShowNoteSentToast(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 210
    .local v0, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-eqz v0, :cond_1

    .line 211
    invoke-interface {v0}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showNoteSentToast()V

    .line 214
    .end local v0    # "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 217
    invoke-virtual {p2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_3

    .line 218
    invoke-direct {p0, p2}, Lcom/android/incallui/CallCardPresenter;->isGeocoderLocationNeeded(Lcom/android/incallui/Call;)Z

    move-result v1

    invoke-direct {p0, p2, v4, v1}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;ZZ)V

    .line 224
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/incallui/CallCardPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 193
    return-void

    .line 220
    :cond_3
    invoke-direct {p0, v3, v4}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    goto :goto_0
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 470
    return-void
.end method

.method public onChildNumberChange()V
    .locals 1

    .prologue
    .line 514
    const-string/jumbo v0, "onChildNumberChange"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 517
    return-void

    .line 519
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    .line 513
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    const/16 v1, 0x80

    .line 461
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryCallState()V

    .line 463
    invoke-virtual {p1, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    .line 464
    invoke-virtual {p2, v1}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v1

    .line 463
    if-eq v0, v1, :cond_0

    .line 465
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->maybeShowManageConferenceCallButton()V

    .line 460
    :cond_0
    return-void
.end method

.method public onFullscreenModeChanged(Z)V
    .locals 1
    .param p1, "isFullscreenMode"    # Z

    .prologue
    .line 1289
    iput-boolean p1, p0, Lcom/android/incallui/CallCardPresenter;->mIsFullscreen:Z

    .line 1290
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 1291
    .local v0, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v0, :cond_0

    .line 1292
    return-void

    .line 1288
    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 272
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/CallCardPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 270
    return-void
.end method

.method public onLastForwardedNumberChange()V
    .locals 1

    .prologue
    .line 501
    const-string/jumbo v0, "onLastForwardedNumberChange"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 504
    return-void

    .line 506
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    .line 500
    return-void
.end method

.method public onSessionModificationStateChange(I)V
    .locals 2
    .param p1, "sessionModificationState"    # I

    .prologue
    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSessionModificationStateChange : sessionModificationState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 22
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 277
    sget-object v4, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onStateChange() oldState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", newState:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v21

    check-cast v21, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 279
    .local v21, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v21, :cond_0

    .line 280
    return-void

    .line 284
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/CallCardPresenter;->mOPCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 287
    const/16 v17, 0x0

    .line 288
    .local v17, "primary":Lcom/android/incallui/Call;
    const/16 v19, 0x0

    .line 290
    .local v19, "secondary":Lcom/android/incallui/Call;
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_f

    .line 291
    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v17

    .line 306
    .end local v17    # "primary":Lcom/android/incallui/Call;
    .end local v19    # "secondary":Lcom/android/incallui/Call;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mInCallContactInteractions:Lcom/android/incallui/InCallContactInteractions;

    if-eqz v4, :cond_3

    .line 307
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_3

    .line 308
    :cond_2
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_13

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showContactContext(Z)V

    .line 311
    :cond_3
    sget-object v4, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Primary call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-object v4, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Secondary call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lcom/android/incallui/Call;->areSameNumber(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v4

    .line 314
    if-eqz v4, :cond_14

    const/16 v18, 0x0

    .line 316
    .local v18, "primaryChanged":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lcom/android/incallui/Call;->areSameNumber(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v4

    .line 316
    if-eqz v4, :cond_15

    const/16 v20, 0x0

    .line 319
    .local v20, "secondaryChanged":Z
    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v16, v0

    .line 321
    .local v16, "previousPrimary":Lcom/android/incallui/Call;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    .line 323
    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/incallui/CallCardPresenter;->shouldShowNoteSentToast(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 324
    invoke-interface/range {v21 .. v21}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showNoteSentToast()V

    .line 331
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/CallCardPresenter;->shouldShowCallSubject(Lcom/android/incallui/Call;)Z

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v4}, Lcom/android/incallui/CallCardPresenter;->shouldRefreshPrimaryInfo(ZLcom/android/incallui/CallCardPresenter$CallCardUi;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 333
    if-eqz v16, :cond_5

    .line 335
    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    .line 336
    const/4 v6, 0x0

    .line 335
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/incallui/CallCardPresenter;->maybeShowProgressSpinner(II)V

    .line 337
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v4, v6, v0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 339
    :cond_5
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v4, v6, v0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    .line 342
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/incallui/CallCardPresenter;->isGeocoderLocationNeeded(Lcom/android/incallui/Call;)Z

    move-result v7

    .line 341
    invoke-static {v4, v6, v7}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 346
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    .line 350
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/incallui/Call;Z)V

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/CallCardPresenter;->maybeClearSessionModificationState(Lcom/android/incallui/Call;)V

    .line 354
    :cond_7
    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v4, :cond_8

    .line 356
    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    .line 357
    const/4 v6, 0x0

    .line 356
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/incallui/CallCardPresenter;->maybeShowProgressSpinner(II)V

    .line 358
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v4, v6, v0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 361
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v4, :cond_16

    .line 363
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo()V

    .line 375
    :cond_9
    :goto_4
    invoke-static {}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isSupportCallRecorder()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/CallCardPresenter;->isSipCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 397
    :cond_a
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->isPrimaryCallActive()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 398
    const-string/jumbo v4, "Starting the calltime timer"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v6, v7}, Lcom/android/incallui/CallTimer;->start(J)Z

    .line 407
    :goto_6
    const/4 v5, 0x2

    .line 408
    .local v5, "callState":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_1c

    .line 409
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    .line 410
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryCallState()V

    .line 426
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->maybeShowManageConferenceCallButton()V

    .line 429
    const/4 v4, 0x3

    if-ne v5, v4, :cond_1d

    .line 430
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_1d

    .line 431
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setEndCallButtonAnimation()V

    .line 438
    :goto_8
    sget-object v4, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "callState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "mOldCallState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/incallui/CallCardPresenter;->mOldCallState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/4 v4, 0x3

    if-eq v5, v4, :cond_b

    const/16 v4, 0x8

    if-ne v5, v4, :cond_c

    .line 440
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v4}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isCdmaPhone(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isCdmaDialing(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 446
    :cond_c
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-nez v4, :cond_d

    .line 447
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_21

    .line 449
    :cond_d
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallInfoAnimation(Z)V

    .line 451
    :cond_e
    :goto_a
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/incallui/CallCardPresenter;->mOldCallState:I

    .line 452
    invoke-direct/range {p0 .. p1}, Lcom/android/incallui/CallCardPresenter;->opVirbate(Lcom/android/incallui/InCallPresenter$InCallState;)V

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-nez v6, :cond_22

    const/4 v6, 0x1

    :goto_b
    invoke-interface {v4, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallButtonsVisible(Z)V

    .line 456
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/CallCardPresenter;->maybeSendAccessibilityEvent(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Z)V

    .line 276
    return-void

    .line 292
    .end local v5    # "callState":I
    .end local v16    # "previousPrimary":Lcom/android/incallui/Call;
    .end local v18    # "primaryChanged":Z
    .end local v20    # "secondaryChanged":Z
    .restart local v17    # "primary":Lcom/android/incallui/Call;
    .restart local v19    # "secondary":Lcom/android/incallui/Call;
    :cond_f
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_10

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_12

    .line 293
    :cond_10
    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v17

    .line 294
    .local v17, "primary":Lcom/android/incallui/Call;
    if-nez v17, :cond_11

    .line 295
    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v17

    .line 300
    :cond_11
    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4, v6}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v19

    .local v19, "secondary":Lcom/android/incallui/Call;
    goto/16 :goto_0

    .line 301
    .local v17, "primary":Lcom/android/incallui/Call;
    .local v19, "secondary":Lcom/android/incallui/Call;
    :cond_12
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 302
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4, v6}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v17

    .line 303
    .local v17, "primary":Lcom/android/incallui/Call;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v19

    .local v19, "secondary":Lcom/android/incallui/Call;
    goto/16 :goto_0

    .line 308
    .end local v17    # "primary":Lcom/android/incallui/Call;
    .end local v19    # "secondary":Lcom/android/incallui/Call;
    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 314
    :cond_14
    const/16 v18, 0x1

    .restart local v18    # "primaryChanged":Z
    goto/16 :goto_2

    .line 316
    :cond_15
    const/16 v20, 0x1

    .restart local v20    # "secondaryChanged":Z
    goto/16 :goto_3

    .line 365
    .restart local v16    # "previousPrimary":Lcom/android/incallui/Call;
    :cond_16
    if-eqz v20, :cond_9

    .line 367
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    .line 368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v8, 0x4

    if-ne v4, v8, :cond_17

    const/4 v4, 0x1

    .line 367
    :goto_c
    invoke-static {v6, v7, v4}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 369
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo()V

    .line 370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/incallui/Call;Z)V

    .line 371
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/CallCardPresenter;->maybeClearSessionModificationState(Lcom/android/incallui/Call;)V

    goto/16 :goto_4

    .line 368
    :cond_17
    const/4 v4, 0x0

    goto :goto_c

    .line 376
    :cond_18
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getRecordFilePrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/incallui/InCallPresenter;->setPrefixName(Ljava/lang/String;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_19

    .line 379
    const-string/jumbo v4, "call state active"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/CallCardPresenter;->log(Ljava/lang/String;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/incallui/CallCardPresenter;->canAutoRecording(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z

    move-result v15

    .line 381
    .local v15, "canAuto":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "the canAuto is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/incallui/CallCardPresenter;->log(Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/incallui/InCallPresenter;->setCallActive(Z)V

    .line 383
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/android/incallui/InCallPresenter;->setAutoRecording(Z)V

    .line 384
    if-eqz v15, :cond_a

    .line 385
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/incallui/InCallPresenter;->startOrPauseRecording(Z)V

    goto/16 :goto_5

    .line 388
    .end local v15    # "canAuto":Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_1a

    .line 389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 390
    :cond_1a
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/incallui/InCallPresenter;->setCallActive(Z)V

    goto/16 :goto_5

    .line 401
    :cond_1b
    const-string/jumbo v4, "Canceling the calltime timer"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v4}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 403
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v6, v7}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZJ)V

    goto/16 :goto_6

    .line 412
    .restart local v5    # "callState":I
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 416
    new-instance v8, Landroid/telecom/DisconnectCause;

    const/4 v6, 0x0

    invoke-direct {v8, v6}, Landroid/telecom/DisconnectCause;-><init>(I)V

    .line 414
    const/4 v6, 0x0

    .line 415
    const/4 v7, 0x0

    .line 417
    const/4 v9, 0x0

    .line 418
    const/4 v10, 0x0

    .line 419
    const/4 v11, 0x0

    .line 420
    const/4 v12, 0x0

    .line 421
    const/4 v13, 0x0

    .line 422
    const/4 v14, 0x0

    .line 412
    invoke-interface/range {v4 .. v14}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showHdAudioIndicator(Z)V

    goto/16 :goto_7

    .line 436
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-eq v0, v6, :cond_1e

    const/4 v6, 0x1

    :goto_d
    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setEndCallButtonEnabled(ZZ)V

    goto/16 :goto_8

    :cond_1e
    const/4 v6, 0x0

    goto :goto_d

    .line 441
    :cond_1f
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_20

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallInfoAnimation(Z)V

    goto/16 :goto_a

    .line 444
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallInfoAnimationDelay(Z)V

    goto/16 :goto_a

    .line 448
    :cond_21
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_e

    goto/16 :goto_9

    .line 453
    :cond_22
    const/4 v6, 0x0

    goto/16 :goto_b
.end method

.method public onUiReady(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V
    .locals 2
    .param p1, "ui"    # Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .prologue
    .line 229
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 231
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContactsPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    const-string/jumbo v1, "android.contacts.DISPLAY_ORDER"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->refreshValue(Ljava/lang/String;)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_1

    .line 237
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo()V

    .line 241
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 242
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 243
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 244
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 228
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 228
    check-cast p1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiReady(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V
    .locals 3
    .param p1, "ui"    # Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .prologue
    const/4 v2, 0x0

    .line 249
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 252
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 253
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 254
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 255
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    .line 256
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    .line 257
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mDistanceHelper:Lcom/android/incallui/DistanceHelper;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mDistanceHelper:Lcom/android/incallui/DistanceHelper;

    invoke-virtual {v0}, Lcom/android/incallui/DistanceHelper;->cleanUp()V

    .line 264
    :cond_1
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    .line 265
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 266
    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 248
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 248
    check-cast p1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiUnready(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V

    return-void
.end method

.method public secondaryInfoClicked()V
    .locals 2

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 1258
    const-string/jumbo v0, "Secondary info clicked but no secondary call."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1259
    return-void

    .line 1262
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Swapping call to foreground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1263
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    .line 1256
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1458
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    .line 1457
    return-void
.end method

.method public stopLocation()V
    .locals 1

    .prologue
    .line 1523
    iget-boolean v0, p0, Lcom/android/incallui/CallCardPresenter;->mIsCTAMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mLocationFromGaoDe:Lcom/android/incallui/oneplus/OPLocation;

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mLocationFromGaoDe:Lcom/android/incallui/oneplus/OPLocation;

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/OPLocation;->stopLocation()V

    .line 1522
    :cond_0
    return-void
.end method

.method public updateCallTime()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 660
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 662
    .local v4, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v4, :cond_1

    .line 663
    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v5}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->isPrimaryCallActive()Z

    move-result v5

    if-nez v5, :cond_2

    .line 665
    const/4 v5, 0x0

    invoke-interface {v4, v5, v8, v9}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZJ)V

    .line 666
    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v5}, Lcom/android/incallui/CallTimer;->cancel()V

    goto :goto_0

    .line 668
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    .line 669
    .local v0, "callStart":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v0

    .line 670
    .local v2, "duration":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "callStart: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    cmp-long v5, v0, v8

    if-eqz v5, :cond_0

    .line 672
    const/4 v5, 0x1

    invoke-interface {v4, v5, v2, v3}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZJ)V

    goto :goto_0
.end method

.method public updateEmergencyLocation(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1495
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    .line 1496
    .local v1, "ui":Lcom/android/incallui/CallCardPresenter$CallCardUi;
    if-nez v1, :cond_0

    .line 1497
    return-void

    .line 1499
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1500
    .local v0, "isEmergencyCall":Z
    if-eqz v0, :cond_1

    .line 1501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsCTAMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/incallui/CallCardPresenter;->mIsCTAMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "isOverSea: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isOverSea()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1502
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/incallui/CallCardPresenter;->mIsCTAMode:Z

    if-eqz v2, :cond_2

    .line 1494
    :cond_1
    :goto_0
    return-void

    .line 1502
    :cond_2
    invoke-static {}, Lcom/android/incallui/oneplus/OPPhoneUtils;->isOverSea()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1503
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mLocationFromGaoDe:Lcom/android/incallui/oneplus/OPLocation;

    if-nez v2, :cond_3

    .line 1504
    new-instance v2, Lcom/android/incallui/oneplus/OPLocation;

    invoke-direct {v2}, Lcom/android/incallui/oneplus/OPLocation;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mLocationFromGaoDe:Lcom/android/incallui/oneplus/OPLocation;

    .line 1505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GaoDe sHA1 is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/CallCardPresenter;->sHA1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1507
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mLocationFromGaoDe:Lcom/android/incallui/oneplus/OPLocation;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/incallui/CallCardPresenter$2;

    invoke-direct {v4, p0, v1}, Lcom/android/incallui/CallCardPresenter$2;-><init>(Lcom/android/incallui/CallCardPresenter;Lcom/android/incallui/CallCardPresenter$CallCardUi;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/oneplus/OPLocation;->startLocation(Landroid/content/Context;Lcom/android/incallui/oneplus/OPLocation$OnLocationListener;)V

    goto :goto_0
.end method

.method public updateEndCall()V
    .locals 6

    .prologue
    .line 1466
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v3, :cond_0

    .line 1467
    return-void

    .line 1469
    :cond_0
    sget-object v3, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateEndCall"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 1471
    .local v2, "number":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 1472
    return-void

    .line 1474
    :cond_1
    sget-object v3, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 1476
    .local v1, "isEmergencyCall":Z
    if-eqz v1, :cond_2

    .line 1477
    return-void

    .line 1479
    :cond_2
    sget-object v3, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isEmergencyCall"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    .line 1481
    .local v0, "callId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->setState(I)V

    .line 1482
    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    new-instance v4, Landroid/telecom/DisconnectCause;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 1483
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    .line 1465
    return-void
.end method
