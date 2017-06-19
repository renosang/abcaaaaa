.class Lcom/android/dialer/widget/SearchEditTextLayout$1;
.super Ljava/lang/Object;
.source "SearchEditTextLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 115
    iput-object p1, p0, Lcom/android/dialer/widget/SearchEditTextLayout$1;->this$0:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout$1;->this$0:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-static {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->-get2(Lcom/android/dialer/widget/SearchEditTextLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 119
    iget-object v0, p0, Lcom/android/dialer/widget/SearchEditTextLayout$1;->this$0:Lcom/android/dialer/widget/SearchEditTextLayout;

    invoke-static {v0}, Lcom/android/dialer/widget/SearchEditTextLayout;->-get3(Lcom/android/dialer/widget/SearchEditTextLayout;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->performLongClick()Z

    .line 120
    const/4 v0, 0x0

    return v0
.end method
