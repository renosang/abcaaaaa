.class Lcom/android/incallui/InCallActivity$1;
.super Lcom/android/phone/common/animation/AnimationListenerAdapter;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Lcom/android/phone/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 183
    const-string/jumbo v0, "onAnimationEnd"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0, v1}, Lcom/android/incallui/InCallActivity;->-set0(Lcom/android/incallui/InCallActivity;Z)Z

    .line 185
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->showCallCardFragment(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->handleFinish()V

    .line 182
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$1;->this$0:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/InCallActivity;->-set0(Lcom/android/incallui/InCallActivity;Z)Z

    .line 177
    return-void
.end method
