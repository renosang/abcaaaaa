.class Lcom/android/dialer/DialtactsActivity$5;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 368
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$5;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 371
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$5;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->-get10(Lcom/android/dialer/DialtactsActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$5;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->-wrap0(Lcom/android/dialer/DialtactsActivity;)Z

    .line 380
    :cond_0
    :goto_0
    return v1

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$5;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->-wrap4(Lcom/android/dialer/DialtactsActivity;)V

    goto :goto_0
.end method
