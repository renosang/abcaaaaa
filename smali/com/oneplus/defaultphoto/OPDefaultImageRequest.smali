.class public Lcom/oneplus/defaultphoto/OPDefaultImageRequest;
.super Ljava/lang/Object;
.source "OPDefaultImageRequest.java"


# instance fields
.field public identifier:Ljava/lang/String;

.field public letter:Ljava/lang/String;

.field public shape:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "letter"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;
    .param p3, "shape"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/defaultphoto/OPDefaultImageRequest;->shape:I

    .line 48
    iput-object p1, p0, Lcom/oneplus/defaultphoto/OPDefaultImageRequest;->letter:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/oneplus/defaultphoto/OPDefaultImageRequest;->identifier:Ljava/lang/String;

    .line 50
    iput p3, p0, Lcom/oneplus/defaultphoto/OPDefaultImageRequest;->shape:I

    .line 47
    return-void
.end method
