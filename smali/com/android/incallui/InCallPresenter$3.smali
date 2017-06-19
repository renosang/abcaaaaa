.class Lcom/android/incallui/InCallPresenter$3;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Lcom/android/dialer/database/FilteredNumberAsyncQueryHandler$OnCheckBlockedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckComplete(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 225
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->-get1(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/util/TelecomUtil;->silenceRinger(Landroid/content/Context;)V

    .line 224
    :cond_0
    return-void
.end method
