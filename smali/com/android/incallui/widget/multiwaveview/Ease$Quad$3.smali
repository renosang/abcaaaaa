.class final Lcom/android/incallui/widget/multiwaveview/Ease$Quad$3;
.super Ljava/lang/Object;
.source "Ease.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/widget/multiwaveview/Ease$Quad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "input"    # F

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 67
    div-float/2addr p1, v3

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 68
    mul-float v0, v3, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    .line 67
    :goto_0
    return v0

    .line 69
    :cond_0
    sub-float/2addr p1, v1

    const/high16 v0, 0x40000000    # 2.0f

    sub-float v0, p1, v0

    mul-float/2addr v0, p1

    sub-float/2addr v0, v1

    const/high16 v1, -0x41000000    # -0.5f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    goto :goto_0
.end method
