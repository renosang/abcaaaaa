.class public Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/contacts/common/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultImageRequest"
.end annotation


# static fields
.field public static EMPTY_CIRCULAR_BUSINESS_IMAGE_REQUEST:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

.field public static EMPTY_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

.field public static EMPTY_DEFAULT_BUSINESS_IMAGE_REQUEST:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

.field public static EMPTY_DEFAULT_IMAGE_REQUEST:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;


# instance fields
.field public contactType:I

.field public displayName:Ljava/lang/String;

.field public identifier:Ljava/lang/String;

.field public isCircular:Z

.field public offset:F

.field public phonebookLabel:Ljava/lang/String;

.field public scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 345
    new-instance v0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v0}, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>()V

    sput-object v0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_DEFAULT_IMAGE_REQUEST:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .line 352
    new-instance v0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v4, v1}, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 351
    sput-object v0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_DEFAULT_BUSINESS_IMAGE_REQUEST:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .line 359
    new-instance v0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v0, v2, v2, v3}, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 358
    sput-object v0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .line 366
    new-instance v0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v0, v2, v2, v4, v3}, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 365
    sput-object v0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_CIRCULAR_BUSINESS_IMAGE_REQUEST:Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;

    .line 286
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    .line 320
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    .line 368
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "contactType"    # I
    .param p4, "scale"    # F
    .param p5, "offset"    # F
    .param p6, "isCircular"    # Z

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    .line 320
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    .line 396
    iput-object p1, p0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->displayName:Ljava/lang/String;

    .line 397
    iput-object p2, p0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    .line 398
    iput p3, p0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    .line 399
    iput p4, p0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    .line 400
    iput p5, p0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    .line 401
    iput-boolean p6, p0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    .line 395
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "contactType"    # I
    .param p4, "isCircular"    # Z

    .prologue
    .line 377
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V

    .line 376
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "phonebookLabel"    # Ljava/lang/String;
    .param p4, "contactType"    # I
    .param p5, "isCircular"    # Z

    .prologue
    .line 389
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 390
    iput-object p3, p0, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;->phonebookLabel:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "phonebookLabel"    # Ljava/lang/String;
    .param p4, "isCircular"    # Z

    .prologue
    .line 384
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 383
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "isCircular"    # Z

    .prologue
    .line 372
    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IFFZ)V

    .line 371
    return-void
.end method
