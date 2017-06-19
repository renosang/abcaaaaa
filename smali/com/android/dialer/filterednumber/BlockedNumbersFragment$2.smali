.class Lcom/android/dialer/filterednumber/BlockedNumbersFragment$2;
.super Ljava/lang/Object;
.source "BlockedNumbersFragment.java"

# interfaces
.implements Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->onClick(Landroid/view/View;)V
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
    .line 222
    iput-object p1, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment$2;->this$0:Lcom/android/dialer/filterednumber/BlockedNumbersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImportComplete()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/dialer/filterednumber/BlockedNumbersFragment$2;->this$0:Lcom/android/dialer/filterednumber/BlockedNumbersFragment;

    invoke-static {v0}, Lcom/android/dialer/filterednumber/BlockedNumbersFragment;->-get0(Lcom/android/dialer/filterednumber/BlockedNumbersFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    return-void
.end method
