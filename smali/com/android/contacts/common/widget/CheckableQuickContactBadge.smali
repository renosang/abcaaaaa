.class public Lcom/android/contacts/common/widget/CheckableQuickContactBadge;
.super Landroid/widget/QuickContactBadge;
.source "CheckableQuickContactBadge.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mCheckMarkBackgroundColor:I

.field private mChecked:Z

.field private mDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mChecked:Z

    .line 19
    invoke-direct {p0, p1}, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->init(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mChecked:Z

    .line 24
    invoke-direct {p0, p1}, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->init(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mChecked:Z

    .line 29
    invoke-direct {p0, p1}, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mChecked:Z

    .line 35
    invoke-direct {p0, p1}, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private applyCheckState(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable;

    iget-boolean v0, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mChecked:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->flipTo(Z)V

    .line 91
    if-nez p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable;

    invoke-virtual {v0}, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->reset()V

    .line 89
    :cond_0
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a031f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->setCheckMarkBackgroundColor(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mChecked:Z

    return v0
.end method

.method public setCheckMarkBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mCheckMarkBackgroundColor:I

    .line 44
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->setCheckMarkBackgroundColor(I)V

    .line 42
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->setChecked(ZZ)V

    .line 59
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 1
    .param p1, "checked"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mChecked:Z

    if-ne v0, p1, :cond_0

    .line 65
    return-void

    .line 68
    :cond_0
    iput-boolean p1, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mChecked:Z

    .line 69
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable;

    if-eqz v0, :cond_1

    .line 70
    invoke-direct {p0, p2}, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->applyCheckState(Z)V

    .line 63
    :cond_1
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable;

    if-nez v0, :cond_1

    .line 78
    new-instance v0, Lcom/android/contacts/common/widget/CheckableFlipDrawable;

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 79
    iget v2, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mCheckMarkBackgroundColor:I

    const/16 v3, 0x96

    .line 78
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/contacts/common/widget/CheckableFlipDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;II)V

    iput-object v0, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable;

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->applyCheckState(Z)V

    .line 84
    :goto_0
    iget-object p1, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable;

    .line 86
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mDrawable:Lcom/android/contacts/common/widget/CheckableFlipDrawable;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/widget/CheckableFlipDrawable;->setFront(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->mChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/widget/CheckableQuickContactBadge;->setChecked(Z)V

    .line 49
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
