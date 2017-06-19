.class public Lcom/oneplus/contacts/common/list/ContactAccount;
.super Ljava/lang/Object;
.source "ContactAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/contacts/common/list/ContactAccount$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/oneplus/contacts/common/list/ContactAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accountName:Ljava/lang/String;

.field private accountType:Ljava/lang/String;

.field private dataSet:Ljava/lang/String;

.field private id:J

.field private unGroupedVisible:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/oneplus/contacts/common/list/ContactAccount$1;

    invoke-direct {v0}, Lcom/oneplus/contacts/common/list/ContactAccount$1;-><init>()V

    sput-object v0, Lcom/oneplus/contacts/common/list/ContactAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "dataSet"    # Ljava/lang/String;
    .param p6, "unGroupedVisible"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->id:J

    .line 39
    iput-object p3, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountName:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountType:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->dataSet:Ljava/lang/String;

    .line 42
    iput p6, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->unGroupedVisible:I

    .line 37
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->id:J

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountType:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->dataSet:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->unGroupedVisible:I

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    if-ne p1, p0, :cond_0

    return v1

    .line 158
    :cond_0
    instance-of v3, p1, Lcom/oneplus/contacts/common/list/ContactAccount;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    .line 159
    check-cast v0, Lcom/oneplus/contacts/common/list/ContactAccount;

    .line 160
    .local v0, "other":Lcom/oneplus/contacts/common/list/ContactAccount;
    iget-wide v4, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->id:J

    iget-wide v6, v0, Lcom/oneplus/contacts/common/list/ContactAccount;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountName:Ljava/lang/String;

    iget-object v4, v0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 161
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountType:Ljava/lang/String;

    iget-object v4, v0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 160
    if-eqz v3, :cond_3

    .line 161
    iget-object v3, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->dataSet:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->dataSet:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 160
    if-eqz v3, :cond_3

    .line 162
    iget v3, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->unGroupedVisible:I

    iget v4, v0, Lcom/oneplus/contacts/common/list/ContactAccount;->unGroupedVisible:I

    if-ne v3, v4, :cond_2

    .line 160
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 162
    goto :goto_0

    :cond_3
    move v1, v2

    .line 160
    goto :goto_0
.end method

.method public isLocalPhoneAccount()Z
    .locals 2

    .prologue
    .line 103
    const-string/jumbo v0, "com.android.localphone"

    iget-object v1, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string/jumbo v0, "PHONE"

    iget-object v1, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSim1Account()Z
    .locals 2

    .prologue
    .line 113
    const-string/jumbo v0, "com.android.sim"

    iget-object v1, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string/jumbo v0, "SIM1"

    iget-object v1, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSim2Account()Z
    .locals 2

    .prologue
    .line 118
    const-string/jumbo v0, "com.android.sim"

    iget-object v1, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string/jumbo v0, "SIM2"

    iget-object v1, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimAccount()Z
    .locals 2

    .prologue
    .line 108
    const-string/jumbo v0, "com.android.sim"

    iget-object v1, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string/jumbo v0, "SIM"

    iget-object v1, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "accountId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " accountName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    const-string/jumbo v1, " accountType:"

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountType:Ljava/lang/String;

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    const-string/jumbo v1, " dataSet:"

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->dataSet:Ljava/lang/String;

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    const-string/jumbo v1, " unGroupedVisible:"

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    iget v1, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->unGroupedVisible:I

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget v0, p0, Lcom/oneplus/contacts/common/list/ContactAccount;->unGroupedVisible:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    return-void
.end method
