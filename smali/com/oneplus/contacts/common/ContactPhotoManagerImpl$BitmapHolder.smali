.class Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/contacts/common/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapHolder"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field bitmapRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final bytes:[B

.field decodedSampleSize:I

.field volatile fresh:Z

.field final originalSmallerExtent:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "originalSmallerExtent"    # I

    .prologue
    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput-object p1, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    .line 696
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    .line 697
    iput p2, p0, Lcom/oneplus/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->originalSmallerExtent:I

    .line 694
    return-void
.end method
