.class Lcom/android/dialer/widget/SearchEditTextLayout$2;
.super Ljava/lang/Object;
.source "SearchEditTextLayout.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 124
    iput-object p1, p0, Lcom/android/dialer/widget/SearchEditTextLayout$2;->this$0:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 127
    if-eqz p2, :cond_0

    .line 128
    invoke-static {p1}, Lcom/android/dialer/util/DialerUtils;->showInputMethod(Landroid/view/View;)V

    .line 126
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-static {p1}, Lcom/android/dialer/util/DialerUtils;->hideInputMethod(Landroid/view/View;)V

    goto :goto_0
.end method
