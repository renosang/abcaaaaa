.class Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;
.super Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LetterTileDefaultImageProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;-><init>()V

    return-void
.end method

.method public static getDefaultImageForContact(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Landroid/accounts/Account;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "defaultImageRequest"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .param p3, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v2, 0x0

    .line 413
    new-instance v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    invoke-direct {v0, p1, p0, p3}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/Context;Landroid/accounts/Account;)V

    .line 415
    .local v0, "drawable":Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    if-eqz p2, :cond_0

    .line 420
    iget-object v1, p2, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    iget-object v1, p2, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->displayName:Ljava/lang/String;

    .line 421
    invoke-virtual {v0, v2, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setLetterAndColorFromContactDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    .line 427
    :goto_0
    iget v1, p2, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setContactType(I)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    .line 428
    iget v1, p2, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setScale(F)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    .line 429
    iget v1, p2, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setOffset(F)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    .line 430
    iget-boolean v1, p2, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setIsCircular(Z)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    .line 432
    :cond_0
    return-object v0

    .line 424
    :cond_1
    iget-object v1, p2, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->displayName:Ljava/lang/String;

    .line 425
    iget-object v2, p2, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    .line 424
    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setLetterAndColorFromContactDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    goto :goto_0
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 6
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "extent"    # I
    .param p3, "darkTheme"    # Z
    .param p4, "defaultImageRequest"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 400
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;Landroid/accounts/Account;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    .line 399
    return-void
.end method

.method public applyDefaultImage(Landroid/widget/ImageView;Landroid/accounts/Account;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "extent"    # I
    .param p4, "darkTheme"    # Z
    .param p5, "defaultImageRequest"    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 406
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 407
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 406
    invoke-static {v1, v2, p5, p2}, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;->getDefaultImageForContact(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Landroid/accounts/Account;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 408
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 405
    return-void
.end method
