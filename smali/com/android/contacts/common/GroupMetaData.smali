.class public final Lcom/android/contacts/common/GroupMetaData;
.super Ljava/lang/Object;
.source "GroupMetaData.java"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mDataSet:Ljava/lang/String;

.field private mDefaultGroup:Z

.field private mFavorites:Z

.field private mGroupId:J

.field private mResPackage:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTitleRes:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZILjava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "dataSet"    # Ljava/lang/String;
    .param p4, "groupId"    # J
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "defaultGroup"    # Z
    .param p8, "favorites"    # Z
    .param p9, "titleRes"    # I
    .param p10, "resPackage"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/contacts/common/GroupMetaData;->mAccountName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/android/contacts/common/GroupMetaData;->mAccountType:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/android/contacts/common/GroupMetaData;->mDataSet:Ljava/lang/String;

    .line 40
    iput-wide p4, p0, Lcom/android/contacts/common/GroupMetaData;->mGroupId:J

    .line 41
    iput-object p6, p0, Lcom/android/contacts/common/GroupMetaData;->mTitle:Ljava/lang/String;

    .line 42
    iput-boolean p7, p0, Lcom/android/contacts/common/GroupMetaData;->mDefaultGroup:Z

    .line 43
    iput-boolean p8, p0, Lcom/android/contacts/common/GroupMetaData;->mFavorites:Z

    .line 44
    iput p9, p0, Lcom/android/contacts/common/GroupMetaData;->mTitleRes:I

    .line 45
    iput-object p10, p0, Lcom/android/contacts/common/GroupMetaData;->mResPackage:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/contacts/common/GroupMetaData;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/contacts/common/GroupMetaData;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/contacts/common/GroupMetaData;->mDataSet:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/contacts/common/GroupMetaData;->mGroupId:J

    return-wide v0
.end method

.method public getResPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/contacts/common/GroupMetaData;->mResPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/contacts/common/GroupMetaData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/contacts/common/GroupMetaData;->mTitleRes:I

    return v0
.end method

.method public isDefaultGroup()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/contacts/common/GroupMetaData;->mDefaultGroup:Z

    return v0
.end method

.method public isFavorites()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/contacts/common/GroupMetaData;->mFavorites:Z

    return v0
.end method
