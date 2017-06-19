.class public final Lcom/android/contacts/common/list/DirectoryPartition;
.super Lcom/android/common/widget/CompositeCursorAdapter$Partition;
.source "DirectoryPartition.java"


# static fields
.field public static final RESULT_LIMIT_DEFAULT:I = -0x1

.field public static final STATUS_LOADED:I = 0x2

.field public static final STATUS_LOADING:I = 0x1

.field public static final STATUS_NOT_LOADED:I


# instance fields
.field private mContentUri:Ljava/lang/String;

.field private mDirectoryId:J

.field private mDirectoryType:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mDisplayNumber:Z

.field private mLabel:Ljava/lang/String;

.field private mPhotoSupported:Z

.field private mPriorityDirectory:Z

.field private mResultLimit:I

.field private mStatus:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;-><init>(ZZ)V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mResultLimit:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDisplayNumber:Z

    .line 45
    return-void
.end method


# virtual methods
.method public getContentUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mContentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryId()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDirectoryId:J

    return-wide v0
.end method

.method public getDirectoryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDirectoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getResultLimit()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mResultLimit:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mStatus:I

    return v0
.end method

.method public isDisplayNumber()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDisplayNumber:Z

    return v0
.end method

.method public isLoading()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 92
    iget v2, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mStatus:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mStatus:I

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isPhotoSupported()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mPhotoSupported:Z

    return v0
.end method

.method public isPriorityDirectory()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mPriorityDirectory:Z

    return v0
.end method

.method public setContentUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentUri"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mContentUri:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setDirectoryId(J)V
    .locals 1
    .param p1, "directoryId"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDirectoryId:J

    .line 56
    return-void
.end method

.method public setDirectoryType(Ljava/lang/String;)V
    .locals 0
    .param p1, "directoryType"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDirectoryType:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDisplayName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setDisplayNumber(Z)V
    .locals 0
    .param p1, "displayNumber"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDisplayNumber:Z

    .line 176
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mLabel:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setPhotoSupported(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mPhotoSupported:Z

    .line 113
    return-void
.end method

.method public setPriorityDirectory(Z)V
    .locals 0
    .param p1, "priorityDirectory"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mPriorityDirectory:Z

    .line 102
    return-void
.end method

.method public setResultLimit(I)V
    .locals 0
    .param p1, "resultLimit"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mResultLimit:I

    .line 126
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mStatus:I

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DirectoryPartition{mDirectoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 156
    iget-wide v2, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDirectoryId:J

    .line 155
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    const-string/jumbo v1, ", mContentUri=\'"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mContentUri:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    const-string/jumbo v1, ", mDirectoryType=\'"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDirectoryType:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    const-string/jumbo v1, ", mDisplayName=\'"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mDisplayName:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    const-string/jumbo v1, ", mStatus="

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    iget v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mStatus:I

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    const-string/jumbo v1, ", mPriorityDirectory="

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    iget-boolean v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mPriorityDirectory:Z

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    const-string/jumbo v1, ", mPhotoSupported="

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    iget-boolean v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mPhotoSupported:Z

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    const-string/jumbo v1, ", mResultLimit="

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    iget v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mResultLimit:I

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    const-string/jumbo v1, ", mLabel=\'"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/android/contacts/common/list/DirectoryPartition;->mLabel:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    const/16 v1, 0x7d

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
