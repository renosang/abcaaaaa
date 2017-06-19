.class Lcom/android/incallui/oneplus/OPBottomLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OPBottomLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/oneplus/OPBottomLayout;->handleUp(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/oneplus/OPBottomLayout;


# direct methods
.method constructor <init>(Lcom/android/incallui/oneplus/OPBottomLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/oneplus/OPBottomLayout;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPBottomLayout$2;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 139
    const-string/jumbo v0, "OPBottomLayout"

    const-string/jumbo v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout$2;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/oneplus/OPBottomLayout;->setClipToOutline(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout$2;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-virtual {v0, v2}, Lcom/android/incallui/oneplus/OPBottomLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout$2;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get7(Lcom/android/incallui/oneplus/OPBottomLayout;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020228

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout$2;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get6(Lcom/android/incallui/oneplus/OPBottomLayout;)Lcom/android/incallui/oneplus/OPBottomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/oneplus/OPBottomView;->reset()V

    .line 144
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout$2;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get5(Lcom/android/incallui/oneplus/OPBottomLayout;)Lcom/android/incallui/oneplus/OPBottomLayout$FunctionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/incallui/oneplus/OPBottomLayout$2;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v0}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get5(Lcom/android/incallui/oneplus/OPBottomLayout;)Lcom/android/incallui/oneplus/OPBottomLayout$FunctionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/oneplus/OPBottomLayout$FunctionListener;->messageText()V

    .line 138
    :cond_0
    return-void
.end method
