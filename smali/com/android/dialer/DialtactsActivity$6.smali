.class Lcom/android/dialer/DialtactsActivity$6;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/android/dialer/widget/SearchEditTextLayout$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/DialtactsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/DialtactsActivity;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$6;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackButtonClicked()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$6;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/dialer/DialtactsActivity;->onBackPressed()V

    .line 429
    return-void
.end method

.method public onSearchViewClicked()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$6;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->-get2(Lcom/android/dialer/DialtactsActivity;)Lcom/android/contacts/common/widget/FloatingActionButtonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->scaleOut()V

    .line 434
    return-void
.end method
