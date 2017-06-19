.class Landroid/support/design/widget/VisibilityAwareImageButton;
.super Landroid/widget/ImageButton;
.source "VisibilityAwareImageButton.java"


# instance fields
.field private mUserSetVisibility:I


# virtual methods
.method final getUserSetVisibility()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Landroid/support/design/widget/VisibilityAwareImageButton;->mUserSetVisibility:I

    return v0
.end method

.method final internalSetVisibility(IZ)V
    .locals 0
    .param p1, "visibility"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 47
    if-eqz p2, :cond_0

    .line 48
    iput p1, p0, Landroid/support/design/widget/VisibilityAwareImageButton;->mUserSetVisibility:I

    .line 45
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/VisibilityAwareImageButton;->internalSetVisibility(IZ)V

    .line 41
    return-void
.end method
