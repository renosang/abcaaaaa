.class public Lcom/android/incallui/InCallPresenter;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/CallList$Listener;
.implements Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallPresenter$1;,
        Lcom/android/incallui/InCallPresenter$2;,
        Lcom/android/incallui/InCallPresenter$3;,
        Lcom/android/incallui/InCallPresenter$4;,
        Lcom/android/incallui/InCallPresenter$5;,
        Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;,
        Lcom/android/incallui/InCallPresenter$CanAddCallListener;,
        Lcom/android/incallui/InCallPresenter$InCallDetailsListener;,
        Lcom/android/incallui/InCallPresenter$InCallEventListener;,
        Lcom/android/incallui/InCallPresenter$InCallOrientationListener;,
        Lcom/android/incallui/InCallPresenter$InCallState;,
        Lcom/android/incallui/InCallPresenter$InCallStateListener;,
        Lcom/android/incallui/InCallPresenter$InCallUiListener;,
        Lcom/android/incallui/InCallPresenter$IncomingCallListener;
    }
.end annotation


# static fields
.field private static final EMPTY_EXTRAS:Landroid/os/Bundle;

.field private static sInCallPresenter:Lcom/android/incallui/InCallPresenter;


# instance fields
.field private hasInCallUIStarted:Z

.field public isAnswer:Z

.field private mAccountSelectionCancelled:Z

.field private mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

.field private mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

.field private mAwaitingCallListUpdate:Z

.field private mBoundAndWaitingForOutgoingCall:Z

.field private final mCallCallback:Landroid/telecom/Call$Callback;

.field private mCallList:Lcom/android/incallui/CallList;

.field private final mCanAddCallListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$CanAddCallListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private mContext:Landroid/content/Context;

.field private mCurrentCallSubId:I

.field private final mDetailsListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFilteredQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

.field public mHander:Landroid/os/Handler;

.field private mInCallActivity:Lcom/android/incallui/InCallActivity;

.field private mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

.field private final mInCallEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private final mInCallUiListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallUiListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIncomingCallListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActivityPreviouslyStarted:Z

.field private mIsChangingConfigurations:Z

.field private mIsFirstUp:Z

.field private mIsFullScreen:Z

.field private mListener:Landroid/telephony/PhoneStateListener;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnCheckBlockedListener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;

.field private final mOrientationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreviousCallState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private mProximitySensor:Lcom/android/incallui/ProximitySensor;

.field private mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

.field private mServiceBound:Z

.field private mServiceConnected:Z

.field private mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

.field private mUIShowing:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private showHD:Z


# direct methods
.method static synthetic -get0(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/CallList;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/incallui/InCallPresenter;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/incallui/InCallPresenter;)Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mFilteredQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/incallui/InCallPresenter;)Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnCheckBlockedListener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallPresenter;->EMPTY_EXTRAS:Landroid/os/Bundle;

    .line 98
    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    const v2, 0x3f666666    # 0.9f

    const/4 v1, 0x0

    .line 2252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 116
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    .line 118
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    .line 120
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 119
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    .line 122
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 121
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    .line 124
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 123
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    .line 126
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 125
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    .line 128
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 127
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    .line 136
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 138
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    .line 140
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    .line 141
    new-instance v0, Lcom/android/incallui/AnswerPresenter;

    invoke-direct {v0}, Lcom/android/incallui/AnswerPresenter;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    .line 144
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 160
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    .line 163
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPreviousCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 164
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mUIShowing:Z

    .line 166
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->showHD:Z

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/InCallPresenter;->mCurrentCallSubId:I

    .line 171
    new-instance v0, Lcom/android/incallui/InCallPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$1;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallCallback:Landroid/telecom/Call$Callback;

    .line 208
    new-instance v0, Lcom/android/incallui/InCallPresenter$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$2;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 222
    new-instance v0, Lcom/android/incallui/InCallPresenter$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$3;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOnCheckBlockedListener:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;

    .line 294
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 299
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    .line 307
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 614
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mAwaitingCallListUpdate:Z

    .line 2331
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->isAnswer:Z

    .line 2333
    new-instance v0, Lcom/android/incallui/InCallPresenter$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$4;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHander:Landroid/os/Handler;

    .line 2497
    new-instance v0, Lcom/android/incallui/InCallPresenter$5;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$5;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListener:Landroid/telephony/PhoneStateListener;

    .line 2619
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsFirstUp:Z

    .line 2631
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->hasInCallUIStarted:Z

    .line 2252
    return-void
.end method

.method private attemptCleanup()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1826
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    if-eqz v1, :cond_5

    :cond_0
    const/4 v0, 0x0

    .line 1828
    .local v0, "shouldCleanup":Z
    :goto_0
    const-string/jumbo v1, "InCallPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "InCallPresenter : attemptCleanup : shouldCleanup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1829
    const-string/jumbo v3, "   mInCallActivity = "

    .line 1828
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1829
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 1828
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1829
    const-string/jumbo v3, "   mServiceConnected = "

    .line 1828
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1829
    iget-boolean v3, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 1828
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1830
    const-string/jumbo v3, "   mInCallState = "

    .line 1828
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1830
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 1828
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    const-string/jumbo v1, "InCallPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "attemptCleanup? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    if-eqz v0, :cond_4

    .line 1837
    iput-boolean v5, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 1838
    iput-boolean v5, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 1842
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    if-eqz v1, :cond_1

    .line 1843
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v1}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    .line 1845
    :cond_1
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 1848
    iput-boolean v5, p0, Lcom/android/incallui/InCallPresenter;->mUIShowing:Z

    .line 1851
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->releaseProximitySensor()V

    .line 1853
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    .line 1855
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1856
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mPowerManager:Landroid/os/PowerManager;

    .line 1858
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    .line 1860
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v1, :cond_2

    .line 1861
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 1863
    :cond_2
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    .line 1864
    iput-boolean v5, p0, Lcom/android/incallui/InCallPresenter;->mIsFirstUp:Z

    .line 1865
    invoke-static {}, Lcom/android/incallui/InCallCsRedialHandler;->getInstance()Lcom/android/incallui/InCallCsRedialHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallCsRedialHandler;->tearDown()V

    .line 1867
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v1, :cond_3

    .line 1868
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 1869
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->clearCallIds()V

    .line 1870
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    .line 1883
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 1884
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->removeInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)Z

    .line 1886
    const-string/jumbo v1, "Finished InCallPresenter.CleanUp"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1825
    :cond_4
    return-void

    .line 1827
    .end local v0    # "shouldCleanup":Z
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_6

    const/4 v0, 0x1

    .restart local v0    # "shouldCleanup":Z
    goto/16 :goto_0

    .end local v0    # "shouldCleanup":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "shouldCleanup":Z
    goto/16 :goto_0
.end method

.method private attemptFinishActivity()V
    .locals 4

    .prologue
    .line 477
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    .line 478
    :goto_0
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->getRapidDisplay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "doFinish":Z
    return-void

    .line 477
    .end local v0    # "doFinish":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "doFinish":Z
    goto :goto_0

    .line 482
    .end local v0    # "doFinish":Z
    :cond_1
    const-string/jumbo v1, "InCallPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Hide in call UI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v1, :cond_2

    .line 486
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isDsdaEnabled()Z

    move-result v1

    .line 485
    if-eqz v1, :cond_2

    .line 487
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->hasAnyLiveCall(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 492
    :cond_2
    if-eqz v0, :cond_3

    .line 493
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallActivity;->setExcludeFromRecents(Z)V

    .line 494
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->finish()V

    .line 496
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    if-eqz v1, :cond_3

    .line 475
    :cond_3
    return-void

    .line 488
    :cond_4
    const-string/jumbo v1, "Switch active sub"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->switchToOtherActiveSub()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void
.end method

.method private getColorsFromCall(Lcom/android/incallui/Call;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 2197
    if-nez p1, :cond_0

    .line 2198
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPendingPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->getColorsFromPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0

    return-object v0

    .line 2200
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->getColorsFromPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0

    return-object v0
.end method

.method private getColorsFromPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 5
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 2205
    const/4 v1, 0x0

    .line 2206
    .local v1, "highlightColor":I
    if-eqz p1, :cond_0

    .line 2207
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 2209
    .local v2, "tm":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_0

    .line 2211
    invoke-static {v2, p1}, Lcom/android/contacts/common/compat/telecom/TelecomManagerCompat;->getPhoneAccount(Landroid/telecom/TelecomManager;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 2214
    .local v0, "account":Landroid/telecom/PhoneAccount;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isLollipopMr1Compatible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2215
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getHighlightColor()I

    move-result v1

    .line 2219
    .end local v0    # "account":Landroid/telecom/PhoneAccount;
    .end local v2    # "tm":Landroid/telecom/TelecomManager;
    :cond_0
    new-instance v3, Lcom/android/incallui/InCallUIMaterialColorMapUtils;

    .line 2220
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2219
    invoke-direct {v3, v4}, Lcom/android/incallui/InCallUIMaterialColorMapUtils;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v3, v1}, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallPresenter;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/InCallPresenter;

    monitor-enter v1

    .line 316
    :try_start_0
    sget-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Lcom/android/incallui/InCallPresenter;

    invoke-direct {v0}, Lcom/android/incallui/InCallPresenter;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 319
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isCallWithNoValidAccounts(Lcom/android/incallui/Call;)Z
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1721
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1737
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 1722
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1724
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 1725
    sget-object v0, Lcom/android/incallui/InCallPresenter;->EMPTY_EXTRAS:Landroid/os/Bundle;

    .line 1729
    :cond_2
    const-string/jumbo v2, "selectPhoneAccountAccounts"

    .line 1728
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1731
    .local v1, "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1732
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    .line 1731
    if-eqz v2, :cond_0

    .line 1733
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No valid accounts for call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1734
    const/4 v2, 0x1

    return v2
.end method

.method private isScreenInteractive()Z
    .locals 1

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method private maybeBlockCall(Landroid/telecom/Call;)V
    .locals 14
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 660
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/incallui/util/TelecomCallUtil;->getNumber(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v7

    .line 662
    .local v7, "number":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 667
    .local v8, "timeAdded":J
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 669
    .local v3, "hasTimedOut":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 672
    .local v4, "handler":Landroid/os/Handler;
    new-instance v5, Lcom/android/incallui/InCallPresenter$6;

    invoke-direct {v5, p0, v3, p1}, Lcom/android/incallui/InCallPresenter$6;-><init>(Lcom/android/incallui/InCallPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/telecom/Call;)V

    .line 682
    .local v5, "runnable":Ljava/lang/Runnable;
    const-wide/16 v12, 0x3e8

    invoke-virtual {v4, v5, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 684
    new-instance v1, Lcom/android/incallui/InCallPresenter$7;

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/incallui/InCallPresenter$7;-><init>(Lcom/android/incallui/InCallPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/telecom/Call;Ljava/lang/String;J)V

    .line 714
    .local v1, "onCheckBlockedListener":Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mFilteredQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    invoke-virtual {v2, v1, v7, v0}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->isBlockedNumber(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 716
    .local v10, "success":Z
    if-nez v10, :cond_0

    .line 717
    const-string/jumbo v2, "checkForBlockedCall: invalid number, skipping block checking"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 719
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 721
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_0

    .line 722
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2, p1}, Lcom/android/incallui/CallList;->onCallAdded(Landroid/telecom/Call;)V

    .line 659
    :cond_0
    return-void
.end method

.method private maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1547
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1548
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1552
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V

    .line 1545
    :cond_1
    return-void

    .line 1549
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->setDisconnectCauseForMissingAccounts(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private notifyInCallUiStateNotifier(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyInCallUiStateNotifier: mIsChangingConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1331
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 1330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1332
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    if-nez v0, :cond_0

    .line 1333
    invoke-static {}, Lcom/android/incallui/InCallUiStateNotifier;->getInstance()Lcom/android/incallui/InCallUiStateNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallUiStateNotifier;->onUiShowing(Z)V

    .line 1329
    :cond_0
    return-void
.end method

.method private opAutoRedial(Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 2410
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "oem.ctaSwitch.support"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 2411
    .local v1, "ctaSwitch":Z
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2412
    const-string/jumbo v3, "call_auto_retry"

    const/4 v4, 0x0

    .line 2411
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2413
    .local v0, "autoretrySetting":I
    const-string/jumbo v2, "InCallPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ctaSwitch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", autoretrySetting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2415
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/oneplus/OPAutoRedial;->getInstance(Landroid/content/Context;)Lcom/android/incallui/oneplus/OPAutoRedial;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mPreviousCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/incallui/oneplus/OPAutoRedial;->opAutoRedial(Lcom/android/incallui/Call;Ljava/lang/String;Lcom/android/incallui/InCallPresenter$InCallState;)V

    .line 2409
    :cond_0
    return-void
.end method

.method private setDisconnectCauseForMissingAccounts(Lcom/android/incallui/Call;)V
    .locals 9
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v8, 0x0

    .line 1746
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v5

    .line 1748
    .local v5, "telecomCall":Landroid/telecom/Call;
    invoke-virtual {v5}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1750
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 1751
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "extras":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1755
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v6, "selectPhoneAccountAccounts"

    .line 1754
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1757
    .local v3, "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1758
    :cond_1
    invoke-virtual {v5}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 1759
    .local v4, "scheme":Ljava/lang/String;
    const-string/jumbo v6, "tel"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1760
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v7, 0x7f0d007f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1763
    .local v1, "errorMsg":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v6, 0x1

    invoke-direct {v0, v6, v8, v1, v1}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1764
    .local v0, "disconnectCause":Landroid/telecom/DisconnectCause;
    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 1745
    .end local v0    # "disconnectCause":Landroid/telecom/DisconnectCause;
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    :cond_2
    return-void

    .line 1761
    .restart local v4    # "scheme":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v7, 0x7f0d03bb

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0
.end method

.method static declared-synchronized setInstance(Lcom/android/incallui/InCallPresenter;)V
    .locals 2
    .param p0, "inCallPresenter"    # Lcom/android/incallui/InCallPresenter;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    const-class v0, Lcom/android/incallui/InCallPresenter;

    monitor-enter v0

    .line 324
    :try_start_0
    sput-object p0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 323
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private shouldAttemptBlocking(Landroid/telecom/Call;)Z
    .locals 3
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    const/4 v2, 0x0

    .line 638
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 639
    return v2

    .line 641
    :cond_0
    invoke-static {p1}, Lcom/android/incallui/util/TelecomCallUtil;->isEmergencyCall(Landroid/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    const-string/jumbo v0, "Not attempting to block incoming emergency call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    return v2

    .line 645
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil;->hasRecentEmergencyCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 646
    const-string/jumbo v0, "Not attempting to block incoming call due to recent emergency call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 647
    return v2

    .line 650
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 12
    .param p1, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    const/16 v11, 0xbb8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1563
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startOrFinishUi: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " -> "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1568
    const/4 v2, 0x0

    .line 1571
    .local v2, "isAutoAnswer":Z
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v7, :cond_0

    .line 1572
    return-object p1

    .line 1576
    :cond_0
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1577
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1578
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v10, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, v10, :cond_5

    .line 1579
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v7, :cond_4

    const/4 v2, 0x1

    .line 1583
    :cond_1
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startOrFinishUi: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1585
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, p1, :cond_6

    .line 1586
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    iget-object v10, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v10}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/incallui/CallList;->isAnyOtherSubActive(I)Z

    move-result v1

    .line 1590
    :goto_1
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v7, :cond_2

    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v7, :cond_7

    if-eqz v1, :cond_7

    .line 1619
    :cond_2
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, p1, :cond_8

    const/4 v6, 0x1

    .line 1622
    .local v6, "startIncomingCallSequence":Z
    :goto_2
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, p1, :cond_9

    const/4 v4, 0x1

    .line 1635
    .local v4, "showAccountPicker":Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getCallCardFragmentVisible()Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v3, 0x0

    .line 1636
    .local v3, "mainUiNotVisible":Z
    :goto_4
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, p1, :cond_b

    move v5, v3

    .line 1640
    :goto_5
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v10, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, v10, :cond_d

    .line 1641
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, p1, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v7

    if-eqz v7, :cond_c

    move v7, v8

    .line 1640
    :goto_6
    or-int/2addr v5, v7

    .line 1651
    .local v5, "showCallUi":Z
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, p1, :cond_e

    if-eqz v3, :cond_e

    .line 1652
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/InCallPresenter;->isCallWithNoValidAccounts(Lcom/android/incallui/Call;)Z

    move-result v7

    .line 1651
    :goto_7
    or-int/2addr v5, v7

    .line 1657
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v7, :cond_11

    .line 1658
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v10, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, v10, :cond_11

    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v7

    if-nez v7, :cond_f

    .line 1659
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v7

    if-eqz v7, :cond_10

    move v7, v9

    .line 1657
    :goto_8
    or-int/2addr v5, v7

    .line 1665
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_3
    move v0, v8

    .line 1666
    .local v0, "activityIsFinishing":Z
    :goto_9
    if-eqz v0, :cond_13

    .line 1667
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Undo the state change: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1668
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v7

    .line 1579
    .end local v0    # "activityIsFinishing":Z
    .end local v3    # "mainUiNotVisible":Z
    .end local v4    # "showAccountPicker":Z
    .end local v5    # "showCallUi":Z
    .end local v6    # "startIncomingCallSequence":Z
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1578
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1585
    :cond_6
    const/4 v1, 0x0

    .local v1, "isAnyOtherSubActive":Z
    goto/16 :goto_1

    .line 1591
    .end local v1    # "isAnyOtherSubActive":Z
    :cond_7
    return-object p1

    .line 1619
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "startIncomingCallSequence":Z
    goto/16 :goto_2

    .line 1622
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "showAccountPicker":Z
    goto/16 :goto_3

    .line 1635
    :cond_a
    const/4 v3, 0x1

    .restart local v3    # "mainUiNotVisible":Z
    goto/16 :goto_4

    .line 1636
    :cond_b
    const/4 v5, 0x0

    .local v5, "showCallUi":Z
    goto/16 :goto_5

    .end local v5    # "showCallUi":Z
    :cond_c
    move v7, v9

    .line 1641
    goto :goto_6

    :cond_d
    move v7, v8

    .line 1640
    goto :goto_6

    .local v5, "showCallUi":Z
    :cond_e
    move v7, v8

    .line 1651
    goto :goto_7

    :cond_f
    move v7, v9

    .line 1658
    goto :goto_8

    :cond_10
    move v7, v8

    .line 1659
    goto :goto_8

    :cond_11
    move v7, v8

    .line 1657
    goto :goto_8

    :cond_12
    move v0, v9

    .line 1665
    goto :goto_9

    .line 1671
    .restart local v0    # "activityIsFinishing":Z
    :cond_13
    if-nez v5, :cond_14

    if-nez v4, :cond_14

    if-eqz v2, :cond_18

    .line 1672
    :cond_14
    const-string/jumbo v7, "Start in call UI"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1673
    if-eqz v4, :cond_15

    move v9, v8

    :cond_15
    invoke-virtual {p0, v8, v9}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    .line 1675
    if-eqz v4, :cond_16

    .line 1676
    invoke-virtual {p0, v11}, Lcom/android/incallui/InCallPresenter;->sendDelayCancelAccountSelectionMessage(I)V

    .line 1678
    :cond_16
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/InCallPresenter;->isCallWithNoValidAccounts(Lcom/android/incallui/Call;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1679
    invoke-virtual {p0, v11}, Lcom/android/incallui/InCallPresenter;->sendDisconnectCallMessage(I)V

    .line 1708
    :cond_17
    :goto_a
    return-object p1

    .line 1682
    :cond_18
    if-eqz v6, :cond_1a

    .line 1683
    const-string/jumbo v7, "Start Full Screen in call UI"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1687
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1688
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v7}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 1690
    :cond_19
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->startUi(Lcom/android/incallui/InCallPresenter$InCallState;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 1694
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v7

    .line 1696
    :cond_1a
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v7, :cond_17

    .line 1700
    invoke-static {}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->getRapidDisplay()Z

    move-result v7

    if-nez v7, :cond_17

    .line 1701
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 1702
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    goto :goto_a
.end method

.method private startUi(Lcom/android/incallui/InCallPresenter$InCallState;)Z
    .locals 8
    .param p1, "inCallState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1770
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v6, :cond_0

    .line 1771
    return v4

    .line 1774
    :cond_0
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 1775
    .local v2, "incomingCall":Lcom/android/incallui/Call;
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1776
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_4

    const/4 v3, 0x1

    .line 1779
    .local v3, "isCallWaiting":Z
    :goto_0
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_6

    move v1, v4

    .line 1780
    .local v1, "hasAccountSelectionCall":Z
    :goto_1
    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v6, :cond_1

    .line 1781
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->dismissSelectPhoneAccountDialog()V

    .line 1795
    :cond_1
    if-eqz v2, :cond_7

    .line 1796
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/CallList;->isAnyOtherSubActive(I)Z

    move-result v0

    .line 1797
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Start UI  anyOtherSubActive:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1798
    if-nez v3, :cond_2

    if-nez v0, :cond_2

    if-eqz v1, :cond_9

    .line 1799
    :cond_2
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v6}, Lcom/android/incallui/ProximitySensor;->isScreenReallyOff()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1800
    const-string/jumbo v6, "Restarting InCallActivity to turn screen on for call waiting"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1802
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v6, :cond_3

    .line 1803
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6, v4}, Lcom/android/incallui/InCallActivity;->finish(Z)V

    .line 1811
    :cond_3
    return v5

    .line 1776
    .end local v1    # "hasAccountSelectionCall":Z
    .end local v3    # "isCallWaiting":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isCallWaiting":Z
    goto :goto_0

    .line 1775
    .end local v3    # "isCallWaiting":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "isCallWaiting":Z
    goto :goto_0

    :cond_6
    move v1, v5

    .line 1779
    goto :goto_1

    .line 1795
    .restart local v1    # "hasAccountSelectionCall":Z
    :cond_7
    const/4 v0, 0x0

    .local v0, "anyOtherSubActive":Z
    goto :goto_2

    .line 1813
    .end local v0    # "anyOtherSubActive":Z
    :cond_8
    invoke-virtual {p0, v5, v5}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    .line 1818
    :goto_3
    return v4

    .line 1816
    :cond_9
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    iget-boolean v7, p0, Lcom/android/incallui/InCallPresenter;->mUIShowing:Z

    invoke-virtual {v5, p1, v6, v7}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Z)V

    goto :goto_3
.end method

.method private updateActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 4
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    const/4 v3, 0x0

    .line 543
    const/4 v1, 0x0

    .line 544
    .local v1, "updateListeners":Z
    const/4 v0, 0x0

    .line 546
    .local v0, "doAttemptCleanup":Z
    if-eqz p1, :cond_2

    .line 547
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v2, :cond_0

    .line 548
    const/4 v1, 0x1

    .line 549
    const-string/jumbo v2, "UI Initialized"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 557
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallActivity;->setExcludeFromRecents(Z)V

    .line 561
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 562
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/InCallPresenter;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V

    .line 571
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_3

    .line 572
    const-string/jumbo v2, "UI Initialized, but no calls left.  shut down."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    const/16 v2, 0x3e8

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->sendDelayFinishMessage(I)V

    .line 577
    return-void

    .line 580
    :cond_2
    const-string/jumbo v2, "UI Destroyed"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    const/4 v1, 0x1

    .line 582
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 587
    const/4 v0, 0x1

    .line 605
    :cond_3
    if-eqz v1, :cond_4

    .line 606
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 609
    :cond_4
    if-eqz v0, :cond_5

    .line 610
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    .line 542
    :cond_5
    return-void
.end method

.method private updateSilenceSensor()V
    .locals 1

    .prologue
    .line 2420
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2421
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPSilenceUtils;->getInstance(Landroid/content/Context;)Lcom/android/incallui/oneplus/OPSilenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/OPSilenceUtils;->registerListener()V

    .line 2419
    :goto_0
    return-void

    .line 2423
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPSilenceUtils;->getInstance(Landroid/content/Context;)Lcom/android/incallui/oneplus/OPSilenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/OPSilenceUtils;->unregisterListener()V

    goto :goto_0
.end method


# virtual methods
.method public acceptUpgradeRequest(ILandroid/content/Context;)V
    .locals 4
    .param p1, "videoState"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " acceptUpgradeRequest videoState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1144
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v2, :cond_0

    .line 1145
    invoke-static {p2}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 1146
    const-string/jumbo v2, " acceptUpgradeRequest mCallList is empty so returning"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1147
    return-void

    .line 1150
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1151
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 1152
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 1153
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 1154
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 1155
    invoke-static {}, Lcom/android/incallui/InCallAudioManager;->getInstance()Lcom/android/incallui/InCallAudioManager;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/android/incallui/InCallAudioManager;->onAcceptUpgradeRequest(Lcom/android/incallui/Call;I)V

    .line 1141
    .end local v1    # "videoProfile":Landroid/telecom/VideoProfile;
    :cond_1
    return-void
.end method

.method public acceptUpgradeRequest(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1129
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_0

    .line 1130
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 1131
    const-string/jumbo v1, " acceptUpgradeRequest mCallList is empty so returning"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1132
    return-void

    .line 1135
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1136
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 1137
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getRequestedVideoState()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/InCallPresenter;->acceptUpgradeRequest(ILandroid/content/Context;)V

    .line 1128
    :cond_1
    return-void
.end method

.method public acquireWakeLock()V
    .locals 1

    .prologue
    .line 2070
    const-string/jumbo v0, "acquireWakeLock"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2071
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2069
    :cond_0
    :goto_0
    return-void

    .line 2072
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method public addCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$CanAddCallListener;

    .prologue
    .line 981
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 980
    return-void
.end method

.method public addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallDetailsListener;

    .prologue
    .line 970
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 969
    return-void
.end method

.method public addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallEventListener;

    .prologue
    .line 1003
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1002
    return-void
.end method

.method public addInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallUiListener;

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1303
    return-void
.end method

.method public addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    .prologue
    .line 948
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    return-void
.end method

.method public addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .prologue
    .line 959
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 958
    return-void
.end method

.method public addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallOrientationListener;

    .prologue
    .line 992
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 991
    return-void
.end method

.method public addUpdateListener(Landroid/content/Context;Lcom/android/incallui/oneplus/record/OPUpdater;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "update"    # Lcom/android/incallui/oneplus/record/OPUpdater;

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    if-nez v0, :cond_0

    .line 2470
    invoke-static {}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->getInstance()Lcom/android/incallui/oneplus/record/OPRecordHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    .line 2471
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    invoke-virtual {v0, p1}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->setContext(Landroid/content/Context;)V

    .line 2473
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    if-eqz v0, :cond_1

    .line 2474
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    invoke-virtual {v0, p2}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->addUpdateListener(Lcom/android/incallui/oneplus/record/OPUpdater;)V

    .line 2468
    :cond_1
    return-void
.end method

.method public answerIncomingCall(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1071
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_0

    .line 1072
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 1073
    return-void

    .line 1076
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->changeNotificationShowingState(Z)V

    .line 1078
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1079
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/incallui/InCallPresenter;->answerIncomingCall(Landroid/content/Context;I)V

    .line 1068
    return-void
.end method

.method public answerIncomingCall(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoState"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1088
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_0

    .line 1089
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 1090
    return-void

    .line 1092
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1093
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallLowBatteryListener;->getInstance()Lcom/android/incallui/InCallLowBatteryListener;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/incallui/InCallLowBatteryListener;->onAnswerIncomingCall(Lcom/android/incallui/Call;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1103
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/android/incallui/VideoUtils;->isVideoCall(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1105
    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallPresenter;->changeNotificationShowingState(Z)V

    .line 1107
    invoke-virtual {p0, v4, v4}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    .line 1085
    :cond_2
    return-void

    .line 1095
    :cond_3
    iput-boolean v3, p0, Lcom/android/incallui/InCallPresenter;->isAnswer:Z

    .line 1097
    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallPresenter;->changeNotificationShowingState(Z)V

    .line 1099
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    .line 1100
    invoke-static {}, Lcom/android/incallui/InCallAudioManager;->getInstance()Lcom/android/incallui/InCallAudioManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/incallui/InCallAudioManager;->onAnswerIncomingCall(Lcom/android/incallui/Call;I)V

    goto :goto_0
.end method

.method public bringToForeground(Z)V
    .locals 2
    .param p1, "showDialpad"    # Z

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    .line 1349
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    .line 1340
    :cond_0
    return-void
.end method

.method public cancelAccountSelection()V
    .locals 3

    .prologue
    .line 1028
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    .line 1029
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_0

    .line 1030
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1031
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1032
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1033
    .local v1, "callId":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 1027
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "callId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public changeNotificationShowingState(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    .line 1247
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mUIShowing:Z

    .line 1249
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Z)V

    .line 1244
    :cond_0
    return-void
.end method

.method public clearFullscreen()V
    .locals 1

    .prologue
    .line 1469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    .line 1468
    return-void
.end method

.method public declineCallByMessage(Z)V
    .locals 3
    .param p1, "showDialpad"    # Z

    .prologue
    .line 2576
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    .line 2577
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2578
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2568
    :cond_0
    :goto_0
    return-void

    .line 2580
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->declineByMsg()V

    goto :goto_0
.end method

.method public declineIncomingCall(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1117
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_0

    .line 1118
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 1119
    return-void

    .line 1122
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1123
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 1124
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1114
    :cond_1
    return-void
.end method

.method declineUpgradeRequest()V
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest(Landroid/content/Context;)V

    .line 1178
    return-void

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public declineUpgradeRequest(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1160
    const-string/jumbo v2, " declineUpgradeRequest"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1162
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v2, :cond_0

    .line 1163
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 1164
    const-string/jumbo v2, " declineUpgradeRequest mCallList is empty so returning"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1165
    return-void

    .line 1168
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1169
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 1171
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 1172
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 1173
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 1159
    .end local v1    # "videoProfile":Landroid/telecom/VideoProfile;
    :cond_1
    return-void
.end method

.method public enableScreenTimeout(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/16 v3, 0x80

    .line 2084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableScreenTimeout: value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2085
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v1, :cond_0

    .line 2086
    const-string/jumbo v1, "enableScreenTimeout: InCallActivity is null."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2087
    return-void

    .line 2090
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2091
    .local v0, "window":Landroid/view/Window;
    if-eqz p1, :cond_1

    .line 2092
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 2083
    :goto_0
    return-void

    .line 2094
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method getActivity()Lcom/android/incallui/InCallActivity;
    .locals 1

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    return-object v0
.end method

.method getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;
    .locals 1

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    return-object v0
.end method

.method public getCallCardFragmentVisible()Z
    .locals 1

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/OPCallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2117
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/OPCallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/OPCallCardFragment;->isVisible()Z

    move-result v0

    return v0

    .line 2119
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2406
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;
    .locals 2

    .prologue
    .line 2007
    monitor-enter p0

    .line 2008
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    if-nez v0, :cond_0

    .line 2009
    new-instance v0, Lcom/android/incallui/InCallCameraManager;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallCameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    .line 2012
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2007
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInCallIntent(ZZ)Landroid/content/Intent;
    .locals 3
    .param p1, "showDialpad"    # Z
    .param p2, "newOutgoingCall"    # Z

    .prologue
    .line 1935
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1936
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10040000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1938
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1939
    if-eqz p1, :cond_0

    .line 1940
    const-string/jumbo v1, "InCallActivity.show_dialpad"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1942
    :cond_0
    const-string/jumbo v1, "InCallActivity.new_outgoing_call"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1943
    return-object v0
.end method

.method public getInCallIntent(ZZZ)Landroid/content/Intent;
    .locals 3
    .param p1, "showDialpad"    # Z
    .param p2, "newOutgoingCall"    # Z
    .param p3, "declineByMsg"    # Z

    .prologue
    .line 2586
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2587
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10040000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2589
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2590
    if-eqz p1, :cond_0

    .line 2591
    const-string/jumbo v1, "InCallActivity.show_dialpad"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2593
    :cond_0
    const-string/jumbo v1, "InCallActivity.new_outgoing_call"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2594
    const-string/jumbo v1, "InCallActivity.decline_by_msg"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2595
    return-object v0
.end method

.method public getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method

.method public getIsFirstUp()Z
    .locals 1

    .prologue
    .line 2621
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFirstUp:Z

    return v0
.end method

.method public getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 2
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 886
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 888
    .local v0, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    if-nez p1, :cond_0

    .line 889
    return-object v0

    .line 891
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 892
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 906
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_8

    .line 907
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mBoundAndWaitingForOutgoingCall:Z

    if-eqz v1, :cond_8

    .line 908
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v1

    .line 893
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 894
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0

    .line 895
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 896
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0

    .line 897
    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 898
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0

    .line 899
    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_6

    .line 900
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 903
    :cond_6
    :goto_1
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0

    .line 901
    :cond_7
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_6

    .line 902
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 912
    :cond_8
    return-object v0
.end method

.method public getProximitySensor()Lcom/android/incallui/ProximitySensor;
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    return-object v0
.end method

.method public getSpaceBesideCallCard()F
    .locals 1

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/OPCallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2105
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/OPCallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/OPCallCardFragment;->getSpaceBesideCallCard()F

    move-result v0

    return v0

    .line 2107
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    .line 2229
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2228
    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 2231
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getThemeColors()Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 1

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    return-object v0
.end method

.method public handleAccountSelection(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "setDefault"    # Z

    .prologue
    .line 1018
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_0

    .line 1019
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1020
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1021
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1022
    .local v1, "callId":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/incallui/TelecomAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 1017
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "callId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public handleCallKey()Z
    .locals 11

    .prologue
    const/16 v9, 0x8

    const/4 v10, 0x1

    .line 1364
    const-string/jumbo v7, "handleCallKey"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1370
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v7, :cond_0

    .line 1371
    return v10

    .line 1377
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    .line 1378
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v6

    .line 1379
    .local v6, "incomingCall":Lcom/android/incallui/Call;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "incomingCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1382
    if-eqz v6, :cond_1

    .line 1383
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    .line 1384
    invoke-virtual {v6}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 1383
    invoke-virtual {v7, v8, v9}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    .line 1385
    return v10

    .line 1391
    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1392
    .local v0, "activeCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_3

    .line 1396
    const/4 v7, 0x4

    .line 1395
    invoke-virtual {v0, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    .line 1397
    .local v3, "canMerge":Z
    invoke-virtual {v0, v9}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    .line 1400
    .local v4, "canSwap":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "activeCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", canMerge: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1401
    const-string/jumbo v8, ", canSwap: "

    .line 1400
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1404
    if-eqz v3, :cond_2

    .line 1405
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    .line 1406
    return v10

    .line 1407
    :cond_2
    if-eqz v4, :cond_3

    .line 1408
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/TelecomAdapter;->swap(Ljava/lang/String;)V

    .line 1409
    return v10

    .line 1416
    .end local v3    # "canMerge":Z
    .end local v4    # "canSwap":Z
    :cond_3
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    .line 1417
    .local v5, "heldCall":Lcom/android/incallui/Call;
    if-eqz v5, :cond_4

    .line 1420
    invoke-virtual {v5, v10}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    .line 1422
    .local v2, "canHold":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "heldCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", canHold: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1425
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-ne v7, v9, :cond_4

    if-eqz v2, :cond_4

    .line 1426
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    .line 1427
    return v10

    .line 1432
    .end local v2    # "canHold":Z
    :cond_4
    return v10
.end method

.method public hangUpOngoingCall(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1044
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_1

    .line 1045
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-nez v1, :cond_0

    .line 1048
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 1050
    :cond_0
    return-void

    .line 1053
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1054
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_2

    .line 1055
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1058
    :cond_2
    if-eqz v0, :cond_3

    .line 1059
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 1060
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setState(I)V

    .line 1061
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    .line 1041
    :cond_3
    return-void
.end method

.method public hasInCallUIStarted()Z
    .locals 1

    .prologue
    .line 2633
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->hasInCallUIStarted:Z

    return v0
.end method

.method public isActivityStarted()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1212
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    .line 1213
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1212
    :cond_0
    :goto_0
    return v0

    .line 1214
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isChangingConfigurations()Z
    .locals 1

    .prologue
    .line 1227
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    return v0
.end method

.method public isDialpadVisible()Z
    .locals 1

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    .line 2143
    const/4 v0, 0x0

    return v0

    .line 2145
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 1511
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    return v0
.end method

.method public isRecordStateWaiting()Z
    .locals 1

    .prologue
    .line 2485
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    if-eqz v0, :cond_0

    .line 2486
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->isRecordStateWaiting()Z

    move-result v0

    return v0

    .line 2488
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowingInCallUi()Z
    .locals 1

    .prologue
    .line 1189
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUIShowing()Z
    .locals 1

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mUIShowing:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maybeStartRevealAnimation(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 1909
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v4, :cond_1

    .line 1910
    :cond_0
    return-void

    .line 1912
    :cond_1
    const-string/jumbo v4, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1913
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_2

    .line 1915
    return-void

    .line 1918
    :cond_2
    const-string/jumbo v4, "selectPhoneAccountAccounts"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1920
    return-void

    .line 1924
    :cond_3
    const-string/jumbo v4, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 1925
    .local v0, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    const-string/jumbo v4, "touchPoint"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 1927
    .local v3, "touchPoint":Landroid/graphics/Point;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4, v5, v0}, Lcom/android/incallui/InCallPresenter;->setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V

    .line 1929
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZ)Landroid/content/Intent;

    move-result-object v2

    .line 1930
    .local v2, "incallIntent":Landroid/content/Intent;
    const-string/jumbo v4, "touchPoint"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1931
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1908
    return-void
.end method

.method public notifyFullscreenModeChange(Z)V
    .locals 3
    .param p1, "isFullscreenMode"    # Z

    .prologue
    .line 1521
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$InCallEventListener;

    .line 1522
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$InCallEventListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$InCallEventListener;->onFullscreenModeChanged(Z)V

    goto :goto_0

    .line 1520
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$InCallEventListener;
    :cond_0
    return-void
.end method

.method onActivityStarted()V
    .locals 2

    .prologue
    .line 1313
    const-string/jumbo v0, "onActivityStarted"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1314
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->notifyInCallUiStateNotifier(Z)V

    .line 1315
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->updateCallStatusBar(Lcom/android/incallui/CallList;)V

    .line 1312
    :cond_0
    return-void
.end method

.method onActivityStopped()V
    .locals 2

    .prologue
    .line 1322
    const-string/jumbo v0, "onActivityStopped"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1323
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->notifyInCallUiStateNotifier(Z)V

    .line 1324
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, v1}, Lcom/android/incallui/StatusBarNotifier;->updateCallStatusBar(Lcom/android/incallui/CallList;)V

    .line 1321
    :cond_0
    return-void
.end method

.method public onBringToForeground(Z)V
    .locals 1
    .param p1, "showDialpad"    # Z

    .prologue
    .line 617
    const-string/jumbo v0, "Bringing UI to foreground."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    .line 616
    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    const/4 v1, 0x0

    .line 622
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->shouldAttemptBlocking(Landroid/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->maybeBlockCall(Landroid/telecom/Call;)V

    .line 633
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallPresenter;->setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V

    .line 634
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 621
    return-void

    .line 626
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->onCallAdded(Landroid/telecom/Call;)V

    goto :goto_0
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 9
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 759
    if-nez p1, :cond_0

    .line 760
    return-void

    .line 763
    :cond_0
    iput-boolean v8, p0, Lcom/android/incallui/InCallPresenter;->mAwaitingCallListUpdate:Z

    .line 765
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v3

    .line 766
    .local v3, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 767
    .local v4, "oldState":Lcom/android/incallui/InCallPresenter$InCallState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCallListChange oldState= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " newState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 768
    invoke-direct {p0, v3}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v3

    .line 769
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onCallListChange newState changed to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Phone switching state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 773
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 776
    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v5, v6, :cond_2

    .line 777
    invoke-virtual {p0, v8}, Lcom/android/incallui/InCallPresenter;->setCallActive(Z)V

    .line 778
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    if-eqz v5, :cond_1

    .line 779
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    invoke-virtual {v5}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->release()V

    .line 781
    :cond_1
    iput-object v7, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    .line 783
    :cond_2
    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v3, v5, :cond_3

    .line 784
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mPreviousCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 786
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v5, v6, :cond_6

    .line 788
    :cond_4
    :goto_0
    invoke-static {v8}, Lcom/android/incallui/oneplus/OPRapidDisplayManager;->setRapidDisplay(Z)V

    .line 790
    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->updateSilenceSensor()V

    .line 794
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .line 795
    .local v1, "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Notify "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " of state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter$InCallState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 796
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-interface {v1, v4, v5, p1}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_1

    .line 787
    .end local v1    # "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_6
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v5, v6, :cond_5

    goto :goto_0

    .line 799
    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 800
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-nez v5, :cond_a

    .line 801
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_b

    const/4 v0, 0x1

    .line 802
    .local v0, "hasCall":Z
    :goto_2
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5, v0}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    .line 804
    .end local v0    # "hasCall":Z
    :cond_8
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->isDsdaEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v5, :cond_9

    .line 805
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5}, Lcom/android/incallui/InCallActivity;->updateDsdaTab()V

    .line 751
    :cond_9
    return-void

    .line 800
    :cond_a
    const/4 v0, 0x1

    .restart local v0    # "hasCall":Z
    goto :goto_2

    .line 801
    .end local v0    # "hasCall":Z
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "hasCall":Z
    goto :goto_2
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 1
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->onCallRemoved(Landroid/telecom/Call;)V

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 729
    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 3
    .param p1, "canAddCall"    # Z

    .prologue
    .line 739
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$CanAddCallListener;

    .line 740
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$CanAddCallListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$CanAddCallListener;->onCanAddCallChanged(Z)V

    goto :goto_0

    .line 738
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$CanAddCallListener;
    :cond_0
    return-void
.end method

.method public onDeviceOrientationChange(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 2026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDeviceOrientationChange: orientation= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2028
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_0

    .line 2029
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2, p1}, Lcom/android/incallui/CallList;->notifyCallsOfDeviceRotation(I)V

    .line 2035
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$InCallOrientationListener;

    .line 2036
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$InCallOrientationListener;->onDeviceOrientationChanged(I)V

    goto :goto_1

    .line 2031
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v2, "onDeviceOrientationChange: CallList is null."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2025
    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 845
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V

    .line 848
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 850
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    .line 854
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->isEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/filterednumber/FilteredNumbersUtil;->recordLastEmergencyCallTime(Landroid/content/Context;)V

    .line 857
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->wakeUpScreen()V

    .line 860
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->opAutoRedial(Lcom/android/incallui/Call;)V

    .line 844
    return-void
.end method

.method public onDismissDialog()V
    .locals 2

    .prologue
    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Dialog dismissed mInCallState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1442
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_1

    .line 1445
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1446
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->finish()V

    .line 1449
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    .line 1440
    :cond_1
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 817
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->updateSilenceSensor()V

    .line 820
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-direct {p0, v4}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    .line 821
    .local v2, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 823
    .local v3, "oldState":Lcom/android/incallui/InCallPresenter$InCallState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Phone switching state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 824
    iput-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 826
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    .line 827
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$IncomingCallListener;
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-interface {v0, v3, v4, p1}, Lcom/android/incallui/InCallPresenter$IncomingCallListener;->onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 830
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$IncomingCallListener;
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->isDsdaEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v4, :cond_1

    .line 831
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->updateDsdaTab()V

    .line 815
    :cond_1
    return-void
.end method

.method public onPostDialCharWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    .line 1354
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    :cond_0
    return-void
.end method

.method public onServiceBind()V
    .locals 1

    .prologue
    .line 1896
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    .line 1895
    return-void
.end method

.method public onServiceUnbind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1900
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/InCallPresenter;->setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V

    .line 1901
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    .line 1899
    return-void
.end method

.method public onUiShowing(Z)V
    .locals 6
    .param p1, "showing"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1262
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mUIShowing:Z

    .line 1267
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v3, :cond_0

    .line 1275
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v3, :cond_1

    .line 1276
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v3, p1}, Lcom/android/incallui/ProximitySensor;->onInCallShowing(Z)V

    .line 1279
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incalluibind/ObjectFactory;->getUiReadyBroadcastIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1280
    .local v0, "broadcastIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 1281
    const-string/jumbo v5, "com.android.incallui.intent.extra.FIRST_TIME_SHOWN"

    iget-boolean v3, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1283
    if-eqz p1, :cond_4

    .line 1284
    const-string/jumbo v3, "Sending sticky broadcast: "

    invoke-static {p0, v3, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1285
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1292
    :cond_2
    :goto_1
    if-eqz p1, :cond_5

    .line 1293
    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 1298
    :goto_2
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$InCallUiListener;

    .line 1299
    .local v1, "listener":Lcom/android/incallui/InCallPresenter$InCallUiListener;
    invoke-interface {v1, p1}, Lcom/android/incallui/InCallPresenter$InCallUiListener;->onUiShowing(Z)V

    goto :goto_3

    .end local v1    # "listener":Lcom/android/incallui/InCallPresenter$InCallUiListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_3
    move v3, v4

    .line 1281
    goto :goto_0

    .line 1287
    :cond_4
    const-string/jumbo v3, "Removing sticky broadcast: "

    invoke-static {p0, v3, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1288
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1295
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    goto :goto_2

    .line 1260
    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_6
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 836
    return-void
.end method

.method public onUpgradeToVideoFail(ILcom/android/incallui/Call;)V
    .locals 0
    .param p1, "error"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 877
    return-void
.end method

.method public onUpgradeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpgradeToVideoRequest call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " video state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 868
    if-nez p1, :cond_0

    .line 869
    return-void

    .line 872
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->wakeUpScreen()V

    .line 873
    invoke-virtual {p1, p2}, Lcom/android/incallui/Call;->setRequestedVideoState(I)V

    .line 865
    return-void
.end method

.method public releaseProximitySensor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2599
    const-string/jumbo v1, "InCallPresenter"

    const-string/jumbo v2, "releaseProximitySensor"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2600
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 2601
    .local v0, "shouldCleanup":Z
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 2602
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 2603
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v1}, Lcom/android/incallui/ProximitySensor;->tearDown()V

    .line 2604
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    .line 2598
    :cond_0
    return-void

    .line 2600
    .end local v0    # "shouldCleanup":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "shouldCleanup":Z
    goto :goto_0
.end method

.method public releaseWakeLock()V
    .locals 1

    .prologue
    .line 2077
    const-string/jumbo v0, "releaseWakeLock"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2078
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2079
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2076
    :cond_0
    return-void
.end method

.method public removeCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$CanAddCallListener;

    .prologue
    .line 986
    if-eqz p1, :cond_0

    .line 987
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 985
    :cond_0
    return-void
.end method

.method public removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallDetailsListener;

    .prologue
    .line 975
    if-eqz p1, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 974
    :cond_0
    return-void
.end method

.method public removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallEventListener;

    .prologue
    .line 1008
    if-eqz p1, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1007
    :cond_0
    return-void
.end method

.method public removeInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallUiListener;

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    .prologue
    .line 953
    if-eqz p1, :cond_0

    .line 954
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 952
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .prologue
    .line 964
    if-eqz p1, :cond_0

    .line 965
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 963
    :cond_0
    return-void
.end method

.method public removeMessage()V
    .locals 2

    .prologue
    .line 2398
    const-string/jumbo v0, "removeMessage"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2399
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHander:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2400
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHander:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2401
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHander:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2402
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHander:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2397
    return-void
.end method

.method public removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallOrientationListener;

    .prologue
    .line 997
    if-eqz p1, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 996
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2434
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->removeMessage()V

    .line 2435
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 2436
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 2438
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mUIShowing:Z

    .line 2440
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    if-eqz v0, :cond_0

    .line 2441
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v0}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    .line 2443
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v0, :cond_1

    .line 2444
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->clearCallIds()V

    .line 2447
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    if-eqz v0, :cond_2

    .line 2448
    const-string/jumbo v0, "InCallPresenter"

    const-string/jumbo v1, "Reset mAnswerPresenter from InCallPresenter."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->reset()V

    .line 2452
    :cond_2
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->hasInCallUIStarted:Z

    .line 2433
    return-void
.end method

.method public sendAddMultiParticipantsIntent()V
    .locals 11

    .prologue
    .line 1967
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v9, :cond_0

    .line 1968
    return-void

    .line 1971
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.ADDPARTICIPANT"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1972
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1973
    const-string/jumbo v9, "add_participant"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1975
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1976
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    .line 1977
    .local v1, "childCallIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    .line 1978
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 1979
    .local v6, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 1980
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1981
    .local v8, "tmp":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 1983
    .local v5, "number":Ljava/lang/String;
    const-string/jumbo v9, ";"

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1984
    const-string/jumbo v9, ";"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1985
    .local v7, "temp":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v5, v7, v9

    .line 1987
    .end local v7    # "temp":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1979
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1989
    .end local v5    # "number":Ljava/lang/String;
    .end local v8    # "tmp":Ljava/lang/String;
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendAddMultiParticipantsIntent, numbers "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1990
    const-string/jumbo v9, "current_participant_list"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1995
    .end local v4    # "k":I
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :goto_1
    :try_start_0
    iget-object v9, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1965
    :goto_2
    return-void

    .line 1992
    :cond_3
    const-string/jumbo v9, "sendAddMultiParticipantsIntent, childCallIdList null."

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1996
    :catch_0
    move-exception v2

    .line 1997
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v9, "Activity for adding calls isn\'t found."

    invoke-static {p0, v9}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public sendAddParticipantIntent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1947
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1948
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1952
    const-string/jumbo v2, "add_call_mode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1953
    const-string/jumbo v2, "add_participant"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1955
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1946
    :goto_0
    return-void

    .line 1956
    :catch_0
    move-exception v0

    .line 1961
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "Activity for adding calls isn\'t found."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendDelayCancelAccountSelectionMessage(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 2388
    const-string/jumbo v0, "sendDelayCancelAccountSelectionMessage"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2389
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHander:Landroid/os/Handler;

    int-to-long v2, p1

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2387
    return-void
.end method

.method public sendDelayFinishMessage(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 2383
    const-string/jumbo v0, "sendDelayMessage"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2384
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHander:Landroid/os/Handler;

    int-to-long v2, p1

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2382
    return-void
.end method

.method public sendDelayReallyFinishMessage(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 2378
    const-string/jumbo v0, "sendDelayReallyFinishMessage"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2379
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHander:Landroid/os/Handler;

    int-to-long v2, p1

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2377
    return-void
.end method

.method public sendDisconnectCallMessage(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 2393
    const-string/jumbo v0, "sendDisconnectCallMessage"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2394
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mHander:Landroid/os/Handler;

    int-to-long v2, p1

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2392
    return-void
.end method

.method public setActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 2
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 508
    if-nez p1, :cond_0

    .line 509
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "registerActivity cannot be called with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eq v0, p1, :cond_1

    .line 512
    const-string/jumbo v0, "Setting a second activity before destroying the first."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->updateActivity(Lcom/android/incallui/InCallActivity;)V

    .line 507
    return-void
.end method

.method public setAutoRecording(Z)V
    .locals 1
    .param p1, "auto"    # Z

    .prologue
    .line 2492
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    if-eqz v0, :cond_0

    .line 2493
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    invoke-virtual {v0, p1}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->setIsAutoRecording(Z)V

    .line 2491
    :cond_0
    return-void
.end method

.method public setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V
    .locals 2
    .param p1, "isBound"    # Z
    .param p2, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBoundAndWaitingForOutgoingCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 925
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mBoundAndWaitingForOutgoingCall:Z

    .line 926
    iput-object p2, p0, Lcom/android/incallui/InCallPresenter;->mPendingPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 927
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    .line 928
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 919
    :cond_0
    return-void
.end method

.method public setCallActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    if-eqz v0, :cond_0

    .line 2480
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    invoke-virtual {v0, p1}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->setCallActive(Z)V

    .line 2478
    :cond_0
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 1479
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->setFullScreen(ZZ)V

    .line 1478
    return-void
.end method

.method public setFullScreen(ZZ)V
    .locals 2
    .param p1, "isFullScreen"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 1490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFullScreen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1493
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1494
    const/4 p1, 0x0

    .line 1495
    .local p1, "isFullScreen":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFullScreen overridden as dialpad is shown = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1498
    .end local p1    # "isFullScreen":Z
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    if-ne v0, p1, :cond_1

    if-eqz p2, :cond_2

    .line 1502
    :cond_1
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    .line 1503
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->notifyFullscreenModeChange(Z)V

    .line 1489
    return-void

    .line 1499
    :cond_2
    const-string/jumbo v0, "setFullScreen ignored as already in that state."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1500
    return-void
.end method

.method public setInCallAllowsOrientationChange(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    .line 2048
    const-string/jumbo v0, "InCallActivity is null. Can\'t set requested orientation."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2049
    return-void

    .line 2052
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->setRequestedOrientation(I)V

    .line 2053
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 2054
    sget v0, Lcom/android/incallui/InCallOrientationEventListener;->FULL_SENSOR_SCREEN_ORIENTATION:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .line 2053
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallActivity;->enableInCallOrientationEventListener(Z)V

    .line 2046
    return-void

    .line 2054
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInCallUIStarted(Z)V
    .locals 0
    .param p1, "started"    # Z

    .prologue
    .line 2637
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->hasInCallUIStarted:Z

    .line 2636
    return-void
.end method

.method public setIsFirstUp(Z)V
    .locals 0
    .param p1, "isFirstUp"    # Z

    .prologue
    .line 2625
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mIsFirstUp:Z

    .line 2624
    return-void
.end method

.method public setPrefixName(Ljava/lang/String;)V
    .locals 1
    .param p1, "namePrefix"    # Ljava/lang/String;

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    if-eqz v0, :cond_0

    .line 2458
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    invoke-virtual {v0, p1}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->setPrefixName(Ljava/lang/String;)V

    .line 2456
    :cond_0
    return-void
.end method

.method public setThemeColors()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2162
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v3, :cond_0

    .line 2163
    return-void

    .line 2167
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallPresenter;->getColorsFromCall(Lcom/android/incallui/Call;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    .line 2169
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v3, :cond_1

    .line 2170
    return-void

    .line 2173
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2175
    .local v1, "resources":Landroid/content/res/Resources;
    const v3, 0x7f09001c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2178
    const v3, 0x7f0a038e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2184
    .local v0, "color":I
    :goto_0
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    .line 2185
    const v3, 0x7f0d039e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2184
    invoke-direct {v2, v3, v4, v0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 2186
    .local v2, "td":Landroid/app/ActivityManager$TaskDescription;
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3, v2}, Lcom/android/incallui/InCallActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 2160
    return-void

    .line 2180
    .end local v0    # "color":I
    .end local v2    # "td":Landroid/app/ActivityManager$TaskDescription;
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    iget v0, v3, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    .restart local v0    # "color":I
    goto :goto_0
.end method

.method public setUp(Landroid/content/Context;Lcom/android/incallui/CallList;Lcom/android/incallui/AudioModeProvider;Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/ProximitySensor;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callList"    # Lcom/android/incallui/CallList;
    .param p3, "audioModeProvider"    # Lcom/android/incallui/AudioModeProvider;
    .param p4, "statusBarNotifier"    # Lcom/android/incallui/StatusBarNotifier;
    .param p5, "contactInfoCache"    # Lcom/android/incallui/ContactInfoCache;
    .param p6, "proximitySensor"    # Lcom/android/incallui/ProximitySensor;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 341
    const-string/jumbo v0, "setUp"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    if-eqz v0, :cond_3

    .line 343
    const-string/jumbo v0, "New service connection replacing existing one."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 346
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-ne p2, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    if-ne p3, v0, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 348
    return-void

    :cond_0
    move v0, v2

    .line 345
    goto :goto_0

    :cond_1
    move v0, v2

    .line 346
    goto :goto_1

    :cond_2
    move v1, v2

    .line 347
    goto :goto_2

    .line 351
    :cond_3
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 355
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 356
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    if-nez v0, :cond_4

    .line 357
    invoke-static {}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->getInstance()Lcom/android/incallui/oneplus/record/OPRecordHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    .line 358
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    invoke-virtual {v0, p1}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->setContext(Landroid/content/Context;)V

    .line 362
    :cond_4
    iput-object p5, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 365
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_5

    if-eqz p4, :cond_5

    .line 366
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 370
    :cond_5
    iput-object p4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    .line 371
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 373
    iput-object p3, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    .line 376
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v0, :cond_6

    if-eqz p6, :cond_6

    .line 377
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 381
    :cond_6
    iput-object p6, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    .line 384
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v0, :cond_7

    .line 385
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    iget-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mUIShowing:Z

    invoke-virtual {v0, v2}, Lcom/android/incallui/ProximitySensor;->onInCallShowing(Z)V

    .line 389
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 391
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 392
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->addInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)V

    .line 393
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPowerManager:Landroid/os/PowerManager;

    .line 394
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPowerManager:Landroid/os/PowerManager;

    .line 395
    const-string/jumbo v2, "InCallPresenter"

    .line 394
    const v3, 0x1000000a

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 397
    iput-object p2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    .line 404
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 409
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v0, :cond_8

    .line 410
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->clearListener()V

    .line 411
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 415
    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallCsRedialHandler;->getInstance()Lcom/android/incallui/InCallCsRedialHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallCsRedialHandler;->setUp(Landroid/content/Context;)V

    .line 416
    invoke-static {}, Lcom/android/incallui/InCallUiStateNotifier;->getInstance()Lcom/android/incallui/InCallUiStateNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallUiStateNotifier;->setUp(Landroid/content/Context;)V

    .line 417
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/VideoPauseController;->setUp(Lcom/android/incallui/InCallPresenter;)V

    .line 418
    invoke-static {}, Lcom/android/incallui/InCallLowBatteryListener;->getInstance()Lcom/android/incallui/InCallLowBatteryListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallLowBatteryListener;->setUp(Landroid/content/Context;)V

    .line 419
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    .line 421
    new-instance v0, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mFilteredQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    .line 422
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 423
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 425
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v0, :cond_9

    .line 426
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mFilteredQueryHandler:Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->setFilteredNumberQueryHandler(Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;)V

    .line 430
    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallMessageController;->getInstance()Lcom/android/incallui/InCallMessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallMessageController;->setUp(Landroid/content/Context;)V

    .line 431
    invoke-static {}, Lcom/android/incallui/OrientationModeHandler;->getInstance()Lcom/android/incallui/OrientationModeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/OrientationModeHandler;->setUp()V

    .line 432
    invoke-static {}, Lcom/android/incallui/CallSubstateNotifier;->getInstance()Lcom/android/incallui/CallSubstateNotifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 433
    invoke-static {}, Lcom/android/incallui/SessionModificationCauseNotifier;->getInstance()Lcom/android/incallui/SessionModificationCauseNotifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 434
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallSubstateNotifier;->getInstance()Lcom/android/incallui/CallSubstateNotifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 435
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/SessionModificationCauseNotifier;->getInstance()Lcom/android/incallui/SessionModificationCauseNotifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 437
    invoke-static {}, Lcom/android/incallui/InCallZoomController;->getInstance()Lcom/android/incallui/InCallZoomController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallZoomController;->setUp(Landroid/content/Context;)V

    .line 438
    const-string/jumbo v0, "Finished InCallPresenter.setUp"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public showConferenceCallManager(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    .line 2130
    return-void

    .line 2133
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->showConferenceFragment(Z)V

    .line 2128
    return-void
.end method

.method public showInCall(ZZ)V
    .locals 2
    .param p1, "showDialpad"    # Z
    .param p2, "newOutgoingCall"    # Z

    .prologue
    .line 1891
    const-string/jumbo v0, "Showing InCallActivity"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1892
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1890
    return-void
.end method

.method public startOrPauseRecording(Z)V
    .locals 1
    .param p1, "onlyStart"    # Z

    .prologue
    .line 2463
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    if-eqz v0, :cond_0

    .line 2464
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mRecordHelper:Lcom/android/incallui/oneplus/record/OPRecordHelper;

    invoke-virtual {v0, p1}, Lcom/android/incallui/oneplus/record/OPRecordHelper;->startOrPauseRecording(Z)V

    .line 2462
    :cond_0
    return-void
.end method

.method public tearDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 450
    const-string/jumbo v0, "tearDown"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->clearOnDisconnect()V

    .line 457
    :cond_0
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 458
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    .line 460
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 461
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoPauseController;->tearDown()V

    .line 462
    invoke-static {}, Lcom/android/incallui/InCallUiStateNotifier;->getInstance()Lcom/android/incallui/InCallUiStateNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallUiStateNotifier;->tearDown()V

    .line 463
    invoke-static {}, Lcom/android/incallui/InCallLowBatteryListener;->getInstance()Lcom/android/incallui/InCallLowBatteryListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallLowBatteryListener;->tearDown()V

    .line 464
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    .line 465
    invoke-static {}, Lcom/android/incallui/InCallMessageController;->getInstance()Lcom/android/incallui/InCallMessageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallMessageController;->tearDown()V

    .line 466
    invoke-static {}, Lcom/android/incallui/OrientationModeHandler;->getInstance()Lcom/android/incallui/OrientationModeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/OrientationModeHandler;->tearDown()V

    .line 467
    invoke-static {}, Lcom/android/incallui/CallSubstateNotifier;->getInstance()Lcom/android/incallui/CallSubstateNotifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 469
    invoke-static {}, Lcom/android/incallui/InCallZoomController;->getInstance()Lcom/android/incallui/InCallZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallZoomController;->tearDown()V

    .line 470
    invoke-static {}, Lcom/android/incallui/SessionModificationCauseNotifier;->getInstance()Lcom/android/incallui/SessionModificationCauseNotifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 471
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallSubstateNotifier;->getInstance()Lcom/android/incallui/CallSubstateNotifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 472
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/SessionModificationCauseNotifier;->getInstance()Lcom/android/incallui/SessionModificationCauseNotifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 449
    return-void
.end method

.method public toggleFullscreenMode()Z
    .locals 3

    .prologue
    .line 1459
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1460
    .local v0, "isFullScreen":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleFullscreenMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1461
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    .line 1462
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    return v1

    .line 1459
    .end local v0    # "isFullScreen":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "isFullScreen":Z
    goto :goto_0
.end method

.method public turnOffProximitySensor()V
    .locals 5

    .prologue
    .line 2609
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    .line 2610
    .local v0, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    .line 2611
    .local v1, "shouldCleanup":Z
    :goto_0
    const-string/jumbo v2, "InCallPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "turnOffProximitySensor newState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mProximitySensor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2612
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 2613
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v2}, Lcom/android/incallui/ProximitySensor;->turnOff()V

    .line 2608
    :cond_0
    return-void

    .line 2610
    .end local v1    # "shouldCleanup":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "shouldCleanup":Z
    goto :goto_0
.end method

.method public unsetActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 2
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    const/4 v1, 0x0

    .line 522
    if-nez p1, :cond_0

    .line 523
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unregisterActivity cannot be called with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_1

    .line 526
    const-string/jumbo v0, "No InCallActivity currently set, no need to unset."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    return-void

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eq v0, p1, :cond_2

    .line 530
    const-string/jumbo v0, "Second instance of InCallActivity is trying to unregister when another instance is active. Ignoring."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    return-void

    .line 534
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallPresenter;->updateActivity(Lcom/android/incallui/InCallActivity;)V

    .line 521
    return-void
.end method

.method updateIsChangingConfigurations()V
    .locals 2

    .prologue
    .line 1236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 1237
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isChangingConfigurations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 1240
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateIsChangingConfigurations = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1235
    return-void
.end method

.method public wakeUpScreen()V
    .locals 1

    .prologue
    .line 2063
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->isScreenInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2064
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->acquireWakeLock()V

    .line 2065
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->releaseWakeLock()V

    .line 2062
    :cond_0
    return-void
.end method
