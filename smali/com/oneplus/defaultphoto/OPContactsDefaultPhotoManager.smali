.class public Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;
.super Ljava/lang/Object;
.source "OPContactsDefaultPhotoManager.java"


# instance fields
.field private mLetterDrawableCreator:Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;

    invoke-direct {v0, p1}, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;->mLetterDrawableCreator:Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;

    .line 35
    return-void
.end method


# virtual methods
.method public getDefaultLetterPhoto(Lcom/oneplus/defaultphoto/OPDefaultImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "defaultImageRequest"    # Lcom/oneplus/defaultphoto/OPDefaultImageRequest;

    .prologue
    const/4 v0, 0x0

    .line 47
    if-nez p1, :cond_0

    .line 48
    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;->mLetterDrawableCreator:Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;

    invoke-virtual {v0, p1}, Lcom/oneplus/defaultphoto/OPLetterDrawableCreator;->create(Lcom/oneplus/defaultphoto/OPDefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
