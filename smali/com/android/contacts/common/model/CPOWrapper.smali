.class public Lcom/android/contacts/common/model/CPOWrapper;
.super Ljava/lang/Object;
.source "CPOWrapper.java"


# instance fields
.field private mOperation:Landroid/content/ContentProviderOperation;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/ContentProviderOperation;I)V
    .locals 0
    .param p1, "builder"    # Landroid/content/ContentProviderOperation;
    .param p2, "type"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/contacts/common/model/CPOWrapper;->mOperation:Landroid/content/ContentProviderOperation;

    .line 31
    iput p2, p0, Lcom/android/contacts/common/model/CPOWrapper;->mType:I

    .line 29
    return-void
.end method


# virtual methods
.method public getOperation()Landroid/content/ContentProviderOperation;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/contacts/common/model/CPOWrapper;->mOperation:Landroid/content/ContentProviderOperation;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/android/contacts/common/model/CPOWrapper;->mType:I

    return v0
.end method

.method public setOperation(Landroid/content/ContentProviderOperation;)V
    .locals 0
    .param p1, "operation"    # Landroid/content/ContentProviderOperation;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/contacts/common/model/CPOWrapper;->mOperation:Landroid/content/ContentProviderOperation;

    .line 46
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/contacts/common/model/CPOWrapper;->mType:I

    .line 38
    return-void
.end method
