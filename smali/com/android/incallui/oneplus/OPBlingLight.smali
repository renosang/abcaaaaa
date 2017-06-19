.class public Lcom/android/incallui/oneplus/OPBlingLight;
.super Landroid/widget/LinearLayout;
.source "OPBlingLight.java"


# instance fields
.field private lightColor:Ljava/lang/String;

.field private mArrow:Landroid/widget/ImageView;

.field private mArrowSecond:Landroid/widget/ImageView;

.field private mArrowThree:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/oneplus/OPBlingLight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/oneplus/OPBlingLight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    iput-object p1, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mContext:Landroid/content/Context;

    .line 53
    invoke-direct {p0, p2}, Lcom/android/incallui/oneplus/OPBlingLight;->init(Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const v7, 0x3f0a3d71    # 0.54f

    const v6, 0x3e851eb8    # 0.26f

    const v5, 0x7f02022a

    const v4, 0x7f02021f

    .line 57
    const-string/jumbo v2, "OPBlingLight"

    const-string/jumbo v3, "init"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/incallui/R$styleable;->OPBlingsLights:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->lightColor:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->lightColor:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 61
    const-string/jumbo v2, "red"

    iput-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->lightColor:Ljava/lang/String;

    .line 63
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 65
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040094

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPBlingLight;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e01a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mArrow:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPBlingLight;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e01a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mArrowSecond:Landroid/widget/ImageView;

    .line 68
    invoke-virtual {p0}, Lcom/android/incallui/oneplus/OPBlingLight;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0e01a4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mArrowThree:Landroid/widget/ImageView;

    .line 69
    const-string/jumbo v2, "OPBlingLight"

    iget-object v3, p0, Lcom/android/incallui/oneplus/OPBlingLight;->lightColor:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v2, "red"

    iget-object v3, p0, Lcom/android/incallui/oneplus/OPBlingLight;->lightColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mArrowSecond:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mArrowThree:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 75
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mArrowSecond:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 76
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mArrowThree:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 56
    :cond_1
    :goto_0
    return-void

    .line 77
    :cond_2
    const-string/jumbo v2, "green"

    iget-object v3, p0, Lcom/android/incallui/oneplus/OPBlingLight;->lightColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mArrowSecond:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mArrowThree:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 82
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mArrowSecond:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 83
    iget-object v2, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mArrowThree:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method public getAnimation(Ljava/lang/String;Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 13
    .param p1, "color"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v9, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b02b2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 89
    .local v8, "transX":F
    iget-object v9, p0, Lcom/android/incallui/oneplus/OPBlingLight;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b02b1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 90
    .local v4, "imageViewWidth":F
    const-string/jumbo v9, "OPBlingLight"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "transX : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", imageViewWidth : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", color : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 92
    .local v0, "animator":Landroid/animation/AnimatorSet;
    const-string/jumbo v9, "red"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 93
    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v4

    const/4 v12, 0x0

    aput v11, v10, v12

    neg-float v11, v4

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {p2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 94
    .local v6, "redTransX":Landroid/animation/Animator;
    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    neg-float v11, v4

    const/4 v12, 0x0

    aput v11, v10, v12

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v4

    sub-float v11, v8, v11

    neg-float v11, v11

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {p2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 95
    .local v7, "redTransX2":Landroid/animation/Animator;
    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {p2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 96
    .local v5, "redAlpha":Landroid/animation/Animator;
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 97
    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 105
    .end local v5    # "redAlpha":Landroid/animation/Animator;
    .end local v6    # "redTransX":Landroid/animation/Animator;
    .end local v7    # "redTransX2":Landroid/animation/Animator;
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :cond_1
    const-string/jumbo v9, "green"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 99
    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/high16 v11, -0x40000000    # -2.0f

    mul-float/2addr v11, v4

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x1

    aput v4, v10, v11

    invoke-static {p2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 100
    .local v2, "greenTransX":Landroid/animation/Animator;
    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v4, v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v4

    sub-float v11, v8, v11

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {p2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 101
    .local v3, "greenTransX2":Landroid/animation/Animator;
    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    invoke-static {p2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 102
    .local v1, "greenAlpha":Landroid/animation/Animator;
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 103
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_0

    .line 95
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 101
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
