.class public Lcom/android/dialerbind/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFilteredNumberProviderAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "com.android.dialer.database.filterednumberprovider"

    return-object v0
.end method

.method public static getLoggerInstance()Lcom/android/dialer/logging/Logger;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVoicemailArchiveProviderAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "com.android.dialer.database.voicemailarchiveprovider"

    return-object v0
.end method

.method public static isNewBlockingEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public static isVoicemailArchiveEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public static isVoicemailShareEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public static newCachedNumberLookupService()Lcom/android/dialer/service/CachedNumberLookupService;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newCallLogAdapter(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)Lcom/android/dialer/calllog/CallLogAdapter;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callFetcher"    # Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
    .param p2, "contactInfoHelper"    # Lcom/android/dialer/calllog/ContactInfoHelper;
    .param p3, "voicemailPlaybackPresenter"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p4, "activityType"    # I

    .prologue
    .line 81
    new-instance v0, Lcom/android/dialer/calllog/CallLogAdapter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;I)V

    return-object v0
.end method

.method public static newExtendedBlockingButtonRenderer(Landroid/content/Context;Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$Listener;)Lcom/android/dialer/service/ExtendedBlockingButtonRenderer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/android/dialer/service/ExtendedBlockingButtonRenderer$Listener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newRegularSearchFragment()Lcom/android/dialer/list/RegularSearchFragment;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/android/dialer/list/RegularSearchFragment;

    invoke-direct {v0}, Lcom/android/dialer/list/RegularSearchFragment;-><init>()V

    return-object v0
.end method
