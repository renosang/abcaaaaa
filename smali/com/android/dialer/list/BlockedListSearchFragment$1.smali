.class Lcom/android/dialer/list/BlockedListSearchFragment$1;
.super Ljava/lang/Object;
.source "BlockedListSearchFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/BlockedListSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/BlockedListSearchFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/BlockedListSearchFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/dialer/list/BlockedListSearchFragment;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/dialer/list/BlockedListSearchFragment$1;->this$0:Lcom/android/dialer/list/BlockedListSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 64
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 56
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/dialer/list/BlockedListSearchFragment$1;->this$0:Lcom/android/dialer/list/BlockedListSearchFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/list/BlockedListSearchFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 59
    return-void
.end method
