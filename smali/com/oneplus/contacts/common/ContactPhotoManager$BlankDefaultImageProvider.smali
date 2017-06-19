.class Lcom/oneplus/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;
.super Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/contacts/common/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlankDefaultImageProvider"
.end annotation


# static fields
.field private static sDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/oneplus/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;IZLcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "extent"    # I
    .param p3, "darkTheme"    # Z
    .param p4, "defaultImageRequest"    # Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .prologue
    .line 460
    sget-object v1, Lcom/oneplus/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;->sDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 461
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 462
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 463
    const v3, 0x7f0a02fd

    .line 462
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v1, Lcom/oneplus/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;->sDrawable:Landroid/graphics/drawable/Drawable;

    .line 465
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    sget-object v1, Lcom/oneplus/contacts/common/ContactPhotoManager$BlankDefaultImageProvider;->sDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 459
    return-void
.end method
