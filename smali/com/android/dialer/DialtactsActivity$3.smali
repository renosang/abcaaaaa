.class Lcom/android/dialer/DialtactsActivity$3;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialtactsActivity;
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
    .line 307
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 346
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 309
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 314
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "newText":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v4}, Lcom/android/dialer/DialtactsActivity;->-get9(Lcom/android/dialer/DialtactsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 319
    return-void

    .line 325
    :cond_0
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v4, v0}, Lcom/android/dialer/DialtactsActivity;->-set0(Lcom/android/dialer/DialtactsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 328
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 331
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v4}, Lcom/android/dialer/DialtactsActivity;->-get5(Lcom/android/dialer/DialtactsActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v4}, Lcom/android/dialer/DialtactsActivity;->-get3(Lcom/android/dialer/DialtactsActivity;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 332
    :cond_1
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v4}, Lcom/android/dialer/DialtactsActivity;->-get5(Lcom/android/dialer/DialtactsActivity;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v4}, Lcom/android/dialer/DialtactsActivity;->-get4(Lcom/android/dialer/DialtactsActivity;)Z

    move-result v1

    .line 333
    .local v1, "sameSearchMode":Z
    :goto_0
    if-nez v1, :cond_2

    .line 334
    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    iget-object v5, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v5}, Lcom/android/dialer/DialtactsActivity;->-get5(Lcom/android/dialer/DialtactsActivity;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v6}, Lcom/android/dialer/DialtactsActivity;->-get9(Lcom/android/dialer/DialtactsActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v2}, Lcom/android/dialer/DialtactsActivity;->-wrap2(Lcom/android/dialer/DialtactsActivity;ZLjava/lang/String;Z)V

    .line 338
    .end local v1    # "sameSearchMode":Z
    :cond_2
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v2}, Lcom/android/dialer/DialtactsActivity;->-get11(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/SmartDialSearchFragment;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v2}, Lcom/android/dialer/DialtactsActivity;->-get11(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/SmartDialSearchFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/list/SmartDialSearchFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 339
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v2}, Lcom/android/dialer/DialtactsActivity;->-get11(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/SmartDialSearchFragment;

    move-result-object v2

    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v4}, Lcom/android/dialer/DialtactsActivity;->-get9(Lcom/android/dialer/DialtactsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/android/dialer/list/SmartDialSearchFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 313
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v1, v2

    .line 331
    goto :goto_0

    :cond_5
    move v1, v3

    .line 332
    goto :goto_0

    .line 340
    :cond_6
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v2}, Lcom/android/dialer/DialtactsActivity;->-get8(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/RegularSearchFragment;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v2}, Lcom/android/dialer/DialtactsActivity;->-get8(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/RegularSearchFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/list/RegularSearchFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 341
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v2}, Lcom/android/dialer/DialtactsActivity;->-get8(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/list/RegularSearchFragment;

    move-result-object v2

    iget-object v4, p0, Lcom/android/dialer/DialtactsActivity$3;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v4}, Lcom/android/dialer/DialtactsActivity;->-get9(Lcom/android/dialer/DialtactsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/android/dialer/list/RegularSearchFragment;->setQueryString(Ljava/lang/String;Z)V

    goto :goto_1
.end method
