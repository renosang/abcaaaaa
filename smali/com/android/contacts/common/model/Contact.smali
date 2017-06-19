.class public Lcom/android/contacts/common/model/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/model/Contact$Status;
    }
.end annotation


# instance fields
.field private final mAltDisplayName:Ljava/lang/String;

.field private final mCustomRingtone:Ljava/lang/String;

.field private mDirectoryAccountName:Ljava/lang/String;

.field private mDirectoryAccountType:Ljava/lang/String;

.field private mDirectoryDisplayName:Ljava/lang/String;

.field private mDirectoryExportSupport:I

.field private final mDirectoryId:J

.field private mDirectoryType:Ljava/lang/String;

.field private final mDisplayName:Ljava/lang/String;

.field private final mDisplayNameSource:I

.field private final mException:Ljava/lang/Exception;

.field private mGroups:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/GroupMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:J

.field private mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsUserProfile:Z

.field private final mLookupKey:Ljava/lang/String;

.field private final mLookupUri:Landroid/net/Uri;

.field private final mNameRawContactId:J

.field private final mPhoneticName:Ljava/lang/String;

.field private mPhotoBinaryData:[B

.field private final mPhotoId:J

.field private final mPhotoUri:Ljava/lang/String;

.field private final mPresence:Ljava/lang/Integer;

.field private mRawContacts:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/RawContact;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestedUri:Landroid/net/Uri;

.field private mSendToVoicemail:Z

.field private final mStarred:Z

.field private final mStatus:Lcom/android/contacts/common/model/Contact$Status;

.field private mStatuses:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/common/util/DataStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailPhotoBinaryData:[B

.field private final mUri:Landroid/net/Uri;

.field public phonebookLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;Z)V
    .locals 2
    .param p1, "requestedUri"    # Landroid/net/Uri;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "lookupUri"    # Landroid/net/Uri;
    .param p4, "directoryId"    # J
    .param p6, "lookupKey"    # Ljava/lang/String;
    .param p7, "id"    # J
    .param p9, "nameRawContactId"    # J
    .param p11, "displayNameSource"    # I
    .param p12, "photoId"    # J
    .param p14, "photoUri"    # Ljava/lang/String;
    .param p15, "displayName"    # Ljava/lang/String;
    .param p16, "altDisplayName"    # Ljava/lang/String;
    .param p17, "phoneticName"    # Ljava/lang/String;
    .param p18, "starred"    # Z
    .param p19, "presence"    # Ljava/lang/Integer;
    .param p20, "sendToVoicemail"    # Z
    .param p21, "customRingtone"    # Ljava/lang/String;
    .param p22, "isUserProfile"    # Z

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->LOADED:Lcom/android/contacts/common/model/Contact$Status;

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mException:Ljava/lang/Exception;

    .line 168
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mRequestedUri:Landroid/net/Uri;

    .line 169
    iput-object p3, p0, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    .line 170
    iput-object p2, p0, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    .line 171
    iput-wide p4, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    .line 172
    iput-object p6, p0, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    .line 173
    iput-wide p7, p0, Lcom/android/contacts/common/model/Contact;->mId:J

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 176
    iput-wide p9, p0, Lcom/android/contacts/common/model/Contact;->mNameRawContactId:J

    .line 177
    iput p11, p0, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    .line 178
    iput-wide p12, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    .line 179
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    .line 180
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayName:Ljava/lang/String;

    .line 181
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mAltDisplayName:Ljava/lang/String;

    .line 182
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhoneticName:Ljava/lang/String;

    .line 183
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mStarred:Z

    .line 184
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPresence:Ljava/lang/Integer;

    .line 185
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 186
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    .line 187
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mCustomRingtone:Ljava/lang/String;

    .line 188
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsUserProfile:Z

    .line 165
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact$Status;Ljava/lang/Exception;)V
    .locals 6
    .param p1, "requestedUri"    # Landroid/net/Uri;
    .param p2, "status"    # Lcom/android/contacts/common/model/Contact$Status;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    sget-object v0, Lcom/android/contacts/common/model/Contact$Status;->ERROR:Lcom/android/contacts/common/model/Contact$Status;

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ERROR result must have exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iput-object p2, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    .line 126
    iput-object p3, p0, Lcom/android/contacts/common/model/Contact;->mException:Ljava/lang/Exception;

    .line 127
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mRequestedUri:Landroid/net/Uri;

    .line 128
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    .line 129
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    .line 130
    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    .line 131
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    .line 132
    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->mId:J

    .line 133
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 134
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 135
    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->mNameRawContactId:J

    .line 136
    iput v2, p0, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    .line 137
    iput-wide v4, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    .line 138
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    .line 139
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mDisplayName:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mAltDisplayName:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mPhoneticName:Ljava/lang/String;

    .line 142
    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mStarred:Z

    .line 143
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mPresence:Ljava/lang/Integer;

    .line 144
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 145
    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    .line 146
    iput-object v1, p0, Lcom/android/contacts/common/model/Contact;->mCustomRingtone:Ljava/lang/String;

    .line 147
    iput-boolean v2, p0, Lcom/android/contacts/common/model/Contact;->mIsUserProfile:Z

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact;)V
    .locals 2
    .param p1, "requestedUri"    # Landroid/net/Uri;
    .param p2, "from"    # Lcom/android/contacts/common/model/Contact;

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mRequestedUri:Landroid/net/Uri;

    .line 194
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    .line 195
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mException:Ljava/lang/Exception;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mException:Ljava/lang/Exception;

    .line 196
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    .line 197
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    .line 198
    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    .line 199
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    .line 200
    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->mId:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mId:J

    .line 201
    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->mNameRawContactId:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mNameRawContactId:J

    .line 202
    iget v0, p2, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    .line 203
    iget-wide v0, p2, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    iput-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    .line 204
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    .line 205
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayName:Ljava/lang/String;

    .line 206
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mAltDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mAltDisplayName:Ljava/lang/String;

    .line 207
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mPhoneticName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhoneticName:Ljava/lang/String;

    .line 208
    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->mStarred:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mStarred:Z

    .line 209
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mPresence:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPresence:Ljava/lang/Integer;

    .line 210
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 211
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 212
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 214
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    .line 215
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryType:Ljava/lang/String;

    .line 216
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    .line 217
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    .line 218
    iget v0, p2, Lcom/android/contacts/common/model/Contact;->mDirectoryExportSupport:I

    iput v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryExportSupport:I

    .line 220
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    .line 222
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    .line 223
    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    .line 224
    iget-object v0, p2, Lcom/android/contacts/common/model/Contact;->mCustomRingtone:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/model/Contact;->mCustomRingtone:Ljava/lang/String;

    .line 225
    iget-boolean v0, p2, Lcom/android/contacts/common/model/Contact;->mIsUserProfile:Z

    iput-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsUserProfile:Z

    .line 191
    return-void
.end method

.method public static forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/common/model/Contact;
    .locals 2
    .param p0, "requestedUri"    # Landroid/net/Uri;
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 151
    new-instance v0, Lcom/android/contacts/common/model/Contact;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->ERROR:Lcom/android/contacts/common/model/Contact$Status;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static forNotFound(Landroid/net/Uri;)Lcom/android/contacts/common/model/Contact;
    .locals 3
    .param p0, "requestedUri"    # Landroid/net/Uri;

    .prologue
    .line 155
    new-instance v0, Lcom/android/contacts/common/model/Contact;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->NOT_FOUND:Lcom/android/contacts/common/model/Contact$Status;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/common/model/Contact;-><init>(Landroid/net/Uri;Lcom/android/contacts/common/model/Contact$Status;Ljava/lang/Exception;)V

    return-object v0
.end method

.method private getGroupTitle(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupID"    # Ljava/lang/Long;

    .prologue
    .line 553
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 554
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/GroupMetaData;

    .line 555
    .local v0, "group":Lcom/android/contacts/common/GroupMetaData;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/contacts/common/GroupMetaData;->getGroupId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/common/GroupMetaData;->isDefaultGroup()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 553
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 555
    :cond_1
    invoke-virtual {v0}, Lcom/android/contacts/common/GroupMetaData;->isFavorites()Z

    move-result v3

    if-nez v3, :cond_0

    .line 556
    invoke-virtual {v0}, Lcom/android/contacts/common/GroupMetaData;->getTitleRes()I

    move-result v3

    if-eqz v3, :cond_3

    .line 557
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 558
    invoke-virtual {v0}, Lcom/android/contacts/common/GroupMetaData;->getResPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/contacts/common/GroupMetaData;->getTitleRes()I

    move-result v5

    const/4 v6, 0x0

    .line 557
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 559
    .local v2, "temp":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 560
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 562
    :cond_2
    invoke-virtual {v0}, Lcom/android/contacts/common/GroupMetaData;->getTitle()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 565
    .end local v2    # "temp":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v0}, Lcom/android/contacts/common/GroupMetaData;->getTitle()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 569
    .end local v0    # "group":Lcom/android/contacts/common/GroupMetaData;
    :cond_4
    const-string/jumbo v3, ""

    return-object v3
.end method


# virtual methods
.method public createRawContactDeltaList()Lcom/android/contacts/common/model/RawContactDeltaList;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/model/RawContactDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/common/model/RawContactDeltaList;

    move-result-object v0

    return-object v0
.end method

.method public getAltDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mAltDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    iget-object v3, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 453
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 454
    const-string/jumbo v4, "Cannot extract content values from an aggregated contact"

    .line 453
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 457
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContact;

    .line 458
    .local v1, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v2

    .line 462
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-wide v4, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    if-eqz v3, :cond_1

    .line 463
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 464
    .local v0, "photo":Landroid/content/ContentValues;
    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string/jumbo v3, "data15"

    iget-object v4, p0, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 466
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    .end local v0    # "photo":Landroid/content/ContentValues;
    :cond_1
    return-object v2
.end method

.method public getCustomRingtone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mCustomRingtone:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryAccountType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryExportSupport()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryExportSupport:I

    return v0
.end method

.method public getDirectoryId()J
    .locals 2

    .prologue
    .line 388
    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    return-wide v0
.end method

.method public getDirectoryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayNameSource()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    return v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public getFirstWritableRawContactId(Landroid/content/Context;)J
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, -0x1

    .line 410
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->isDirectoryEntry()Z

    move-result v3

    if-eqz v3, :cond_0

    return-wide v4

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "rawContact$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContact;

    .line 414
    .local v1, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v1, p1}, Lcom/android/contacts/common/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    .line 415
    .local v0, "accountType":Lcom/android/contacts/common/model/account/AccountType;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 416
    invoke-virtual {v1}, Lcom/android/contacts/common/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    return-wide v4

    .line 420
    .end local v0    # "accountType":Lcom/android/contacts/common/model/account/AccountType;
    .end local v1    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_2
    return-wide v4
.end method

.method public getGroupInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 526
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 527
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "rawContact$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/RawContact;

    .line 528
    .local v6, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v6}, Lcom/android/contacts/common/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dataItem$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/dataitem/DataItem;

    .line 529
    .local v0, "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    const-string/jumbo v9, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 530
    check-cast v0, Lcom/android/contacts/common/model/dataitem/GroupMembershipDataItem;

    .end local v0    # "dataItem":Lcom/android/contacts/common/model/dataitem/DataItem;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/GroupMembershipDataItem;->getGroupRowId()Ljava/lang/Long;

    move-result-object v2

    .line 531
    .local v2, "groupID":Ljava/lang/Long;
    invoke-direct {p0, p1, v2}, Lcom/android/contacts/common/model/Contact;->getGroupTitle(Landroid/content/Context;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, "groupTitle":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 533
    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 539
    .end local v1    # "dataItem$iterator":Ljava/util/Iterator;
    .end local v2    # "groupID":Ljava/lang/Long;
    .end local v3    # "groupTitle":Ljava/lang/String;
    .end local v6    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "groupTitle$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 541
    .restart local v3    # "groupTitle":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 542
    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_3
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 546
    .end local v3    # "groupTitle":Ljava/lang/String;
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public getGroupMetaData()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/GroupMetaData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getId()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 290
    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mId:J

    return-wide v0
.end method

.method public getInvitableAccountTypes()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getLookupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getNameRawContactId()J
    .locals 2

    .prologue
    .line 327
    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mNameRawContactId:J

    return-wide v0
.end method

.method public getPhoneticName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhoneticName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoBinaryData()[B
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    return-object v0
.end method

.method public getPhotoId()J
    .locals 2

    .prologue
    .line 343
    iget-wide v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoId:J

    return-wide v0
.end method

.method public getPhotoUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPresence()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mPresence:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRawContacts()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/RawContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getRequestedUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mRequestedUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSlotID()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 597
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rawContact$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContact;

    .line 598
    .local v0, "rawContact":Lcom/android/contacts/common/model/RawContact;
    const-string/jumbo v2, "com.android.sim"

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    const-string/jumbo v2, "SIM"

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 600
    const-string/jumbo v2, "SIM1"

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 599
    if-eqz v2, :cond_2

    .line 601
    :cond_1
    return v4

    .line 602
    :cond_2
    const-string/jumbo v2, "SIM2"

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    const/4 v2, 0x1

    return v2

    .line 607
    .end local v0    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_3
    return v4
.end method

.method public getStarred()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mStarred:Z

    return v0
.end method

.method public getStatuses()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/common/util/DataStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public getThumbnailPhotoBinaryData()[B
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mThumbnailPhotoBinaryData:[B

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hasContactType()Z
    .locals 3

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rawContact$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContact;

    .line 579
    .local v0, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->hasPhoneData()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->hasEmailData()Z

    move-result v2

    if-nez v2, :cond_1

    .line 580
    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->hasStructuredPostalData()Z

    move-result v2

    .line 579
    if-nez v2, :cond_1

    .line 580
    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->hasOrganizationData()Z

    move-result v2

    .line 579
    if-eqz v2, :cond_0

    .line 581
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 584
    .end local v0    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public hasEmailData()Z
    .locals 3

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rawContact$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContact;

    .line 655
    .local v0, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->hasEmailData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    const/4 v2, 0x1

    return v2

    .line 659
    .end local v0    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hasGroupData()Z
    .locals 3

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rawContact$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContact;

    .line 643
    .local v0, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->hasGroupData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 644
    const/4 v2, 0x1

    return v2

    .line 647
    .end local v0    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hasPhoneData()Z
    .locals 3

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rawContact$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContact;

    .line 589
    .local v0, "rawContact":Lcom/android/contacts/common/model/RawContact;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->hasPhoneData()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    const/4 v2, 0x1

    return v2

    .line 593
    .end local v0    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hasSimAccountType()Z
    .locals 4

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rawContact$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContact;

    .line 616
    .local v0, "rawContact":Lcom/android/contacts/common/model/RawContact;
    const-string/jumbo v2, "com.android.sim"

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 617
    const/4 v2, 0x1

    return v2

    .line 620
    .end local v0    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isDirectoryEntry()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 392
    iget-wide v2, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 393
    iget-wide v2, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryId:J

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 392
    :cond_0
    return v0
.end method

.method public isDisplayNameFromOrganization()Z
    .locals 2

    .prologue
    .line 339
    iget v0, p0, Lcom/android/contacts/common/model/Contact;->mDisplayNameSource:I

    const/16 v1, 0x1e

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->ERROR:Lcom/android/contacts/common/model/Contact$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoaded()Z
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->LOADED:Lcom/android/contacts/common/model/Contact$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotFound()Z
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    sget-object v1, Lcom/android/contacts/common/model/Contact$Status;->NOT_FOUND:Lcom/android/contacts/common/model/Contact$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendToVoicemail()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    return v0
.end method

.method public isSimReady()Z
    .locals 4

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/android/contacts/common/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rawContact$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContact;

    .line 628
    .local v0, "rawContact":Lcom/android/contacts/common/model/RawContact;
    const-string/jumbo v2, "com.android.sim"

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    const-string/jumbo v2, "SIM"

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 630
    sget-boolean v2, Lcom/android/contacts/common/model/account/SimAccountType;->mSimWritable:Z

    return v2

    .line 631
    :cond_1
    const-string/jumbo v2, "SIM1"

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 632
    sget-boolean v2, Lcom/android/contacts/common/model/account/SimAccountType;->mSim1Wriable:Z

    return v2

    .line 633
    :cond_2
    const-string/jumbo v2, "SIM2"

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContact;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 634
    sget-boolean v2, Lcom/android/contacts/common/model/account/SimAccountType;->mSim2Wriable:Z

    return v2

    .line 638
    .end local v0    # "rawContact":Lcom/android/contacts/common/model/RawContact;
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public isUserProfile()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/android/contacts/common/model/Contact;->mIsUserProfile:Z

    return v0
.end method

.method public isWritableContact(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/Contact;->getFirstWritableRawContactId(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "directoryType"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;
    .param p4, "accountName"    # Ljava/lang/String;
    .param p5, "exportSupport"    # I

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryDisplayName:Ljava/lang/String;

    .line 234
    iput-object p2, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryType:Ljava/lang/String;

    .line 235
    iput-object p3, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountType:Ljava/lang/String;

    .line 236
    iput-object p4, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryAccountName:Ljava/lang/String;

    .line 237
    iput p5, p0, Lcom/android/contacts/common/model/Contact;->mDirectoryExportSupport:I

    .line 232
    return-void
.end method

.method setGroupMetaData(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/GroupMetaData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p1, "groups":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/common/GroupMetaData;>;"
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mGroups:Lcom/google/common/collect/ImmutableList;

    .line 518
    return-void
.end method

.method setInvitableAccountTypes(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p1, "accountTypes":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/common/model/account/AccountType;>;"
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mInvitableAccountTypes:Lcom/google/common/collect/ImmutableList;

    .line 514
    return-void
.end method

.method setPhotoBinaryData([B)V
    .locals 0
    .param p1, "photoBinaryData"    # [B

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mPhotoBinaryData:[B

    .line 240
    return-void
.end method

.method setRawContacts(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/RawContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "rawContacts":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/common/model/RawContact;>;"
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mRawContacts:Lcom/google/common/collect/ImmutableList;

    .line 506
    return-void
.end method

.method public setSendToVoicemail(Z)V
    .locals 0
    .param p1, "sendToVoicemail"    # Z

    .prologue
    .line 489
    iput-boolean p1, p0, Lcom/android/contacts/common/model/Contact;->mSendToVoicemail:Z

    .line 488
    return-void
.end method

.method setStatuses(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/contacts/common/util/DataStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 511
    .local p1, "statuses":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/Long;Lcom/android/contacts/common/util/DataStatus;>;"
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mStatuses:Lcom/google/common/collect/ImmutableMap;

    .line 510
    return-void
.end method

.method setThumbnailPhotoBinaryData([B)V
    .locals 0
    .param p1, "photoBinaryData"    # [B

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/contacts/common/model/Contact;->mThumbnailPhotoBinaryData:[B

    .line 244
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->mRequestedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",lookupkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->mLookupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 503
    const-string/jumbo v1, ",uri="

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->mUri:Landroid/net/Uri;

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 503
    const-string/jumbo v1, ",status="

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/android/contacts/common/model/Contact;->mStatus:Lcom/android/contacts/common/model/Contact$Status;

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 503
    const-string/jumbo v1, "}"

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
