.class final Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;
.super Ljava/lang/Object;
.source "VoicemailPlaybackLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PositionUpdater"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private mDurationMs:I

.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mLock:Ljava/lang/Object;

.field private mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mUpdateClipPositionRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;)I
    .locals 1

    iget v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mDurationMs:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;ILjava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;
    .param p2, "durationMs"    # I
    .param p3, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater$1;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mUpdateClipPositionRunnable:Ljava/lang/Runnable;

    .line 113
    iput p2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mDurationMs:I

    .line 114
    iput-object p3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 112
    return-void
.end method

.method private cancelPendingRunnables()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 139
    iput-object v2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mUpdateClipPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;

    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mUpdateClipPositionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout;->post(Ljava/lang/Runnable;)Z

    .line 118
    return-void
.end method

.method public startUpdating()V
    .locals 8

    .prologue
    .line 123
    iget-object v7, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 124
    :try_start_0
    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->cancelPendingRunnables()V

    .line 125
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 126
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x21

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    .line 125
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mScheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 122
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public stopUpdating()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    invoke-direct {p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackLayout$PositionUpdater;->cancelPendingRunnables()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 130
    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
