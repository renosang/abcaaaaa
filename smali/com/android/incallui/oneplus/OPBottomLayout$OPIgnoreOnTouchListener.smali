.class public Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;
.super Ljava/lang/Object;
.source "OPBottomLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/oneplus/OPBottomLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OPIgnoreOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/oneplus/OPBottomLayout;


# direct methods
.method public constructor <init>(Lcom/android/incallui/oneplus/OPBottomLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/oneplus/OPBottomLayout;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 156
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 157
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 158
    .local v2, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 159
    .local v4, "y":F
    const-string/jumbo v6, "OPBottomLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onTouch action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", x: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", y: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sparse-switch v0, :sswitch_data_0

    .line 215
    :cond_0
    :goto_0
    const/4 v6, 0x0

    return v6

    .line 162
    :sswitch_0
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get0(Lcom/android/incallui/oneplus/OPBottomLayout;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get10(Lcom/android/incallui/oneplus/OPBottomLayout;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get10(Lcom/android/incallui/oneplus/OPBottomLayout;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 163
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    iget-object v7, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v7}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get10(Lcom/android/incallui/oneplus/OPBottomLayout;)Landroid/view/View;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/oneplus/OPBottomLayout;->-wrap1(Lcom/android/incallui/oneplus/OPBottomLayout;Landroid/view/View;)V

    .line 165
    :cond_1
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/incallui/oneplus/OPBottomLayout;->-set0(Lcom/android/incallui/oneplus/OPBottomLayout;Z)Z

    .line 166
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6, v2}, Lcom/android/incallui/oneplus/OPBottomLayout;->-set1(Lcom/android/incallui/oneplus/OPBottomLayout;F)F

    .line 167
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6, v4}, Lcom/android/incallui/oneplus/OPBottomLayout;->-set2(Lcom/android/incallui/oneplus/OPBottomLayout;F)F

    .line 168
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6, p1}, Lcom/android/incallui/oneplus/OPBottomLayout;->-set3(Lcom/android/incallui/oneplus/OPBottomLayout;Landroid/view/View;)Landroid/view/View;

    .line 169
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0e01a6

    if-ne v6, v7, :cond_3

    .line 170
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get11(Lcom/android/incallui/oneplus/OPBottomLayout;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f0d032f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get2(Lcom/android/incallui/oneplus/OPBottomLayout;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f020221

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    :cond_2
    :goto_1
    const/4 v6, 0x1

    return v6

    .line 172
    :cond_3
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0e01a9

    if-ne v6, v7, :cond_2

    .line 173
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get11(Lcom/android/incallui/oneplus/OPBottomLayout;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f0d0330

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 174
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get7(Lcom/android/incallui/oneplus/OPBottomLayout;)Landroid/widget/ImageView;

    move-result-object v6

    const v7, 0x7f020229

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 178
    :sswitch_1
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get0(Lcom/android/incallui/oneplus/OPBottomLayout;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get10(Lcom/android/incallui/oneplus/OPBottomLayout;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get10(Lcom/android/incallui/oneplus/OPBottomLayout;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 179
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get3(Lcom/android/incallui/oneplus/OPBottomLayout;)F

    move-result v6

    sub-float v3, v2, v6

    .line 180
    .local v3, "xDist":F
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get4(Lcom/android/incallui/oneplus/OPBottomLayout;)F

    move-result v6

    sub-float v5, v4, v6

    .line 181
    .local v5, "yDist":F
    float-to-double v6, v3

    float-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 182
    .local v1, "distance":F
    const-string/jumbo v6, "OPBottomLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xDist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", yDist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", distance: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0e01a6

    if-ne v6, v7, :cond_5

    .line 184
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get1(Lcom/android/incallui/oneplus/OPBottomLayout;)Lcom/android/incallui/oneplus/OPBottomView;

    move-result-object v6

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float/2addr v7, v1

    iget-object v8, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v8}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get8(Lcom/android/incallui/oneplus/OPBottomLayout;)F

    move-result v8

    add-float/2addr v7, v8

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/incallui/oneplus/OPBottomView;->setCircleRadius(FZ)V

    .line 188
    :cond_4
    :goto_2
    const/4 v6, 0x1

    return v6

    .line 185
    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f0e01a9

    if-ne v6, v7, :cond_4

    .line 186
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get6(Lcom/android/incallui/oneplus/OPBottomLayout;)Lcom/android/incallui/oneplus/OPBottomView;

    move-result-object v6

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float/2addr v7, v1

    iget-object v8, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v8}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get8(Lcom/android/incallui/oneplus/OPBottomLayout;)F

    move-result v8

    add-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/incallui/oneplus/OPBottomView;->setCircleRadius(FZ)V

    goto :goto_2

    .line 192
    .end local v1    # "distance":F
    .end local v3    # "xDist":F
    .end local v5    # "yDist":F
    :sswitch_2
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get0(Lcom/android/incallui/oneplus/OPBottomLayout;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get10(Lcom/android/incallui/oneplus/OPBottomLayout;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get10(Lcom/android/incallui/oneplus/OPBottomLayout;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 193
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get3(Lcom/android/incallui/oneplus/OPBottomLayout;)F

    move-result v6

    sub-float v3, v2, v6

    .line 194
    .restart local v3    # "xDist":F
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get4(Lcom/android/incallui/oneplus/OPBottomLayout;)F

    move-result v6

    sub-float v5, v4, v6

    .line 195
    .restart local v5    # "yDist":F
    float-to-double v6, v3

    float-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 196
    .restart local v1    # "distance":F
    const-string/jumbo v6, "OPBottomLayout"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xDist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", yDist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", distance: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get9(Lcom/android/incallui/oneplus/OPBottomLayout;)F

    move-result v6

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_6

    .line 198
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6, p1}, Lcom/android/incallui/oneplus/OPBottomLayout;->-wrap0(Lcom/android/incallui/oneplus/OPBottomLayout;Landroid/view/View;)V

    .line 202
    :goto_3
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/incallui/oneplus/OPBottomLayout;->-set0(Lcom/android/incallui/oneplus/OPBottomLayout;Z)Z

    .line 203
    const/4 v6, 0x1

    return v6

    .line 200
    :cond_6
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6, p1}, Lcom/android/incallui/oneplus/OPBottomLayout;->-wrap1(Lcom/android/incallui/oneplus/OPBottomLayout;Landroid/view/View;)V

    goto :goto_3

    .line 209
    .end local v1    # "distance":F
    .end local v3    # "xDist":F
    .end local v5    # "yDist":F
    :sswitch_3
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6}, Lcom/android/incallui/oneplus/OPBottomLayout;->-get0(Lcom/android/incallui/oneplus/OPBottomLayout;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 210
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    invoke-static {v6, p1}, Lcom/android/incallui/oneplus/OPBottomLayout;->-wrap1(Lcom/android/incallui/oneplus/OPBottomLayout;Landroid/view/View;)V

    .line 211
    iget-object v6, p0, Lcom/android/incallui/oneplus/OPBottomLayout$OPIgnoreOnTouchListener;->this$0:Lcom/android/incallui/oneplus/OPBottomLayout;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/incallui/oneplus/OPBottomLayout;->-set0(Lcom/android/incallui/oneplus/OPBottomLayout;Z)Z

    goto/16 :goto_0

    .line 160
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x5 -> :sswitch_3
        0x105 -> :sswitch_3
    .end sparse-switch
.end method
