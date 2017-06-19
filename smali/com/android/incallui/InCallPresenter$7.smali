.class Lcom/android/incallui/InCallPresenter$7;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallPresenter;->maybeBlockCall(Landroid/telecom/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;

.field final synthetic val$call:Landroid/telecom/Call;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$hasTimedOut:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$timeAdded:J


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/telecom/Call;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/incallui/InCallPresenter;
    .param p2, "val$hasTimedOut"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "val$handler"    # Landroid/os/Handler;
    .param p4, "val$runnable"    # Ljava/lang/Runnable;
    .param p5, "val$call"    # Landroid/telecom/Call;
    .param p6, "val$number"    # Ljava/lang/String;
    .param p7, "val$timeAdded"    # J

    .prologue
    .line 684
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$7;->this$0:Lcom/android/incallui/InCallPresenter;

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter$7;->val$hasTimedOut:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/android/incallui/InCallPresenter$7;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/incallui/InCallPresenter$7;->val$runnable:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/incallui/InCallPresenter$7;->val$call:Landroid/telecom/Call;

    iput-object p6, p0, Lcom/android/incallui/InCallPresenter$7;->val$number:Ljava/lang/String;

    iput-wide p7, p0, Lcom/android/incallui/InCallPresenter$7;->val$timeAdded:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckComplete(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 687
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$7;->val$hasTimedOut:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$7;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$7;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 690
    :cond_0
    if-nez p1, :cond_2

    .line 691
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$7;->val$hasTimedOut:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 693
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$7;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->-get0(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/CallList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 694
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$7;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->-get0(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter$7;->val$call:Landroid/telecom/Call;

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->onCallAdded(Landroid/telecom/Call;)V

    .line 686
    :cond_1
    :goto_0
    return-void

    .line 699
    :cond_2
    const-string/jumbo v1, "Rejecting incoming call from blocked number"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$7;->val$call:Landroid/telecom/Call;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    .line 701
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/android/dialer/logging/Logger;->logInteraction(I)V

    .line 703
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$7;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->-get3(Lcom/android/incallui/InCallPresenter;)Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler;->incrementFilteredCount(Ljava/lang/Integer;)V

    .line 708
    new-instance v0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$7;->this$0:Lcom/android/incallui/InCallPresenter;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter$7;->val$number:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/incallui/InCallPresenter$7;->val$timeAdded:J

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;-><init>(Lcom/android/incallui/InCallPresenter;Landroid/os/Handler;Ljava/lang/String;J)V

    .line 709
    .local v0, "contentObserver":Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;
    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->register()V

    goto :goto_0
.end method
