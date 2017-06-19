.class Lcom/android/dialer/filterednumber/BlockedNumbersFragment$1;
.super Ljava/lang/Object;
.source "BlockedNumbersFragment.java"

# interfaces
.implements Lcom/android/dialer/filterednumber/FilteredNumbersUtil$CheckForSendToVoicemailContactListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/filterednumber/BlockedNumbersFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/filterednumber/BlockedNumbersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/filterednumber/BlockedNumbersFragment;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment$1;->this$0:Lcom/android/dialer/filterednumber/BlockedNumbersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 2
    .param p1, "hasSendToVoicemailContact"    # Z

    .prologue
    .line 154
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 155
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment$1;->this$0:Lcom/android/dialer/filterednumber/BlockedNumbersFragment;

    invoke-static {v1}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->-get0(Lcom/android/dialer/filterednumber/BlockedNumbersFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 152
    return-void

    .line 154
    .end local v0    # "visibility":I
    :cond_0
    const/16 v0, 0x8

    .restart local v0    # "visibility":I
    goto :goto_0
.end method
