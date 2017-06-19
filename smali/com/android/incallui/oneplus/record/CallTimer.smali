.class public Lcom/android/incallui/oneplus/record/CallTimer;
.super Landroid/os/Handler;
.source "CallTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/oneplus/record/CallTimer$CallTimerCallback;
    }
.end annotation


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mInternalCallback:Ljava/lang/Runnable;

.field private mInterval:J

.field private mLastReportedTime:J

.field private mRunning:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/incallui/oneplus/record/CallTimer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/CallTimer;->periodicUpdateTimer()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const-wide/16 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 34
    iput-wide v0, p0, Lcom/android/incallui/oneplus/record/CallTimer;->mInterval:J

    .line 35
    iput-wide v0, p0, Lcom/android/incallui/oneplus/record/CallTimer;->mLastReportedTime:J

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/oneplus/record/CallTimer;->mRunning:Z

    .line 37
    iput-object p1, p0, Lcom/android/incallui/oneplus/record/CallTimer;->mCallback:Ljava/lang/Runnable;

    .line 38
    new-instance v0, Lcom/android/incallui/oneplus/record/CallTimer$CallTimerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/oneplus/record/CallTimer$CallTimerCallback;-><init>(Lcom/android/incallui/oneplus/record/CallTimer;Lcom/android/incallui/oneplus/record/CallTimer$CallTimerCallback;)V

    iput-object v0, p0, Lcom/android/incallui/oneplus/record/CallTimer;->mInternalCallback:Ljava/lang/Runnable;

    .line 32
    return-void
.end method

.method private periodicUpdateTimer()V
    .locals 8

    .prologue
    .line 64
    iget-boolean v4, p0, Lcom/android/incallui/oneplus/record/CallTimer;->mRunning:Z

    if-nez v4, :cond_0

    .line 65
    return-void

    .line 68
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 69
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/incallui/oneplus/record/CallTimer;->mLastReportedTime:J

    iget-wide v6, p0, Lcom/android/incallui/oneplus/record/CallTimer;->mInterval:J

    add-long v0, v4, v6

    .line 70
    .local v0, "nextReport":J
    :goto_0
    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    .line 71
    iget-wide v4, p0, Lcom/android/incallui/oneplus/record/CallTimer;->mInterval:J

    add-long/2addr v0, v4

    goto :goto_0

    .line 74
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/oneplus/record/CallTimer;->mInternalCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/incallui/oneplus/record/CallTimer;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 75
    iput-wide v0, p0, Lcom/android/incallui/oneplus/record/CallTimer;->mLastReportedTime:J

    .line 78
    iget-object v4, p0, Lcom/android/incallui/oneplus/record/CallTimer;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 63
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/incallui/oneplus/record/CallTimer;->mInternalCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/incallui/oneplus/record/CallTimer;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/oneplus/record/CallTimer;->mRunning:Z

    .line 58
    return-void
.end method

.method public start(J)Z
    .locals 3
    .param p1, "interval"    # J

    .prologue
    const/4 v2, 0x1

    .line 42
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    return v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/record/CallTimer;->cancel()V

    .line 49
    iput-wide p1, p0, Lcom/android/incallui/oneplus/record/CallTimer;->mInterval:J

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/oneplus/record/CallTimer;->mLastReportedTime:J

    .line 52
    iput-boolean v2, p0, Lcom/android/incallui/oneplus/record/CallTimer;->mRunning:Z

    .line 53
    invoke-direct {p0}, Lcom/android/incallui/oneplus/record/CallTimer;->periodicUpdateTimer()V

    .line 55
    return v2
.end method
