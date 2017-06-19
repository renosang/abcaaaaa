.class Lcom/android/dialer/widget/SearchEditTextLayout$6;
.super Ljava/lang/Object;
.source "SearchEditTextLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/widget/SearchEditTextLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/widget/SearchEditTextLayout;


# direct methods
.method constructor <init>(Lcom/android/dialer/widget/SearchEditTextLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/widget/SearchEditTextLayout;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/dialer/widget/SearchEditTextLayout$6;->this$0:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout$6;->this$0:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-static {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->-get0(Lcom/android/dialer/widget/SearchEditTextLayout;)Lcom/android/dialer/widget/SearchEditTextLayout$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout$6;->this$0:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-static {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->-get0(Lcom/android/dialer/widget/SearchEditTextLayout;)Lcom/android/dialer/widget/SearchEditTextLayout$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/widget/SearchEditTextLayout$Callback;->onBackButtonClicked()V

    .line 168
    :cond_0
    return-void
.end method
