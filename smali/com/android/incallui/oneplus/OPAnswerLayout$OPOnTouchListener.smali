.class Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;
.super Ljava/lang/Object;
.source "OPAnswerLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/oneplus/OPAnswerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OPOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;


# direct methods
.method private constructor <init>(Lcom/android/incallui/oneplus/OPAnswerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/oneplus/OPAnswerLayout;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/oneplus/OPAnswerLayout;Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/oneplus/OPAnswerLayout;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;-><init>(Lcom/android/incallui/oneplus/OPAnswerLayout;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 109
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 110
    .local v2, "x":F
    const-string/jumbo v3, "OPAnswerLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTouch action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", x: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    packed-switch v0, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    return v7

    .line 113
    :pswitch_0
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v3, v6}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-set0(Lcom/android/incallui/oneplus/OPAnswerLayout;Z)Z

    .line 114
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v3, v2}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-set1(Lcom/android/incallui/oneplus/OPAnswerLayout;F)F

    .line 115
    return v6

    .line 117
    :pswitch_1
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v3}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get0(Lcom/android/incallui/oneplus/OPAnswerLayout;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v3}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get4(Lcom/android/incallui/oneplus/OPAnswerLayout;)F

    move-result v3

    sub-float v1, v2, v3

    .line 119
    .local v1, "dx":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v4}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get7(Lcom/android/incallui/oneplus/OPAnswerLayout;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v4}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get6(Lcom/android/incallui/oneplus/OPAnswerLayout;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 120
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v3}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get5(Lcom/android/incallui/oneplus/OPAnswerLayout;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 121
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v3}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-wrap2(Lcom/android/incallui/oneplus/OPAnswerLayout;)V

    .line 123
    :cond_1
    return v6

    .line 127
    .end local v1    # "dx":F
    :pswitch_2
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v3}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get0(Lcom/android/incallui/oneplus/OPAnswerLayout;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v3}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get4(Lcom/android/incallui/oneplus/OPAnswerLayout;)F

    move-result v3

    sub-float v1, v2, v3

    .line 129
    .restart local v1    # "dx":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v4}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get6(Lcom/android/incallui/oneplus/OPAnswerLayout;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    .line 130
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_3

    .line 131
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v3}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get5(Lcom/android/incallui/oneplus/OPAnswerLayout;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v4}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get6(Lcom/android/incallui/oneplus/OPAnswerLayout;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 132
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v3}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get2(Lcom/android/incallui/oneplus/OPAnswerLayout;)Lcom/android/incallui/oneplus/OPAnswerLayout$FunctionListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 133
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v3}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get2(Lcom/android/incallui/oneplus/OPAnswerLayout;)Lcom/android/incallui/oneplus/OPAnswerLayout$FunctionListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v4}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get1(Lcom/android/incallui/oneplus/OPAnswerLayout;)Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/incallui/oneplus/OPAnswerLayout$FunctionListener;->Answer(Landroid/content/Context;)V

    .line 144
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v3, v7}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-set0(Lcom/android/incallui/oneplus/OPAnswerLayout;Z)Z

    .line 145
    return v6

    .line 136
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v3}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get5(Lcom/android/incallui/oneplus/OPAnswerLayout;)Landroid/widget/FrameLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v4}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get6(Lcom/android/incallui/oneplus/OPAnswerLayout;)F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 137
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v3}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get2(Lcom/android/incallui/oneplus/OPAnswerLayout;)Lcom/android/incallui/oneplus/OPAnswerLayout$FunctionListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 138
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v3}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get2(Lcom/android/incallui/oneplus/OPAnswerLayout;)Lcom/android/incallui/oneplus/OPAnswerLayout$FunctionListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v4}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get1(Lcom/android/incallui/oneplus/OPAnswerLayout;)Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/incallui/oneplus/OPAnswerLayout$FunctionListener;->Decline(Landroid/content/Context;)V

    goto :goto_1

    .line 142
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-virtual {v3}, Lcom/android/incallui/oneplus/OPAnswerLayout;->restartAnimation()V

    goto :goto_1

    .line 149
    .end local v1    # "dx":F
    :pswitch_3
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v3}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-get0(Lcom/android/incallui/oneplus/OPAnswerLayout;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-virtual {v3}, Lcom/android/incallui/oneplus/OPAnswerLayout;->restartAnimation()V

    .line 151
    iget-object v3, p0, Lcom/android/incallui/oneplus/OPAnswerLayout$OPOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPAnswerLayout;

    invoke-static {v3, v7}, Lcom/android/incallui/oneplus/OPAnswerLayout;->-set0(Lcom/android/incallui/oneplus/OPAnswerLayout;Z)Z

    goto/16 :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
