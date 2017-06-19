.class Lcom/android/dialer/calllog/CallLogActivity$1;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/calllog/CallLogActivity;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "e"    # Landroid/text/Editable;

    .prologue
    .line 486
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 467
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 472
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "newText":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogActivity;->-get3(Lcom/android/dialer/calllog/CallLogActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    return-void

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-static {v1, v0}, Lcom/android/dialer/calllog/CallLogActivity;->-set3(Lcom/android/dialer/calllog/CallLogActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 480
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogActivity;->-get2(Lcom/android/dialer/calllog/CallLogActivity;)Lcom/android/dialer/calllog/CallLogSearchFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 481
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogActivity;->-get0(Lcom/android/dialer/calllog/CallLogActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 482
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogActivity;->-get2(Lcom/android/dialer/calllog/CallLogActivity;)Lcom/android/dialer/calllog/CallLogSearchFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogActivity$1;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogActivity;->-get3(Lcom/android/dialer/calllog/CallLogActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/calllog/CallLogSearchFragment;->setQueryString(Ljava/lang/String;)V

    .line 471
    :cond_1
    return-void

    .line 481
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
