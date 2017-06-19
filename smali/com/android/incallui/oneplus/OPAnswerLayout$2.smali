.class Lcom/android/incallui/oneplus/OPAnswerLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OPAnswerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/oneplus/OPAnswerLayout;->createAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;


# direct methods
.method constructor <init>(Lcom/android/incallui/oneplus/OPAnswerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/oneplus/OPAnswerLayout;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$2;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$2;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-wrap0(Lcom/android/incallui/oneplus/OPAnswerLayout;)V

    .line 172
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$2;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get3(Lcom/android/incallui/oneplus/OPAnswerLayout;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 170
    return-void
.end method
