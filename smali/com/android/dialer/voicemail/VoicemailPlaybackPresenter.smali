.class public Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;,
        Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final CLIP_POSITION_KEY:Ljava/lang/String;

.field private static final HAS_CONTENT_PROJECTION:[Ljava/lang/String;

.field private static final IS_PLAYING_STATE_KEY:Ljava/lang/String;

.field private static final IS_PREPARED_KEY:Ljava/lang/String;

.field private static final IS_SPEAKERPHONE_ON_KEY:Ljava/lang/String;

.field private static final VOICEMAIL_URI_KEY:Ljava/lang/String;

.field private static mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private static sInstance:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mArchiveResultHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;",
            ">;"
        }
    .end annotation
.end field

.field protected mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

.field protected mContext:Landroid/content/Context;

.field private final mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

.field private mHandler:Landroid/os/Handler;

.field private mInitialOrientation:I

.field private mIsPlaying:Z

.field private mIsPrepared:Z

.field private mIsSpeakerphoneOn:Z

.field protected mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnVoicemailDeletedListener:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;

.field private mPosition:I

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShouldResumePlaybackAfterSeeking:Z

.field private mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

.field private final mVoicemailAsyncTaskUtil:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

.field private mVoicemailAudioManager:Lcom/android/dialer/voicemail/VoicemailAudioManager;

.field protected mVoicemailUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p1, "voicemailFileUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->getShareIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/net/Uri;)Z
    .locals 1
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->queryHasContent(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/net/Uri;Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "voicemailUri"    # Landroid/net/Uri;
    .param p2, "archivedVoicemailUri"    # Landroid/net/Uri;
    .param p3, "status"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->setArchivedVoicemailStatusAndUpdateUI(Landroid/net/Uri;Landroid/net/Uri;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 114
    const-string/jumbo v1, "has_content"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 115
    const-string/jumbo v1, "duration"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 113
    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->HAS_CONTENT_PROJECTION:[Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".VOICEMAIL_URI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->VOICEMAIL_URI_KEY:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".IS_PREPARED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->IS_PREPARED_KEY:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".IS_PLAYING_STATE_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->IS_PLAYING_STATE_KEY:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".CLIP_POSITION_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->CLIP_POSITION_KEY:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".IS_SPEAKER_PHONE_ON"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->IS_SPEAKERPHONE_ON_KEY:Ljava/lang/String;

    .line 72
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v4, 0x20

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mArchiveResultHandlers:Ljava/util/List;

    .line 173
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mHandler:Landroid/os/Handler;

    .line 203
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 204
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/dialer/util/AsyncTaskExecutors;->createAsyncTaskExecutor()Lcom/android/dialer/util/AsyncTaskExecutor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    .line 205
    new-instance v2, Lcom/android/dialer/voicemail/VoicemailAudioManager;

    invoke-direct {v2, v0, p0}, Lcom/android/dialer/voicemail/VoicemailAudioManager;-><init>(Landroid/content/Context;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    iput-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailAudioManager:Lcom/android/dialer/voicemail/VoicemailAudioManager;

    .line 206
    new-instance v2, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;-><init>(Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailAsyncTaskUtil:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    .line 208
    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 209
    .local v1, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v1, v4}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    const-string/jumbo v2, "VmPlaybackPresenter"

    .line 210
    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 202
    :cond_0
    return-void
.end method

.method private disableProximitySensor(Z)V
    .locals 3
    .param p1, "waitForFarState"    # Z

    .prologue
    .line 808
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 809
    return-void

    .line 811
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 812
    const-string/jumbo v1, "VmPlaybackPresenter"

    const-string/jumbo v2, "Releasing proximity wake lock"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 814
    .local v0, "flags":I
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 807
    .end local v0    # "flags":I
    :goto_1
    return-void

    .line 813
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "flags":I
    goto :goto_0

    .line 816
    .end local v0    # "flags":I
    :cond_2
    const-string/jumbo v1, "VmPlaybackPresenter"

    const-string/jumbo v2, "Proximity wake lock already released"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private enableProximitySensor()V
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsSpeakerphoneOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 796
    :cond_0
    return-void

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 800
    const-string/jumbo v0, "VmPlaybackPresenter"

    const-string/jumbo v1, "Acquiring proximity wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 793
    :goto_0
    return-void

    .line 803
    :cond_2
    const-string/jumbo v0, "VmPlaybackPresenter"

    const-string/jumbo v1, "Proximity wake lock already acquired"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 191
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->sInstance:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-direct {v0, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->sInstance:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .line 195
    :cond_0
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->sInstance:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-virtual {v0, p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->init(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 196
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->sInstance:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    return-object v0
.end method

.method private static declared-synchronized getScheduledExecutorServiceInstance()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .prologue
    const-class v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    monitor-enter v1

    .line 901
    :try_start_0
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 902
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 904
    :cond_0
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getShareIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p1, "voicemailFileUri"    # Landroid/net/Uri;

    .prologue
    .line 987
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 988
    .local v0, "shareIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 990
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 991
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 993
    return-object v0
.end method

.method private queryHasContent(Landroid/net/Uri;)Z
    .locals 10
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 422
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 423
    :cond_0
    return v9

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "contentResolver":Landroid/content/ContentResolver;
    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 427
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 430
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 432
    const-string/jumbo v1, "duration"

    .line 431
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 434
    .local v7, "duration":I
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    if-lez v7, :cond_2

    mul-int/lit16 v1, v7, 0x3e8

    :goto_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 436
    const-string/jumbo v1, "has_content"

    .line 435
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v8, :cond_3

    move v1, v8

    .line 439
    :goto_1
    invoke-static {v6}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 435
    return v1

    :cond_2
    move v1, v9

    .line 434
    goto :goto_0

    :cond_3
    move v1, v9

    .line 435
    goto :goto_1

    .line 439
    .end local v7    # "duration":I
    :cond_4
    invoke-static {v6}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 441
    return v9

    .line 438
    :catchall_0
    move-exception v1

    .line 439
    invoke-static {v6}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    .line 438
    throw v1
.end method

.method private setArchivedVoicemailStatusAndUpdateUI(Landroid/net/Uri;Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "voicemailUri"    # Landroid/net/Uri;
    .param p2, "archivedVoicemailUri"    # Landroid/net/Uri;
    .param p3, "status"    # Z

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailAsyncTaskUtil:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    .line 978
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$7;

    invoke-direct {v1, p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$7;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/net/Uri;)V

    .line 977
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->setVoicemailArchiveStatus(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnSetVoicemailArchiveStatusListener;Landroid/net/Uri;Z)V

    .line 976
    return-void
.end method


# virtual methods
.method public archiveContent(Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "voicemailUri"    # Landroid/net/Uri;
    .param p2, "archivedByUser"    # Z

    .prologue
    .line 912
    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$4;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;ZLandroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->checkForContent(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;)V

    .line 911
    return-void
.end method

.method protected checkForContent(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_FOR_CONTENT:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    new-instance v2, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$2;

    invoke-direct {v2, p0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$2;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 407
    return-void
.end method

.method public clearInstance()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1008
    const/4 v0, 0x0

    sput-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->sInstance:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .line 1007
    return-void
.end method

.method public getMediaPlayerPosition()I
    .locals 1

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleError(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 631
    const-string/jumbo v0, "VmPlaybackPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleError: Could not play voicemail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 635
    iput-object v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 636
    iput-boolean v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->onPlaybackError()V

    .line 643
    :cond_1
    iput v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    .line 644
    iput-boolean v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    .line 630
    return-void
.end method

.method protected init(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 219
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mActivity:Landroid/app/Activity;

    .line 220
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    .line 222
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mInitialOrientation:I

    .line 223
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 225
    if-eqz p2, :cond_0

    .line 227
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->VOICEMAIL_URI_KEY:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    .line 228
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->IS_PREPARED_KEY:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    .line 229
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->CLIP_POSITION_KEY:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    .line 230
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->IS_PLAYING_STATE_KEY:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    .line 231
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->IS_SPEAKERPHONE_ON_KEY:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsSpeakerphoneOn:Z

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 235
    iput-boolean v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    .line 236
    iput-boolean v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    .line 218
    :cond_1
    return-void
.end method

.method public isPlaying()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 998
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1003
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsSpeakerphoneOn:Z

    return v0
.end method

.method public notifyUiOfArchiveResult(Landroid/net/Uri;Z)V
    .locals 1
    .param p1, "voicemailUri"    # Landroid/net/Uri;
    .param p2, "archived"    # Z

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-nez v0, :cond_0

    .line 870
    return-void

    .line 872
    :cond_0
    if-eqz p2, :cond_1

    .line 873
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->onVoicemailArchiveSucceded(Landroid/net/Uri;)V

    .line 868
    :goto_0
    return-void

    .line 875
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->onVoicemailArchiveFailed(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onAudioFocusChange(Z)V
    .locals 1
    .param p1, "gainedFocus"    # Z

    .prologue
    .line 668
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    if-ne v0, p1, :cond_0

    .line 670
    return-void

    .line 673
    :cond_0
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    if-nez v0, :cond_1

    .line 674
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->resumePlayback()V

    .line 667
    :goto_0
    return-void

    .line 676
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->pausePlayback()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x0

    .line 652
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->pausePlayback()V

    .line 655
    iput v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    .line 656
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 651
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 383
    iput-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mActivity:Landroid/app/Activity;

    .line 384
    iput-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    .line 386
    sget-object v2, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v2, :cond_0

    .line 387
    sget-object v2, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 388
    sput-object v3, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 391
    :cond_0
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mArchiveResultHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 392
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mArchiveResultHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "fetchResultHandler$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    .line 393
    .local v0, "fetchResultHandler":Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;
    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->destroy()V

    goto :goto_0

    .line 395
    .end local v0    # "fetchResultHandler":Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;
    :cond_1
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mArchiveResultHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 398
    .end local v1    # "fetchResultHandler$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    if-eqz v2, :cond_3

    .line 399
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-virtual {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->destroy()V

    .line 400
    iput-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    .line 381
    :cond_3
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 626
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MediaPlayer error listener invoked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V

    .line 627
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailAudioManager:Lcom/android/dialer/voicemail/VoicemailAudioManager;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailAudioManager;->unregisterReceivers()V

    .line 362
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 363
    iget v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mInitialOrientation:I

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 365
    const-string/jumbo v0, "VmPlaybackPresenter"

    const-string/jumbo v1, "onPause: Orientation changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-void

    .line 370
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->pausePresenter(Z)V

    .line 372
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 359
    :cond_1
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-nez v0, :cond_0

    .line 596
    return-void

    .line 598
    :cond_0
    const-string/jumbo v0, "VmPlaybackPresenter"

    const-string/jumbo v1, "onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    .line 602
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    .line 603
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 602
    invoke-static {v0, v1, v2, v3}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->updateVoicemailDuration(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 605
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 607
    const-string/jumbo v0, "VmPlaybackPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPrepared: mPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 609
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->enableUiElements()V

    .line 610
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setSuccess()V

    .line 611
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 613
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 614
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->resumePlayback()V

    .line 594
    :goto_0
    return-void

    .line 616
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->pausePlayback()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailAudioManager:Lcom/android/dialer/voicemail/VoicemailAudioManager;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailAudioManager;->registerReceivers()V

    .line 352
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->VOICEMAIL_URI_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 246
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->IS_PREPARED_KEY:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 247
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->CLIP_POSITION_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->IS_PLAYING_STATE_KEY:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    sget-object v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->IS_SPEAKERPHONE_ON_KEY:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsSpeakerphoneOn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    :cond_0
    return-void
.end method

.method onVoicemailDeleteUndo()V
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mOnVoicemailDeletedListener:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mOnVoicemailDeletedListener:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;->onVoicemailDeleteUndo()V

    .line 886
    :cond_0
    return-void
.end method

.method onVoicemailDeleted()V
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mOnVoicemailDeletedListener:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mOnVoicemailDeletedListener:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;->onVoicemailDeleted(Landroid/net/Uri;)V

    .line 879
    :cond_0
    return-void
.end method

.method onVoicemailDeletedInDatabase()V
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mOnVoicemailDeletedListener:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mOnVoicemailDeletedListener:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;->onVoicemailDeletedInDatabase()V

    .line 893
    :cond_0
    return-void
.end method

.method public pausePlayback()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 739
    iget-boolean v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    if-nez v1, :cond_0

    .line 740
    return-void

    .line 743
    :cond_0
    iput-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    .line 745
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 746
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 749
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_4

    :goto_0
    iput v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    .line 751
    const-string/jumbo v0, "VmPlaybackPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Paused playback at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v0, :cond_2

    .line 754
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->onPlaybackStopped()V

    .line 757
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailAudioManager:Lcom/android/dialer/voicemail/VoicemailAudioManager;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailAudioManager;->abandonAudioFocus()V

    .line 759
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 760
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 762
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->disableProximitySensor(Z)V

    .line 738
    return-void

    .line 749
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public pausePlaybackForSeeking()V
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mShouldResumePlaybackAfterSeeking:Z

    .line 773
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->pausePlayback()V

    .line 769
    return-void
.end method

.method public pausePresenter(Z)V
    .locals 3
    .param p1, "reset"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 326
    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 329
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->disableProximitySensor(Z)V

    .line 331
    iput-boolean v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    .line 332
    iput-boolean v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    .line 334
    if-eqz p1, :cond_1

    .line 336
    iput v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->onPlaybackStopped()V

    .line 341
    if-eqz p1, :cond_3

    .line 342
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setClipPosition(II)V

    .line 323
    :cond_2
    :goto_0
    return-void

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->getDesiredClipPosition()I

    move-result v0

    iput v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    goto :goto_0
.end method

.method protected prepareContent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 561
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-nez v1, :cond_0

    .line 562
    return-void

    .line 564
    :cond_0
    const-string/jumbo v1, "VmPlaybackPresenter"

    const-string/jumbo v2, "prepareContent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 568
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 569
    iput-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 572
    :cond_1
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->disableUiElements()V

    .line 573
    iput-boolean v4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    .line 576
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 577
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 578
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 579
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 581
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 582
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 583
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 584
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :goto_0
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected requestContent(I)Z
    .locals 4
    .param p1, "code"    # I

    .prologue
    .line 460
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    if-nez v2, :cond_1

    .line 461
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 465
    :cond_1
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/os/Handler;Landroid/net/Uri;I)V

    .line 467
    .local v1, "tempFetchResultHandler":Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;
    packed-switch p1, :pswitch_data_0

    .line 472
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    if-eqz v2, :cond_2

    .line 473
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-virtual {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->destroy()V

    .line 475
    :cond_2
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setIsFetchingContent()V

    .line 476
    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    .line 481
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.FETCH_VOICEMAIL"

    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 482
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 483
    const/4 v2, 0x1

    return v2

    .line 469
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_0
    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mArchiveResultHandlers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public resetAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 310
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->pausePresenter(Z)V

    .line 312
    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    .line 313
    iput-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    .line 309
    return-void
.end method

.method public resumePlayback()V
    .locals 4

    .prologue
    .line 685
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-nez v1, :cond_0

    .line 686
    return-void

    .line 689
    :cond_0
    iget-boolean v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    if-nez v1, :cond_1

    .line 695
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$3;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$3;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    invoke-virtual {p0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->checkForContent(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;)V

    .line 709
    return-void

    .line 712
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    .line 714
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 731
    :cond_2
    :goto_0
    const-string/jumbo v1, "VmPlaybackPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Resumed playback at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->getScheduledExecutorServiceInstance()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->onPlaybackStarted(ILjava/util/concurrent/ScheduledExecutorService;)V

    .line 684
    return-void

    .line 716
    :cond_3
    iget v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    iget-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    .line 718
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 723
    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailAudioManager:Lcom/android/dialer/voicemail/VoicemailAudioManager;

    invoke-virtual {v1}, Lcom/android/dialer/voicemail/VoicemailAudioManager;->requestAudioFocus()V

    .line 724
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 725
    iget-boolean v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsSpeakerphoneOn:Z

    invoke-virtual {p0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->setSpeakerphoneOn(Z)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public resumePlaybackAfterSeeking(I)V
    .locals 1
    .param p1, "desiredPosition"    # I

    .prologue
    .line 777
    iput p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    .line 778
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mShouldResumePlaybackAfterSeeking:Z

    if-eqz v0, :cond_0

    .line 779
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mShouldResumePlaybackAfterSeeking:Z

    .line 780
    invoke-virtual {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->resumePlayback()V

    .line 776
    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 790
    iput p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    .line 789
    return-void
.end method

.method protected sendShareIntent(Landroid/net/Uri;)V
    .locals 2
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailAsyncTaskUtil:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    .line 952
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;

    invoke-direct {v1, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$6;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    .line 951
    invoke-virtual {v0, v1, p1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->getVoicemailFilePath(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnGetArchivedVoicemailFilePathListener;Landroid/net/Uri;)V

    .line 950
    return-void
.end method

.method public setOnVoicemailDeletedListener(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;

    .prologue
    .line 861
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mOnVoicemailDeletedListener:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnVoicemailDeletedListener;

    .line 860
    return-void
.end method

.method public setPlaybackView(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "view"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;
    .param p2, "voicemailUri"    # Landroid/net/Uri;
    .param p3, "startPlayingImmediately"    # Z

    .prologue
    const/4 v1, 0x0

    .line 258
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    .line 259
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p0, p2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setPresenter(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/net/Uri;)V

    .line 263
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    .line 268
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    iput-object p2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    .line 272
    iput v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mPosition:I

    .line 274
    invoke-virtual {p0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->setSpeakerphoneOn(Z)V

    .line 275
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailAudioManager:Lcom/android/dialer/voicemail/VoicemailAudioManager;

    invoke-virtual {v0, v1}, Lcom/android/dialer/voicemail/VoicemailAudioManager;->setSpeakerphoneOn(Z)V

    .line 285
    :goto_1
    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$1;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->checkForContent(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$OnContentCheckedListener;)V

    .line 297
    if-eqz p3, :cond_0

    .line 301
    iput-boolean p3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    goto :goto_0

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    iget-boolean v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsSpeakerphoneOn:Z

    invoke-interface {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->onSpeakerphoneOn(Z)V

    goto :goto_1
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    const/16 v1, 0x80

    .line 834
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    if-nez v0, :cond_0

    .line 835
    return-void

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mView:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    invoke-interface {v0, p1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->onSpeakerphoneOn(Z)V

    .line 840
    iput-boolean p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsSpeakerphoneOn:Z

    .line 845
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPlaying:Z

    if-eqz v0, :cond_2

    .line 846
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailAudioManager:Lcom/android/dialer/voicemail/VoicemailAudioManager;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailAudioManager;->isWiredHeadsetPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 847
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->disableProximitySensor(Z)V

    .line 848
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsPrepared:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 849
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 833
    :cond_2
    :goto_0
    return-void

    .line 852
    :cond_3
    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->enableProximitySensor()V

    .line 853
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 854
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method protected startArchiveVoicemailTask(Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "voicemailUri"    # Landroid/net/Uri;
    .param p2, "archivedByUser"    # Z

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailAsyncTaskUtil:Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;

    .line 929
    new-instance v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$5;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/net/Uri;Z)V

    .line 928
    invoke-virtual {v0, v1, p1}, Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil;->archiveVoicemailContent(Lcom/android/dialer/voicemail/VoicemailAsyncTaskUtil$OnArchiveVoicemailListener;Landroid/net/Uri;)V

    .line 927
    return-void
.end method

.method public toggleSpeakerphone()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 824
    iget-object v3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mVoicemailAudioManager:Lcom/android/dialer/voicemail/VoicemailAudioManager;

    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsSpeakerphoneOn:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/dialer/voicemail/VoicemailAudioManager;->setSpeakerphoneOn(Z)V

    .line 825
    iget-boolean v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mIsSpeakerphoneOn:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->setSpeakerphoneOn(Z)V

    .line 823
    return-void

    :cond_0
    move v0, v2

    .line 824
    goto :goto_0

    :cond_1
    move v1, v2

    .line 825
    goto :goto_1
.end method
