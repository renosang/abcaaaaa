.class public Lcom/android/contacts/common/model/BuilderWrapper;
.super Ljava/lang/Object;
.source "BuilderWrapper.java"


# instance fields
.field private mBuilder:Landroid/content/ContentProviderOperation$Builder;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderOperation$Builder;I)V
    .locals 0
    .param p1, "builder"    # Landroid/content/ContentProviderOperation$Builder;
    .param p2, "type"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/contacts/common/model/BuilderWrapper;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 34
    iput p2, p0, Lcom/android/contacts/common/model/BuilderWrapper;->mType:I

    .line 32
    return-void
.end method


# virtual methods
.method public getBuilder()Landroid/content/ContentProviderOperation$Builder;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/contacts/common/model/BuilderWrapper;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/android/contacts/common/model/BuilderWrapper;->mType:I

    return v0
.end method

.method public setBuilder(Landroid/content/ContentProviderOperation$Builder;)V
    .locals 0
    .param p1, "mBuilder"    # Landroid/content/ContentProviderOperation$Builder;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/contacts/common/model/BuilderWrapper;->mBuilder:Landroid/content/ContentProviderOperation$Builder;

    .line 49
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "mType"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/contacts/common/model/BuilderWrapper;->mType:I

    .line 41
    return-void
.end method
