.class Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;
.super Landroid/database/ContentObserver;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockedNumberContentObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver$1;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mNumber:Ljava/lang/String;

.field private mTimeAddedMs:J

.field private mTimeoutRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method static synthetic -wrap0(Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->unregister()V

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/InCallPresenter;Landroid/os/Handler;Ljava/lang/String;J)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/incallui/InCallPresenter;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "timeAddedMs"    # J

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->this$0:Lcom/android/incallui/InCallPresenter;

    .line 252
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 244
    new-instance v0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver$1;-><init>(Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 254
    iput-object p2, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->mHandler:Landroid/os/Handler;

    .line 255
    iput-object p3, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->mNumber:Ljava/lang/String;

    .line 256
    iput-wide p4, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->mTimeAddedMs:J

    .line 251
    return-void
.end method

.method private unregister()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->-get1(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->-get1(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 280
    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->-get1(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->mNumber:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->mTimeAddedMs:J

    .line 262
    new-instance v4, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver$2;

    invoke-direct {v4, p0}, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver$2;-><init>(Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;)V

    .line 261
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/dialer/calllog/CallLogAsyncTaskUtil;->deleteBlockedCall(Landroid/content/Context;Ljava/lang/String;JLcom/android/dialer/calllog/CallLogAsyncTaskUtil$OnCallLogQueryFinishedListener;)V

    .line 260
    return-void
.end method

.method public register()V
    .locals 4

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->-get1(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->-get1(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 275
    sget-object v1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    .line 274
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 276
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$BlockedNumberContentObserver;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 272
    :cond_0
    return-void
.end method
