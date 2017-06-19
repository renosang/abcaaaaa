.class public Lcom/android/incallui/GlowPadWrapper;
.super Lcom/android/incallui/widget/multiwaveview/GlowPadView;
.source "GlowPadWrapper.java"

# interfaces
.implements Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/GlowPadWrapper$1;
    }
.end annotation


# instance fields
.field private mAnswerFragment:Lcom/android/incallui/AnswerFragment;

.field private mPingEnabled:Z

.field private final mPingHandler:Landroid/os/Handler;

.field private mTargetTriggered:Z

.field private mVideoState:I


# direct methods
.method static synthetic -wrap0(Lcom/android/incallui/GlowPadWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/GlowPadWrapper;->triggerPing()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/android/incallui/GlowPadWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/GlowPadWrapper$1;-><init>(Lcom/android/incallui/GlowPadWrapper;)V

    iput-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/GlowPadWrapper;->mVideoState:I

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "class created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Lcom/android/incallui/GlowPadWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/GlowPadWrapper$1;-><init>(Lcom/android/incallui/GlowPadWrapper;)V

    iput-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    .line 53
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/GlowPadWrapper;->mVideoState:I

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "class created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private triggerPing()V
    .locals 5

    .prologue
    const/16 v4, 0x65

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "triggerPing(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->ping()V

    .line 90
    iget-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "onFinishInflate()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-super {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->onFinishInflate()V

    .line 69
    invoke-virtual {p0, p0}, Lcom/android/incallui/GlowPadWrapper;->setOnTriggerListener(Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 66
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 97
    const-string/jumbo v0, "onGrabbed()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->stopPing()V

    .line 96
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 146
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 103
    const-string/jumbo v0, "onReleased()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    .line 102
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->startPing()V

    goto :goto_0
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "target"    # I

    .prologue
    const/4 v4, 0x1

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrigger() view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p2}, Lcom/android/incallui/GlowPadWrapper;->getResourceIdForTarget(I)I

    move-result v0

    .line 115
    .local v0, "resId":I
    const v1, 0x7f0200f3

    if-ne v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/incallui/AnswerFragment;->onAnswer(ILandroid/content/Context;)V

    .line 117
    iput-boolean v4, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    .line 112
    :goto_0
    return-void

    .line 118
    :cond_0
    const v1, 0x7f0200f9

    if-ne v0, v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/AnswerFragment;->onDecline(Landroid/content/Context;)V

    .line 120
    iput-boolean v4, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    .line 121
    :cond_1
    const v1, 0x7f020101

    if-ne v0, v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerFragment;->onText()V

    .line 123
    iput-boolean v4, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    .line 124
    :cond_2
    const v1, 0x7f020143

    if-eq v0, v1, :cond_3

    const v1, 0x7f0200f6

    if-ne v0, v1, :cond_4

    .line 125
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    iget v2, p0, Lcom/android/incallui/GlowPadWrapper;->mVideoState:I

    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/AnswerFragment;->onAnswer(ILandroid/content/Context;)V

    .line 126
    iput-boolean v4, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    .line 127
    :cond_4
    const v1, 0x7f0200fc

    if-ne v0, v1, :cond_5

    .line 128
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/AnswerFragment;->onDeclineUpgradeRequest(Landroid/content/Context;)V

    .line 129
    iput-boolean v4, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    .line 130
    :cond_5
    const v1, 0x7f020294

    if-ne v0, v1, :cond_6

    .line 131
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/android/incallui/AnswerFragment;->onAnswer(ILandroid/content/Context;)V

    .line 132
    iput-boolean v4, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    .line 133
    :cond_6
    const v1, 0x7f020291

    if-ne v0, v1, :cond_7

    .line 134
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/android/incallui/AnswerFragment;->onAnswer(ILandroid/content/Context;)V

    .line 135
    iput-boolean v4, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    .line 136
    :cond_7
    const v1, 0x7f020297

    if-ne v0, v1, :cond_8

    .line 137
    iget-object v1, p0, Lcom/android/incallui/GlowPadWrapper;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {p0}, Lcom/android/incallui/GlowPadWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/AnswerFragment;->onDeflect(Landroid/content/Context;)V

    .line 138
    iput-boolean v4, p0, Lcom/android/incallui/GlowPadWrapper;->mTargetTriggered:Z

    goto :goto_0

    .line 141
    :cond_8
    const-string/jumbo v1, "Trigger detected on unhandled resource. Skipping."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startPing()V
    .locals 1

    .prologue
    .line 73
    const-string/jumbo v0, "startPing"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    .line 75
    invoke-direct {p0}, Lcom/android/incallui/GlowPadWrapper;->triggerPing()V

    .line 72
    return-void
.end method

.method public stopPing()V
    .locals 2

    .prologue
    .line 79
    const-string/jumbo v0, "stopPing"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingEnabled:Z

    .line 81
    iget-object v0, p0, Lcom/android/incallui/GlowPadWrapper;->mPingHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    return-void
.end method
