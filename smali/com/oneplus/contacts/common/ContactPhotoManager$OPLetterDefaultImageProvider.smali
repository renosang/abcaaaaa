.class Lcom/oneplus/contacts/common/ContactPhotoManager$OPLetterDefaultImageProvider;
.super Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/contacts/common/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OPLetterDefaultImageProvider"
.end annotation


# static fields
.field private static mDefaultPhotoManager:Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/contacts/common/ContactPhotoManager$OPLetterDefaultImageProvider;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/oneplus/contacts/common/ContactPhotoManager$OPLetterDefaultImageProvider;-><init>()V

    return-void
.end method

.method public static getDefaultImageForContact(Landroid/content/Context;Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultImageRequest"    # Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 484
    sget-object v2, Lcom/oneplus/contacts/common/ContactPhotoManager$OPLetterDefaultImageProvider;->mDefaultPhotoManager:Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;

    if-nez v2, :cond_0

    .line 485
    new-instance v2, Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;

    invoke-direct {v2, p0}, Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/oneplus/contacts/common/ContactPhotoManager$OPLetterDefaultImageProvider;->mDefaultPhotoManager:Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;

    .line 487
    :cond_0
    iget-boolean v2, p1, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    if-eqz v2, :cond_1

    .line 488
    const/4 v1, 0x0

    .line 490
    .local v1, "shape":I
    :goto_0
    new-instance v0, Lcom/oneplus/defaultphoto/OPDefaultImageRequest;

    iget-object v2, p1, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->phonebookLabel:Ljava/lang/String;

    .line 491
    iget-object v3, p1, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    .line 490
    invoke-direct {v0, v2, v3, v1}, Lcom/oneplus/defaultphoto/OPDefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 492
    .local v0, "opDefaultImageRequest":Lcom/oneplus/defaultphoto/OPDefaultImageRequest;
    sget-object v2, Lcom/oneplus/contacts/common/ContactPhotoManager$OPLetterDefaultImageProvider;->mDefaultPhotoManager:Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;

    invoke-virtual {v2, v0}, Lcom/oneplus/defaultphoto/OPContactsDefaultPhotoManager;->getDefaultLetterPhoto(Lcom/oneplus/defaultphoto/OPDefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 488
    .end local v0    # "opDefaultImageRequest":Lcom/oneplus/defaultphoto/OPDefaultImageRequest;
    .end local v1    # "shape":I
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "shape":I
    goto :goto_0
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;IZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "extent"    # I
    .param p3, "darkTheme"    # Z
    .param p4, "defaultImageRequest"    # Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 478
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p4}, Lcom/oneplus/contacts/common/ContactPhotoManager$OPLetterDefaultImageProvider;->getDefaultImageForContact(Landroid/content/Context;Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 479
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    return-void
.end method
