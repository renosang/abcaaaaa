.class public Lcom/android/incallui/async/PausableExecutorImpl;
.super Ljava/lang/Object;
.source "PausableExecutorImpl.java"

# interfaces
.implements Lcom/android/incallui/async/PausableExecutor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ackAllMilestonesForTesting()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public ackMilestoneForTesting()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public awaitMilestoneForTesting()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method

.method public milestone()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
