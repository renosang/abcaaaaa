.class public Lcom/android/incallui/AccessibleAnswerFragment;
.super Lcom/android/incallui/AnswerFragment;
.source "AccessibleAnswerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AccessibleAnswerFragment$TouchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnswer:Landroid/view/View;

.field private mDecline:Landroid/view/View;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mText:Landroid/view/View;

.field private mTouchListener:Lcom/android/incallui/AccessibleAnswerFragment$TouchListener;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/AccessibleAnswerFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/incallui/AccessibleAnswerFragment;)Landroid/view/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AccessibleAnswerFragment;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/incallui/AccessibleAnswerFragment;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/AccessibleAnswerFragment;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/incallui/AccessibleAnswerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/AccessibleAnswerFragment;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;-><init>()V

    return-void
.end method

.method private onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/android/incallui/AccessibleAnswerFragment;->hasPendingDialogs()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    return v6

    .line 116
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 117
    .local v1, "diffY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 118
    .local v0, "diffX":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 119
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    .line 120
    cmpl-float v2, v0, v4

    if-lez v2, :cond_2

    .line 121
    invoke-direct {p0}, Lcom/android/incallui/AccessibleAnswerFragment;->onSwipeRight()V

    .line 126
    :cond_1
    :goto_0
    return v7

    .line 123
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/AccessibleAnswerFragment;->onSwipeLeft()V

    goto :goto_0

    .line 127
    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_5

    .line 128
    cmpl-float v2, v1, v4

    if-lez v2, :cond_4

    .line 129
    invoke-direct {p0}, Lcom/android/incallui/AccessibleAnswerFragment;->onSwipeDown()V

    .line 133
    :goto_1
    return v7

    .line 131
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/AccessibleAnswerFragment;->onSwipeUp()V

    goto :goto_1

    .line 136
    :cond_5
    return v6
.end method

.method private onSwipeDown()V
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/android/incallui/AccessibleAnswerFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSwipeDown"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private onSwipeLeft()V
    .locals 2

    .prologue
    .line 149
    sget-object v0, Lcom/android/incallui/AccessibleAnswerFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSwipeLeft"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/incallui/AccessibleAnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/AccessibleAnswerFragment;->onDecline(Landroid/content/Context;)V

    .line 148
    return-void
.end method

.method private onSwipeRight()V
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lcom/android/incallui/AccessibleAnswerFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSwipeRight"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/incallui/AccessibleAnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/AccessibleAnswerFragment;->onAnswer(ILandroid/content/Context;)V

    .line 153
    return-void
.end method

.method private onSwipeUp()V
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/android/incallui/AccessibleAnswerFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSwipeUp"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/incallui/AccessibleAnswerFragment;->onText()V

    .line 139
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    const v1, 0x7f04001a

    .line 49
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 51
    .local v0, "group":Landroid/view/ViewGroup;
    new-instance v1, Lcom/android/incallui/AccessibleAnswerFragment$TouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/AccessibleAnswerFragment$TouchListener;-><init>(Lcom/android/incallui/AccessibleAnswerFragment;Lcom/android/incallui/AccessibleAnswerFragment$TouchListener;)V

    iput-object v1, p0, Lcom/android/incallui/AccessibleAnswerFragment;->mTouchListener:Lcom/android/incallui/AccessibleAnswerFragment$TouchListener;

    .line 52
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/incallui/AccessibleAnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/AccessibleAnswerFragment$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/AccessibleAnswerFragment$1;-><init>(Lcom/android/incallui/AccessibleAnswerFragment;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/incallui/AccessibleAnswerFragment;->mGestureDetector:Landroid/view/GestureDetector;

    .line 60
    const v1, 0x7f0e0087

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/AccessibleAnswerFragment;->mAnswer:Landroid/view/View;

    .line 61
    iget-object v1, p0, Lcom/android/incallui/AccessibleAnswerFragment;->mAnswer:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/AccessibleAnswerFragment$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/AccessibleAnswerFragment$2;-><init>(Lcom/android/incallui/AccessibleAnswerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v1, 0x7f0e0088

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/AccessibleAnswerFragment;->mDecline:Landroid/view/View;

    .line 69
    iget-object v1, p0, Lcom/android/incallui/AccessibleAnswerFragment;->mDecline:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/AccessibleAnswerFragment$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/AccessibleAnswerFragment$3;-><init>(Lcom/android/incallui/AccessibleAnswerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v1, 0x7f0e0089

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/AccessibleAnswerFragment;->mText:Landroid/view/View;

    .line 78
    iget-object v1, p0, Lcom/android/incallui/AccessibleAnswerFragment;->mText:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/AccessibleAnswerFragment$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/AccessibleAnswerFragment$4;-><init>(Lcom/android/incallui/AccessibleAnswerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/incallui/AnswerFragment;->onPause()V

    .line 99
    invoke-virtual {p0}, Lcom/android/incallui/AccessibleAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 100
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->setDispatchTouchEventListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/incallui/AnswerFragment;->onResume()V

    .line 92
    invoke-virtual {p0}, Lcom/android/incallui/AccessibleAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    .line 93
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    iget-object v1, p0, Lcom/android/incallui/AccessibleAnswerFragment;->mTouchListener:Lcom/android/incallui/AccessibleAnswerFragment$TouchListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->setDispatchTouchEventListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    return-void
.end method
