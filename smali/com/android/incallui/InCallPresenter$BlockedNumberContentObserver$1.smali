.class Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver$1;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;
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
    .line 244
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver$1;->this$1:Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver$1;->this$1:Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->-wrap0(Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;)V

    .line 246
    return-void
.end method
