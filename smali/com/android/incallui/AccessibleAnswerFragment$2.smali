.class Lcom/android/incallui/AccessibleAnswerFragment$2;
.super Ljava/lang/Object;
.source "AccessibleAnswerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AccessibleAnswerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AccessibleAnswerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/AccessibleAnswerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/AccessibleAnswerFragment;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/incallui/AccessibleAnswerFragment$2;->this$0:Lcom/android/incallui/AccessibleAnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-static {}, Lcom/android/incallui/AccessibleAnswerFragment;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Answer Button Clicked"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/android/incallui/AccessibleAnswerFragment$2;->this$0:Lcom/android/incallui/AccessibleAnswerFragment;

    iget-object v1, p0, Lcom/android/incallui/AccessibleAnswerFragment$2;->this$0:Lcom/android/incallui/AccessibleAnswerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/AccessibleAnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/AccessibleAnswerFragment;->onAnswer(ILandroid/content/Context;)V

    .line 63
    return-void
.end method
