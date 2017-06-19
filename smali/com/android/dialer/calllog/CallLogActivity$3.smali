.class Lcom/android/dialer/calllog/CallLogActivity$3;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogActivity;->prepareSearchView()V
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
    .line 432
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogActivity$3;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 435
    if-eqz p2, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$3;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogActivity;->-wrap2(Lcom/android/dialer/calllog/CallLogActivity;Landroid/view/View;)V

    .line 434
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogActivity$3;->this$0:Lcom/android/dialer/calllog/CallLogActivity;

    invoke-static {v0, p1}, Lcom/android/dialer/calllog/CallLogActivity;->-wrap1(Lcom/android/dialer/calllog/CallLogActivity;Landroid/view/View;)V

    goto :goto_0
.end method
