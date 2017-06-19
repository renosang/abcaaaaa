.class public Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactCacheEntry"
.end annotation


# instance fields
.field public contactLookupResult:I

.field public contactRingtoneUri:Landroid/net/Uri;

.field public contactUri:Landroid/net/Uri;

.field public displayPhotoUri:Landroid/net/Uri;

.field public isAutoRecording:Z

.field public isContactsExist:Z

.field public isEmergencyNumber:Z

.field public isLoadingContactInteractions:Z

.field public isLoadingPhoto:Z

.field public isSipCall:Z

.field public isVoiceMail:Z

.field public label:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public locationAddress:Landroid/location/Address;

.field public lookupKey:Ljava/lang/String;

.field public lookupUri:Landroid/net/Uri;

.field public mYuloreInfo:Lcom/android/incallui/oneplus/OPYuloreLoadInfoUtils$YuloreInfo;

.field public nameAlternative:Ljava/lang/String;

.field public namePrimary:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public openingHours:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ">;>;"
        }
    .end annotation
.end field

.field public phonebookLabel:Ljava/lang/String;

.field public photo:Landroid/graphics/drawable/Drawable;

.field public starred:I

.field public userType:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactLookupResult:I

    .line 714
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    .line 722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    .line 693
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 729
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 730
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/dialer/util/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 731
    const-string/jumbo v1, "nameAlternative"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->nameAlternative:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/dialer/util/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 732
    const-string/jumbo v1, "number"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/dialer/util/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 733
    const-string/jumbo v1, "location"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/dialer/util/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 734
    const-string/jumbo v1, "label"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 735
    const-string/jumbo v1, "photo"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 736
    const-string/jumbo v1, "isSipCall"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 737
    const-string/jumbo v1, "contactUri"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactUri:Landroid/net/Uri;

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 738
    const-string/jumbo v1, "displayPhotoUri"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->displayPhotoUri:Landroid/net/Uri;

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 739
    const-string/jumbo v1, "locationAddress"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->locationAddress:Landroid/location/Address;

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 740
    const-string/jumbo v1, "openingHours"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->openingHours:Ljava/util/List;

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 741
    const-string/jumbo v1, "contactLookupResult"

    iget v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactLookupResult:I

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 742
    const-string/jumbo v1, "userType"

    iget-wide v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->userType:J

    .line 729
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 743
    const-string/jumbo v1, "contactRingtoneUri"

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 745
    const-string/jumbo v1, "isEmergencyNumber"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergencyNumber:Z

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 746
    const-string/jumbo v1, "starred"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->starred:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 747
    const-string/jumbo v1, "isAutoRecording"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isAutoRecording:Z

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 748
    const-string/jumbo v1, "isContactsExist"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isContactsExist:Z

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 749
    const-string/jumbo v1, "isVoiceMail"

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    .line 729
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
