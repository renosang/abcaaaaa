.class Lcom/android/incallui/InCallPresenter$5;
.super Landroid/telephony/PhoneStateListener;
.source "InCallPresenter.java"


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
    .line 2497
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$5;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method
