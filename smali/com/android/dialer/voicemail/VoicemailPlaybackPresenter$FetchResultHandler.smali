.class Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;
.super Landroid/database/ContentObserver;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchResultHandler"
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mFetchResultHandler:Landroid/os/Handler;

.field private mIsWaitingForResult:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mRequestCode:I

.field private final mVoicemailUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;


# direct methods
.method static synthetic -get0(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mIsWaitingForResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)I
    .locals 1

    iget v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mRequestCode:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mVoicemailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;Landroid/os/Handler;Landroid/net/Uri;I)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "code"    # I

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    .line 494
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 488
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mIsWaitingForResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 495
    iput-object p2, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mFetchResultHandler:Landroid/os/Handler;

    .line 496
    iput p4, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mRequestCode:I

    .line 497
    iput-object p3, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mVoicemailUri:Landroid/net/Uri;

    .line 498
    iget-object v0, p1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 500
    iget-object v1, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mVoicemailUri:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 499
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 501
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mFetchResultHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 493
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mIsWaitingForResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 521
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mFetchResultHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 518
    :cond_0
    return-void
.end method

.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/android/dialer/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;->CHECK_CONTENT_AFTER_CHANGE:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$Tasks;

    .line 528
    new-instance v2, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;

    invoke-direct {v2, p0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler$1;-><init>(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;)V

    .line 527
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/dialer/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 526
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->mIsWaitingForResult:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    iget-object v0, v0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 512
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->-get1(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->this$0:Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;

    invoke-static {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;->-get1(Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter;)Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/voicemail/VoicemailPlaybackPresenter$PlaybackView;->setFetchContentTimeout()V

    .line 509
    :cond_0
    return-void
.end method
