.class Lcom/android/incallui/InCallActivity$2;
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
    .line 228
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$2;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Lcom/android/phone/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 231
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$2;->this$0:Lcom/android/incallui/InCallActivity;

    const-string/jumbo v1, "tag_dialpad_fragment"

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/incallui/InCallActivity;->-wrap4(Lcom/android/incallui/InCallActivity;Ljava/lang/String;ZZ)V

    .line 232
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$2;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0, v3}, Lcom/android/incallui/InCallActivity;->-set1(Lcom/android/incallui/InCallActivity;Z)Z

    .line 230
    return-void
.end method
