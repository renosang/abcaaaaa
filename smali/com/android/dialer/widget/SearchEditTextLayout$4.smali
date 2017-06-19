.class Lcom/android/dialer/widget/SearchEditTextLayout$4;
.super Ljava/lang/Object;
.source "SearchEditTextLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 144
    iput-object p1, p0, Lcom/android/dialer/widget/SearchEditTextLayout$4;->this$0:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 155
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 146
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout$4;->this$0:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-static {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->-get1(Lcom/android/dialer/widget/SearchEditTextLayout;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 150
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
