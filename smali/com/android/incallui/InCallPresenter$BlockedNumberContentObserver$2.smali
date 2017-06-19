.class Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver$2;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Lcom/android/dialer/calllog/CallLogAsyncTaskUtil$OnCallLogQueryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver$2;->this$1:Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryFinished(Z)V
    .locals 1
    .param p1, "hasEntry"    # Z

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver$2;->this$1:Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->-get1(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver$2;->this$1:Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->-wrap0(Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;)V

    .line 264
    :cond_0
    return-void
.end method
