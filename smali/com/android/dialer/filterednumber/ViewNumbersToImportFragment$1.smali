.class Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment$1;
.super Ljava/lang/Object;
.source "ViewNumbersToImportFragment.java"

# interfaces
.implements Lcom/android/dialer/filterednumber/FilteredNumbersUtil$ImportSendToVoicemailContactsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment$1;->this$0:Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImportComplete()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment$1;->this$0:Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;

    invoke-virtual {v0}, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment$1;->this$0:Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;

    invoke-virtual {v0}, Lcom/android/dialer/filterednumber/ViewNumbersToImportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 123
    :cond_0
    return-void
.end method
