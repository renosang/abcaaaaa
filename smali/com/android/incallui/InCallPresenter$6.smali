.class Lcom/android/incallui/InCallPresenter$6;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$hasTimedOut:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/telecom/Call;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallPresenter;
    .param p2, "val$hasTimedOut"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "val$call"    # Landroid/telecom/Call;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$6;->this$0:Lcom/android/incallui/InCallPresenter;

    iput-object p2, p0, Lcom/android/incallui/InCallPresenter$6;->val$hasTimedOut:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/android/incallui/InCallPresenter$6;->val$call:Landroid/telecom/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$6;->val$hasTimedOut:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 676
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$6;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->-get0(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/CallList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$6;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->-get0(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$6;->val$call:Landroid/telecom/Call;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->onCallAdded(Landroid/telecom/Call;)V

    .line 673
    :cond_0
    return-void
.end method
